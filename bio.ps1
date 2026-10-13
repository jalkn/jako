
# JAKO Portfolio — Canonical Generator
# Source: bio.ps1 | Output: index.html

<#
JAKO ARCHITECTURE
-----------------

                         JAKO
                           |
                        RESEARCH
                           |
                       JAKO.STUDIO
                           |
                 +---------+---------+
                 |                   |
                PULL                PUSH
                 |                   |
          IMAGINE / INHALE     EXHALE / CREATE
                 |                   |
                 +---------+---------+
                           |
                         SPHERE
                           |
                          DROPS
                           |
                        RELATIONS


FRONTEND ARCHITECTURE
---------------------

SUN    — Header and navigation.
BODY   — Profile, Education, and Job Experience.
SPIRIT — Projects and Books.

SUN
└── site-header
    ├── site-brand
    └── header-controls

BODY
├── section-profile
├── section-education
│   └── list-education
└── section-experience
    └── list-experience

SPIRIT
├── section-projects
│   └── list-projects
└── section-books
    └── list-books

src/global.css
│
├── 01. DESIGN TOKENS
│   ├── Colors
│   ├── Typography
│   ├── Borders and surfaces
│   └── Spacing and transitions
│
├── 02. THEMES
│   ├── Light
│   └── Dark
│
├── 03. GLOBAL FOUNDATION
│   ├── Reset and box-sizing
│   ├── Body and viewport
│   └── Accessibility
│
├── 04. SHARED COMPONENTS
│   ├── Buttons
│   ├── SVG icons
│   └── Glass surfaces
│
├── 05. SUN
│   ├── Site header
│   ├── Brand
│   └── Header controls
│
├── 06. BODY
│
├── 07. SPIRIT
│
├── 08. SHARED INTERACTIONS
│
└── 09. RESPONSIVE AND PRINT

CLASS != TYPE != FRONTEND SECTION

CLASS: DROP | SPHERE
TYPE: education | experience | project | book

DROP + education  -> Education
DROP + experience -> Job Experience
SPHERE + project  -> Projects
SPHERE + book     -> Books


STRATEGIC MODEL — 70/30
-----------------------

70% — COMMERCIAL ENGINE:
    Validate commercial projects and generate income.
    Initial priority: Fotopanel.art.

30% — ARTISTIC RESEARCH:
    Develop JAKO, its public portfolio, Z-Dial,
    Biokinetic Engine, and related artistic work.

The 70/30 ratio is a proposed 90-day allocation
of time and energy, not ownership or revenue sharing.

The JAKO portfolio belongs to the 30% research track.
Commercial projects such as Fotopanel.art belong
to the 70% track.

GENERATOR CONTRACT
------------------

bio.ps1 is the canonical source for the public portfolio.
bio.ps1 generates index.html at the repository root and writes
CSS and JavaScript to src/global.css and src/main.js.

Preserve content, design, functionality, and asset paths.
Do not invent entities, data, links, or relationships.
Do not edit generated files as the source of truth.
Do not change output responsibilities without approval.
Distinguish implemented behavior from verified behavior.
#>


$ErrorActionPreference = 'Stop'
$ProjectRoot = $PSScriptRoot
$OutputPath = Join-Path $ProjectRoot 'index.html'


$html = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="light dark">
    <title>JAKO — Portfolio</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Rajdhani:wght@500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="src/global.css">
</head>

<body>
    <!-- SUN -->
    <header class="site-header">
        <a class="site-brand" href="#top" aria-label="JAKO home">
            <svg
                class="site-brand__mark"
                viewBox="0 0 100 100"
                aria-hidden="true"
            >
                <g transform="rotate(180 50 50)">
                    <polygon points="50,42 58,50 50,58 42,50" />
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>

            <span class="site-brand__name">JAKO</span>
        </a>

        <nav class="header-controls" aria-label="Header controls">
            <div class="header-controls__track">
                <a
                    class="header-control"
                    href="https://github.com/jalkn"
                    target="_blank"
                    rel="noopener noreferrer"
                    aria-label="GitHub profile"
                    title="GitHub"
                >
                    <svg
                        class="header-control__icon"
                        viewBox="0 0 24 24"
                        aria-hidden="true"
                    >
                        <path d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729 1.205.085 1.84 1.237 1.84 1.237 1.07 1.834 2.807 1.304 3.492.997.108-.775.418-1.305.762-1.605-2.665-.3-5.467-1.334-5.467-5.93 0-1.31.468-2.38 1.235-3.22-.124-.303-.535-1.523.117-3.176 0 0 1.008-.322 3.3 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.29-1.552 3.295-1.23 3.295-1.23.655 1.653.244 2.873.12 3.176.77.84 1.233 1.91 1.233 3.22 0 4.61-2.807 5.625-5.48 5.92.43.372.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.286 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12" />
                    </svg>
                </a>

                <button
                    class="header-control"
                    id="theme-toggle"
                    type="button"
                    aria-label="Toggle color theme"
                    aria-pressed="false"
                    title="Toggle theme"
                >
                    <svg
                        class="header-control__icon"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke-width="1.8"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        aria-hidden="true"
                    >
                        <rect x="3" y="6" width="18" height="12" rx="6" />
                        <circle
                            class="theme-toggle__knob"
                            cx="9"
                            cy="12"
                            r="3.5"
                            fill="currentColor"
                            stroke="none"
                        />
                    </svg>
                </button>
            </div>
        </nav>
    </header>

    <script src="src/main.js" defer></script>
</body>
</html>
'@

$css = @'
/* =====================================================
           GLOBAL FOUNDATION
           ===================================================== */

        :root {
            color-scheme: light;

            --page-bg: #f4f5f7;
            --text-primary: #0d0d0d;
            --border-subtle: rgba(0, 0, 0, 0.12);
            --surface-glass: rgba(255, 255, 255, 0.88);
            --control-bg: rgba(0, 0, 0, 0.03);

            --font-display: 'Orbitron', sans-serif;
            --font-body: 'Rajdhani', sans-serif;
        }

        body.dark-mode {
            color-scheme: dark;

            --page-bg: #111315;
            --text-primary: #f4f5f7;
            --border-subtle: rgba(255, 255, 255, 0.16);
            --surface-glass: rgba(25, 28, 31, 0.88);
            --control-bg: rgba(255, 255, 255, 0.03);
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        html,
        body {
            min-height: 100%;
            margin: 0;
        }

        body {
            min-height: 100vh;
            background: var(--page-bg);
            color: var(--text-primary);
            font-family: var(--font-body);
            letter-spacing: 0.02em;
            transition:
                background-color 0.3s ease,
                color 0.3s ease;
        }

        body::before {
            position: fixed;
            z-index: -1;
            inset: 0;
            background: radial-gradient(
                circle at 50% 30%,
                rgba(128, 128, 128, 0.04),
                transparent 70%
            );
            content: "";
            pointer-events: none;
        }

        button,
        a {
            -webkit-tap-highlight-color: transparent;
        }

        button {
            font: inherit;
        }

        ::selection {
            background: var(--text-primary);
            color: var(--page-bg);
        }

        /* =====================================================
           SUN — SITE HEADER
           ===================================================== */

        .site-header {
            position: relative;
            z-index: 10;

            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.75rem;

            width: 100%;
            min-height: 42px;
            padding: 0.3rem 0.8rem;

            border-bottom: 1px solid var(--border-subtle);
            background: var(--surface-glass);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .site-brand {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            flex-shrink: 0;
            white-space: nowrap;
        }

        .site-brand__mark {
            display: block;
            width: 22px;
            height: 22px;
            flex: 0 0 auto;
            fill: currentColor;
        }

        .site-brand__name {
            font-family: var(--font-display);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.15em;
        }

        /* =====================================================
           SUN — HEADER CONTROLS
           ===================================================== */

        .header-controls {
            position: relative;

            display: flex;
            align-items: center;

            width: 118px;
            height: 34px;
            padding: 2px 4px;

            overflow: hidden;
            border: 1px solid var(--border-subtle);
            border-radius: 18px;
            background: var(--control-bg);
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
        }

        .header-controls__track {
            position: relative;
            z-index: 1;

            display: flex;
            align-items: center;
            gap: 6px;

            width: 100%;
            height: 100%;
            overflow-x: auto;
            overflow-y: hidden;

            scrollbar-width: none;
            scroll-snap-type: x mandatory;
        }

        .header-controls__track::-webkit-scrollbar {
            display: none;
        }

        .header-control {
            display: flex;
            align-items: center;
            justify-content: center;
            flex: 0 0 30px;

            width: 30px;
            height: 28px;
            padding: 0;

            border: 1px solid var(--border-subtle);
            border-radius: 50%;
            background: var(--surface-glass);
            color: var(--text-primary);

            box-shadow:
                inset 0 1px 1px rgba(255, 255, 255, 0.4),
                0 1px 3px rgba(0, 0, 0, 0.1);

            cursor: pointer;
            scroll-snap-align: center;

            transition:
                transform 0.15s ease,
                border-color 0.15s ease;
        }

        .header-control:hover {
            border-color: var(--text-primary);
            transform: scale(1.06);
        }

        .header-control:active {
            transform: scale(0.94);
        }

        .header-control:focus-visible {
            outline: 2px solid var(--text-primary);
            outline-offset: 2px;
        }

        .header-control__icon {
            display: block;
            width: 14px;
            height: 14px;
            fill: currentColor;
            stroke: currentColor;
        }

        .theme-toggle__knob {
            transform: translateX(0);
            transition: transform 0.2s ease;
        }

        body.dark-mode .theme-toggle__knob {
            transform: translateX(6px);
        }
'@


$js = @'
/* SUN — Theme controller */
const themeToggle = document.getElementById('theme-toggle');

themeToggle.addEventListener('click', () => {
    const isDark = document.body.classList.toggle('dark-mode');
    themeToggle.setAttribute('aria-pressed', String(isDark));
});
'@

$CssPath = Join-Path $ProjectRoot 'src/global.css'
$JsPath = Join-Path $ProjectRoot 'src/main.js'

try {
    if ([string]::IsNullOrWhiteSpace($ProjectRoot)) {
        throw 'Could not resolve the repository directory from the script location.'
    }

    if (-not $html.TrimStart().StartsWith('<!DOCTYPE html>', [System.StringComparison]::OrdinalIgnoreCase)) {
        throw 'The HTML template does not begin with a valid HTML doctype.'
    }

    New-Item -ItemType Directory -Path (Split-Path $CssPath -Parent) -Force | Out-Null

    $Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($OutputPath, $html, $Utf8NoBom)
    [System.IO.File]::WriteAllText($CssPath, $css, $Utf8NoBom)
    [System.IO.File]::WriteAllText($JsPath, $js, $Utf8NoBom)

    Write-Host "JAKO frontend generated successfully:" -ForegroundColor Green
    Write-Host "  HTML: $OutputPath"
    Write-Host "  CSS:  $CssPath"
    Write-Host "  JS:   $JsPath"
}
catch {
    Write-Error "JAKO frontend generation failed: $($_.Exception.Message)"
    exit 1
}
