# Current State

JAKO.world is intentionally maintained as a simple personal portfolio/CV. Its five-block page architecture is Header → Professional Profile → Job Experience → Projects → Footer. The header contains theme, English/Spanish/Italian, and GitHub controls; the footer contains only Download PDF. Education remains nested within the Professional Profile block with its existing gallery. Projects currently presents only NZ Trip as the master project-card prototype. Other project records remain in JavaScript but are filtered out of the current presentation. The site is built from `index.html`, `src/styles/global.css`, and `src/scripts/main.js`; no package manifest or build configuration was found.

# Architecture

The portfolio presents project identity, metadata, selected assets, and links. Independent projects may keep their own implementations and repositories. The current project record supports category, project type, platform, launch month/year, description, technical metadata, JAKO-related metadata, assets, repository/live links, featured state, and next action. Most values are currently null or absent. Platform and project type are separate fields. Unknown values should remain explicitly unknown.

The current project UI combines static HTML rows with project records in JavaScript. `renderProjectCards()` prepares and appends only `presentedProjects`; this currently filters the retained project records to NZ Trip. The shared Education gallery and project gallery handlers provide thumbnail expansion, selected-image preview, and cleanup when a gallery collapses. The NZ Trip thumbnail strip starts open and its large preview starts hidden. The Header's explicit language buttons set the existing `languageIndex` and call the existing `applyLanguage()` function. The Header and PDF-only Footer share the existing `.header-style-bar` styling, which is hidden in print. Treat this as the current prototype, not a confirmed final architecture.

# Projects

Confirmed platforms:

* PULS App — Smartwatch App
* Pulsor App — Mobile App · Web App
* Fotopanel.art — Web App · Mobile App
* ARPA Solutions — Web App · Mobile App

Current conceptual model (working, not final):

* JAKO.art: artworks, exhibitions, photography, land art, media art, performance, generative art.
* JAKO.studio: Z-Dial, P.U.L.S., Pulsor, Biopulsor, generative systems, interactive applications.
* Professional Portfolio: CV, education, job experience, software/technology projects.

NZ Trip is the only project currently displayed. Its retained record has no confirmed `projectType`, platform, repository, or live link, so those fields are omitted. Existing information displayed: period `11/20 - 08/21`, location `Tauranga, NZ`, description “Artistic project period connected to New Zealand,” and practice: Aerial Photography, Drawing, Running, Performance, Land Art, Media Art, Generative Art. Its gallery uses 19 existing images from `src/art.projects/nzTrip/`.

Other records remain in `main.js` but are not currently presented: ARDE, Artepanel, Drawgap Studio, Fotopanel.art, ARPA Solutions, KroxTrain, Zenergy.lab, Biopulsor, Z-Dial, PULS App, Pulsor App, BioRush, and JAKO Ecosystem. Their future project order and categorization remain open.

Drawgap Studio is described as a multidisciplinary art producer working with drone video/photography, 3D scan, media art, and generative art. NZ Trip lists aerial photography, drawing, running, performance, land art, media art, and generative art. Fotopanel.art's documented physical direction is image → digital design → visualization → ACM frame → banner print → matte lamination → assembly → physical panel.

# Technology

The site uses browser JavaScript for project rendering, language switching, project metadata, image/gallery interaction, theme controls, and print/PDF behavior. Languages present in `main.js`: English, Spanish, Italian. No automated build/test command was identified in the inspected repository files.

`tools/standardize_assets.py` generates `tools/reports/assets-report.json` in report-only mode. It does not move, rename, convert, or delete assets. The report has identified files whose extensions do not match their actual formats; do not alter them automatically.

# Artistic / Conceptual Context

Working process models include Image → Matter → Space → Body → Nature → System → Time → Movement → Code → JAKO, and Observe → Create → Design → Materialize → Build → Install → Work with Territory → Work with Body → Work with Systems → Code → Generate → JAKO. These models are not fixed site architecture.

Z-Dial and Biokinetic Drop are evolving conceptual/technical work. The relationships among Biokinetic Drop, three waves, Z-Dial, P.U.L.S., movement, time, body, and generative systems remain unresolved. Do not invent their specifications or meanings. Fotopanel.art's business model should not be redesigned without the human's decision.

# Repository Structure

Key paths:

* `index.html` — portfolio markup and current card shells/project rows.
* `src/scripts/main.js` — translations, project records, rendering, and interactions.
* `src/styles/global.css` — site styles.
* `src/art.projects/`, `src/data science/`, `src/job. experience/`, `src/certify/`, `src/img/` — historical directory naming is intentional until reviewed.
* `tools/standardize_assets.py`, `tools/reports/assets-report.json` — asset inventory/reporting.

Do not normalize directory names or migrate/delete/convert assets without a deliberate decision.

# Recent Changes

2026-10-03

* Established the five-block page structure: Header, Professional Profile, Job Experience, Projects, Footer. Education remains nested in the Professional Profile group.
* Moved the existing GitHub link and theme control to the Header, added direct English/Spanish/Italian buttons using the existing translation state, and left only the existing PDF button in the Footer.
* Preserved NZ Trip as the only project and left its card implementation unchanged.
* Files affected: `index.html`, `src/scripts/main.js`, `src/styles/global.css`, `docs/CHATGPT_CONTEXT.md`.
* Validation: JavaScript syntax, HTML structure/order and IDs, `git diff --check`, and desktop/mobile renders checked. HTML Tidy reported warnings but no structural errors. Browser interaction and print output were not verified because ChromeDriver was killed by the environment.

* Reset the Projects presentation to NZ Trip only and established it as the master project-card prototype.
* Other project cards were removed from the presentation; project records, repositories, folders, and assets were preserved.
* Files affected: `index.html`, `src/scripts/main.js`, `docs/CHATGPT_CONTEXT.md`.
* Validation: JavaScript syntax check passed; `git diff --check` passed; project-card structure and 19 asset paths were checked; desktop/mobile screenshots reviewed. `tidy` reported warnings (including pre-existing markup warnings and the NZ preview's intentionally empty initial source state). Browser interaction checks could not run because ChromeDriver was killed by the environment; dark/light interaction and print output were not verified.

* Merged the Data / Technology / Research and JAKO project records into the Art Projects UI category and removed their separate card shells.
* Files affected: `index.html`, `src/scripts/main.js`.
* This changes current presentation only; final portfolio/project grouping remains open.
* Validation: inspected the diff and confirmed no remaining project records or category containers used the removed category IDs.
* Created this context bridge from the supplied JAKO context and repository inspection.

# Open Decisions

* Determine the final relationship and responsibilities of JAKO.art, JAKO.studio, and the professional portfolio.
* Review and approve the NZ Trip prototype before adding the next project.
* Determine which projects belong in the artistic portfolio versus professional portfolio and how the remaining projects should be grouped.
* Determine the final relationship between Z-Dial and Biokinetic Drop, including the unresolved concepts listed above.
* Confirm project launch dates before displaying them; duration should be calculated from confirmed dates.
* Decide repository normalization and asset organization strategy before moving or renaming anything.
* Decide whether project rows should have one source of truth (markup or project data) before further project-card refactoring.
* Confirm whether NZ Trip should have a project type, platform, repository, or live link; none is currently confirmed in its project record.
* Define any exhibition-oriented architecture with the human before implementation.

# Known Problems

* Project display still combines static HTML and JavaScript project records. Other project records remain retained but hidden by the NZ Trip presentation filter.
* Project metadata fields exist, but many values are unset; do not infer missing metadata.
* The asset scan reports extension/format mismatches. Keep these as findings pending a human decision.
* The working tree already contains other uncommitted changes (including README and asset/tool changes); inspect diffs before future edits and do not attribute them to this context-bridge task.

# Recommended Next Step

Review the NZ Trip master card and decide whether its metadata, information hierarchy, and gallery behavior are ready to approve. Do not add the next project until the human approves this prototype.
