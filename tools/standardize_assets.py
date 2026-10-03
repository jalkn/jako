#!/usr/bin/env python3
"""Report project asset structure without changing project files.

This utility is intentionally report-only. It reads files below ``src/`` and
writes JSON to ``tools/reports/assets-report.json`` (or ``--output``).
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import struct
import subprocess
import sys
import xml.etree.ElementTree as ET
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote, urlsplit


IMAGE_EXTENSIONS = {".png", ".jpg", ".jpeg", ".webp", ".svg", ".gif"}
VIDEO_EXTENSIONS = {".mp4", ".mov", ".webm", ".m4v", ".avi", ".mkv"}
ASSET_EXTENSIONS = IMAGE_EXTENSIONS | VIDEO_EXTENSIONS
CATEGORY_NAMES = {
    "art.projects": "artProjects",
    "data science": "dataScience",
    "job. experience": "jobExperience",
}
REFERENCE_SOURCE_EXTENSIONS = {".html", ".htm", ".css", ".js", ".mjs"}
ATTRIBUTE_REFERENCE = re.compile(
    r"\b(?:src|href|poster)\s*=\s*([\"'])(.*?)\1", re.IGNORECASE | re.DOTALL
)
CSS_URL_REFERENCE = re.compile(r"url\(\s*([\"']?)(.*?)\1\s*\)", re.IGNORECASE)
STRING_REFERENCE = re.compile(r"([\"'])([^\"']+\.(?:png|jpe?g|webp|svg|gif|mp4|mov|webm|m4v|avi|mkv)(?:[?#][^\"']*)?)\1", re.IGNORECASE)


def relative(path: Path, root: Path) -> str:
    return path.relative_to(root).as_posix()


def detected_image_format(path: Path) -> str | None:
    """Identify common image formats from file contents, independently of name."""
    try:
        with path.open("rb") as stream:
            header = stream.read(512)
    except OSError:
        return None
    if header.startswith(b"\x89PNG\r\n\x1a\n"):
        return "png"
    if header.startswith(b"\xff\xd8\xff"):
        return "jpeg"
    if header.startswith((b"GIF87a", b"GIF89a")):
        return "gif"
    if header[:4] == b"RIFF" and header[8:12] == b"WEBP":
        return "webp"
    if b"<svg" in header.lower():
        return "svg"
    return None


def image_dimensions(path: Path) -> dict[str, int | float | None] | None:
    """Read common raster dimensions using headers; do not decode image data."""
    try:
        with path.open("rb") as stream:
            header = stream.read(32)
            if header[:8] == b"\x89PNG\r\n\x1a\n":
                return dict(zip(("width", "height"), struct.unpack(">II", header[16:24])))
            if header[:6] in (b"GIF87a", b"GIF89a"):
                return dict(zip(("width", "height"), struct.unpack("<HH", header[6:10])))
            if header[:4] == b"RIFF" and header[8:12] == b"WEBP":
                chunk_type = header[12:16]
                if chunk_type == b"VP8X" and len(header) >= 30:
                    width = 1 + int.from_bytes(header[24:27], "little")
                    height = 1 + int.from_bytes(header[27:30], "little")
                    return {"width": width, "height": height}
                if chunk_type == b"VP8L" and len(header) >= 25 and header[20] == 0x2F:
                    bits = int.from_bytes(header[21:25], "little")
                    return {"width": (bits & 0x3FFF) + 1, "height": ((bits >> 14) & 0x3FFF) + 1}
            if header[:3] == b"\xff\xd8\xff":
                stream.seek(2)
                while True:
                    marker_prefix = stream.read(1)
                    if not marker_prefix:
                        return None
                    if marker_prefix != b"\xff":
                        continue
                    marker = stream.read(1)
                    while marker == b"\xff":
                        marker = stream.read(1)
                    if marker in (b"\xd8", b"\xd9") or marker == b"":
                        continue
                    length_bytes = stream.read(2)
                    if len(length_bytes) != 2:
                        return None
                    length = struct.unpack(">H", length_bytes)[0]
                    if marker[0] in {0xC0, 0xC1, 0xC2, 0xC3, 0xC5, 0xC6, 0xC7, 0xC9, 0xCA, 0xCB, 0xCD, 0xCE, 0xCF}:
                        data = stream.read(5)
                        if len(data) == 5:
                            height, width = struct.unpack(">HH", data[1:5])
                            return {"width": width, "height": height}
                        return None
                    stream.seek(length - 2, 1)
    except (OSError, struct.error):
        return None
    return None


def svg_dimensions(path: Path) -> dict[str, int | float | None] | None:
    try:
        root = ET.parse(path).getroot()
    except (OSError, ET.ParseError):
        return None

    def numeric(value: str | None) -> int | float | None:
        if not value:
            return None
        match = re.match(r"^\s*(-?\d+(?:\.\d+)?)", value)
        if not match:
            return None
        number = float(match.group(1))
        return int(number) if number.is_integer() else number

    width, height = numeric(root.attrib.get("width")), numeric(root.attrib.get("height"))
    if width is None or height is None:
        view_box = re.split(r"[\s,]+", root.attrib.get("viewBox", "").strip())
        if len(view_box) == 4:
            width = width if width is not None else numeric(view_box[2])
            height = height if height is not None else numeric(view_box[3])
    return {"width": width, "height": height}


def video_dimensions(path: Path, ffprobe: str | None) -> dict[str, int | None] | None:
    if not ffprobe:
        return None
    try:
        result = subprocess.run(
            [ffprobe, "-v", "error", "-select_streams", "v:0", "-show_entries",
             "stream=width,height", "-of", "json", str(path)],
            check=False, capture_output=True, text=True, timeout=10,
        )
        if result.returncode != 0:
            return None
        streams = json.loads(result.stdout).get("streams", [])
        if not streams:
            return None
        return {"width": streams[0].get("width"), "height": streams[0].get("height")}
    except (OSError, subprocess.TimeoutExpired, json.JSONDecodeError):
        return None


def media_references(root: Path, src: Path) -> tuple[dict[str, list[dict[str, int | str]]], list[dict[str, str]]]:
    references: dict[str, list[dict[str, int | str]]] = defaultdict(list)
    missing: dict[str, list[dict[str, int | str]]] = defaultdict(list)
    root_resolved, src_resolved = root.resolve(), src.resolve()

    for source in sorted(root.rglob("*")):
        if not source.is_file() or source.suffix.lower() not in REFERENCE_SOURCE_EXTENSIONS:
            continue
        try:
            content = source.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        candidates: list[tuple[str, int]] = []
        for pattern in (ATTRIBUTE_REFERENCE, CSS_URL_REFERENCE, STRING_REFERENCE):
            for match in pattern.finditer(content):
                candidates.append((match.group(2), content.count("\n", 0, match.start()) + 1))

        for raw_path, line in sorted(set(candidates)):
            value = raw_path.strip()
            if not value or value.startswith(("data:", "http:", "https:", "//", "#")):
                continue
            parsed = urlsplit(value)
            path_part = unquote(parsed.path)
            if Path(path_part).suffix.lower() not in ASSET_EXTENSIONS:
                continue
            candidate = Path(path_part)
            if candidate.is_absolute():
                resolved = (root_resolved / candidate.as_posix().lstrip("/"))
            else:
                resolved = (source.parent / candidate).resolve()
            try:
                resolved.relative_to(root_resolved)
            except ValueError:
                continue
            item = {"source": relative(source, root), "line": line, "reference": value}
            if resolved.is_file():
                references[relative(resolved, root)].append(item)
            elif resolved.is_relative_to(src_resolved):
                missing[value].append(item)

    return dict(references), [
        {"reference": reference, "occurrences": occurrences}
        for reference, occurrences in sorted(missing.items())
    ]


def build_report(root: Path) -> dict[str, object]:
    src = root / "src"
    if not src.is_dir():
        raise FileNotFoundError(f"src directory not found: {src}")

    category_dirs: list[dict[str, str]] = []
    project_dirs: list[dict[str, str]] = []
    project_roots: list[Path] = []
    support_dirs: list[dict[str, str]] = []

    for directory in sorted(path for path in src.iterdir() if path.is_dir()):
        category_name = CATEGORY_NAMES.get(directory.name.lower())
        if category_name:
            category_dirs.append({"path": relative(directory, root), "category": category_name})
            for project in sorted(path for path in directory.iterdir() if path.is_dir()):
                project_dirs.append({
                    "path": relative(project, root),
                    "category": category_name,
                    "files": [relative(path, root) for path in sorted(project.rglob("*")) if path.is_file()],
                })
                project_roots.append(project.resolve())
        else:
            support_dirs.append({
                "path": relative(directory, root),
                "kind": directory.name,
                "files": [relative(path, root) for path in sorted(directory.rglob("*")) if path.is_file()],
            })

    ffprobe = shutil.which("ffprobe")
    assets: list[dict[str, object]] = []
    by_filename: dict[str, list[str]] = defaultdict(list)
    outside_project_assets: list[str] = []
    for path in sorted(src.rglob("*")):
        if not path.is_file() or path.suffix.lower() not in ASSET_EXTENSIONS:
            continue
        path_rel = relative(path, root)
        by_filename[path.name.casefold()].append(path_rel)
        suffix = path.suffix.lower()
        kind = "image" if suffix in IMAGE_EXTENSIONS else "video"
        detected_format = detected_image_format(path) if kind == "image" else None
        if detected_format == "svg":
            dimensions = svg_dimensions(path)
        elif kind == "image":
            dimensions = image_dimensions(path)
        else:
            dimensions = video_dimensions(path, ffprobe)
        extension = suffix.lstrip(".")
        format_mismatch = bool(
            detected_format
            and not (detected_format == "jpeg" and extension in {"jpg", "jpeg"})
            and detected_format != extension
        )
        owners = [relative(Path(project_root), root) for project_root in project_roots if path.resolve().is_relative_to(project_root)]
        project = owners[0] if owners else None
        if project is None:
            outside_project_assets.append(path_rel)
        assets.append({
            "path": path_rel,
            "filename": path.name,
            "kind": kind,
            "extension": extension,
            "detectedFormat": detected_format,
            "extensionMismatch": format_mismatch,
            "sizeBytes": path.stat().st_size,
            "dimensions": dimensions,
            "projectDirectory": project,
        })

    references, missing_references = media_references(root, src)
    for asset in assets:
        asset["references"] = references.get(str(asset["path"]), [])

    duplicate_filenames = [
        {"filename": paths[0].split("/")[-1], "paths": sorted(paths)}
        for paths in by_filename.values() if len(paths) > 1
    ]
    unreferenced = [str(asset["path"]) for asset in assets if not asset["references"]]
    matrix_path = root / "jako-project-matrix.json"

    return {
        "schemaVersion": 1,
        "generatedAt": datetime.now(timezone.utc).isoformat(),
        "mode": "report-only",
        "matrix": {
            "path": "jako-project-matrix.json",
            "exists": matrix_path.is_file(),
            "loadedOrModified": False,
        },
        "sourceRoot": "src/",
        "categoryDirectories": category_dirs,
        "projectDirectories": project_dirs,
        "supportDirectories": support_dirs,
        "assets": assets,
        "duplicateFilenames": sorted(duplicate_filenames, key=lambda item: str(item["filename"]).casefold()),
        "assetsOutsideProjectDirectories": outside_project_assets,
        "missingReferencedAssets": missing_references,
        "unreferencedAssetCandidates": unreferenced,
        "videoMetadataTool": "ffprobe" if ffprobe else None,
        "summary": {
            "projectDirectoryCount": len(project_dirs),
            "assetCount": len(assets),
            "imageCount": sum(asset["kind"] == "image" for asset in assets),
            "videoCount": sum(asset["kind"] == "video" for asset in assets),
            "duplicateFilenameCount": len(duplicate_filenames),
            "extensionMismatchCount": sum(asset["extensionMismatch"] for asset in assets),
            "missingReferenceCount": len(missing_references),
            "unreferencedAssetCandidateCount": len(unreferenced),
        },
    }


def main() -> int:
    default_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=default_root, help="Repository root (default: parent of tools/)")
    parser.add_argument("--output", type=Path, default=Path("tools/reports/assets-report.json"), help="Report path, relative to root unless absolute")
    args = parser.parse_args()
    root = args.root.resolve()
    output = args.output if args.output.is_absolute() else root / args.output
    try:
        report = build_report(root)
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    except (OSError, FileNotFoundError) as error:
        print(f"asset report failed: {error}", file=sys.stderr)
        return 1
    print(f"Wrote report-only asset inventory: {relative(output, root) if output.is_relative_to(root) else output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
