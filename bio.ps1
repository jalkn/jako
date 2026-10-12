
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
The embedded HTML is currently generated as index.html.
CSS and JavaScript are embedded; separate output files
are not currently generated.

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
    <title>JAKO // Master Architecture Portfolio & CV</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Rajdhani:wght@500;600;700&display=swap" rel="stylesheet">
    
   <style>
        /* =========================================================
           1. DESIGN TOKENS & GLOBAL RESETS
           ========================================================= */
        :root {
            --jako-bg: #f4f5f7;
            --jako-text: #0d0d0d;
            --jako-border: rgba(0, 0, 0, 0.12);
            --jako-glass: rgba(255, 255, 255, 0.88);
            --gradient-start: rgba(0, 0, 0, 0.02);
            --gradient-mid: rgba(244, 245, 247, 0.85);
            --gradient-end: #f4f5f7;
            --icon-hover: #000;
        }

        body.dark-mode {
            --jako-bg: #111315;
            --jako-text: #f4f5f7;
            --jako-border: rgba(255, 255, 255, 0.16);
            --jako-glass: rgba(25, 28, 31, 0.88);
            --gradient-start: rgba(255, 255, 255, 0.04);
            --gradient-mid: rgba(17, 19, 21, 0.86);
            --gradient-end: #111315;
            --icon-hover: #fff;
        }

        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: inherit;
        }

        html, body {
            height: 100vh;
            max-height: 100vh;
            overflow: hidden;
        }

        body {
            font-family: 'Rajdhani', sans-serif;
            background-color: var(--jako-bg);
            color: var(--jako-text);
            width: 100vw;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            user-select: none;
            position: relative;
            letter-spacing: 0.02em;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        ::selection {
            background-color: var(--jako-text);
            color: var(--jako-bg);
        }

        button, span, div {
            -webkit-tap-highlight-color: transparent;
        }

        /* Ambient Background Layers */
        #page-bg-overlay, .ambient-gradient {
            position: fixed;
            inset: 0;
        }

        #page-bg-overlay {
            background: radial-gradient(
                circle at 50% 30%,
                var(--gradient-start) 0%,
                var(--gradient-mid) 65%,
                var(--gradient-end) 100%
            );
            z-index: -1;
        }

        .ambient-gradient {
            background: linear-gradient(
                to bottom,
                rgba(0, 0, 0, 0.03),
                transparent,
                rgba(0, 0, 0, 0.03)
            );
            z-index: 0;
            pointer-events: none;
        }

        /* =========================================================
           2. MACRO-BLOCK 1: SUN (HEADER & CONTROLS DIAL)
           ========================================================= */
        .header-style-bar {
            height: 42px;
            flex-shrink: 0;
            display: flex;
            align-items: center;
            width: 100%;
            padding: 0 1.2rem;
            z-index: 100;
            border-top: 1px solid var(--jako-border);
            background: var(--jako-glass);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            gap: 0.5rem;
        }

        .header-style-bar.site-header {
            height: auto;
            min-height: 42px;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 0.3rem 0.8rem;
            border-top: 0;
            border-bottom: 1px solid var(--jako-border);
        }

        .site-brand-lockup {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            white-space: nowrap;
        }

        .site-brand-mark {
            display: block;
            width: 22px;
            height: 22px;
            fill: var(--jako-text);
            flex: 0 0 auto;
        }

        .site-brand {
            font-family: 'Orbitron', sans-serif;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 0.15em;
        }

        /* Contenedor tipo dial calibrador óptico */
        .header-controls-dial-wrapper {
            position: relative;
            width: 118px; /* Ancho justo para visualizar 3 botones */
            height: 34px;
            padding: 2px 4px;
            border-radius: 18px;
            border: 1px solid var(--jako-border);
            background: rgba(0, 0, 0, 0.03);
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
            display: flex;
            align-items: center;
            overflow: hidden;
        }

        body.dark-mode .header-controls-dial-wrapper {
            background: rgba(255, 255, 255, 0.03);
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.4);
        }

        /* Escala graduada de precisión */
        .dial-scale-ticks {
            position: absolute;
            inset: 0;
            pointer-events: none;
            background: repeating-linear-gradient(
                90deg,
                var(--jako-border) 0px,
                var(--jako-border) 1px,
                transparent 1px,
                transparent 7px
            );
            opacity: 0.35;
            z-index: 0;
        }

        /* Tira deslizante horizontal tipo rueda */
        .header-controls-dial {
            display: flex;
            align-items: center;
            gap: 6px;
            width: 100%;
            height: 100%;
            overflow-x: auto;
            overflow-y: hidden;
            scroll-snap-type: x mandatory;
            scroll-behavior: smooth;
            scrollbar-width: none;
            z-index: 1;
        }

        .header-controls-dial::-webkit-scrollbar {
            display: none;
        }

        /* Estilo mecánico e hiperrealista de los botones paso a paso */
        .dial-step {
            flex: 0 0 30px;
            height: 28px;
            scroll-snap-align: center;
            border-radius: 50%;
            border: 1px solid var(--jako-border);
            background: radial-gradient(circle at 35% 35%, rgba(255, 255, 255, 0.4) 0%, rgba(0, 0, 0, 0.05) 100%), var(--jako-glass);
            box-shadow: 
                inset 0 1px 1px rgba(255, 255, 255, 0.6),
                inset 0 -1px 2px rgba(0, 0, 0, 0.15),
                0 1px 3px rgba(0, 0, 0, 0.1);
            color: var(--jako-text);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: transform 0.15s ease, border-color 0.15s ease, box-shadow 0.15s ease;
        }

        .dial-step:hover {
            border-color: var(--jako-text);
            transform: scale(1.06);
            box-shadow: 
                inset 0 1px 2px rgba(255, 255, 255, 0.8),
                inset 0 -1px 3px rgba(0, 0, 0, 0.25),
                0 2px 5px rgba(0, 0, 0, 0.15);
        }

        .dial-step:active {
            transform: scale(0.94);
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.25);
        }

        .github-icon, .icon-stroke {
            width: 14px;
            height: 14px;
            fill: currentColor;
            stroke: currentColor;
        }

        body.dark-mode .theme-switch-knob {
            transform: translateX(6px);
        }

        /* =========================================================
           3. VIEWPORT & CARD SYSTEM
           ========================================================= */
        .vision-scroll-viewport {
            width: 100%;
            max-width: 580px;
            padding: 0.5rem 0.8rem;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            flex-grow: 1;
            overflow-y: auto;
            overflow-x: hidden;
            scrollbar-width: thin;
        }

        .vision-card {
            background: var(--jako-glass);
            border: 1px solid var(--jako-border);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            padding: 0.6rem 0.8rem;
            border-radius: 4px;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.02), inset 0 1px 0 rgba(255, 255, 255, 0.4);
            width: 100%;
        }

        body.dark-mode .vision-card {
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.05);
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--jako-border);
            padding-bottom: 0.2rem;
            margin-bottom: 0.4rem;
        }

        .section-heading h2 {
            font-family: 'Orbitron', sans-serif;
            font-size: 8.5px;
            font-weight: 700;
            letter-spacing: 0.15em;
            text-transform: uppercase;
        }

        .section-heading > span {
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.1em;
            opacity: 0.5;
            text-transform: uppercase;
        }

        /* =========================================================
           4. MACRO-BLOCK 2: BODY (PROFILE, EDUCATION, EXPERIENCE)
           ========================================================= */
        .engine-box {
            display: flex;
            gap: 0.8rem;
            align-items: center;
        }

        .engine-avatar {
            width: 62px;
            height: 62px;
            border-radius: 4px;
            object-fit: cover;
            border: 1px solid var(--jako-border);
            flex-shrink: 0;
        }

        .engine-title-block {
            font-family: 'Orbitron', sans-serif;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.15em;
            margin-bottom: 0.25rem;
        }

        .engine-text {
            line-height: 1.35;
            font-size: 11px;
            font-weight: 500;
            opacity: 0.9;
        }

        /* Entity Row Styles */
        .dropSphere-group {
            display: flex;
            flex-direction: column;
            gap: 0.4rem;
        }

        .dropSphere-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            width: 100%;
            cursor: pointer;
            transition: opacity 0.15s ease;
        }

        .dropSphere-row:hover {
            opacity: 0.85;
        }

        .dropSphere-value {
            flex: 1;
            min-width: 0;
            font-size: 11px;
            line-height: 1.3;
        }

        .dropSphere-label {
            flex-shrink: 0;
            min-width: 90px;
            margin-left: 0.8rem;
            font-family: 'Orbitron', sans-serif;
            font-size: 7.5px;
            font-weight: 700;
            letter-spacing: 0.08em;
            opacity: 0.7;
            text-align: right;
            text-transform: uppercase;
        }

        .experience-tools {
            display: block;
            margin-top: 0.15rem;
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.08em;
            opacity: 0.6;
        }

        .metadata {
            opacity: 0.55;
            font-size: 8.5px;
        }

        /* Extension Slot for Biokinetic Dial */
        .dial-extension-slot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0.3rem 0.5rem;
            background: rgba(0, 0, 0, 0.03);
            border: 1px dashed var(--jako-border);
            border-radius: 4px;
            font-family: 'Orbitron', sans-serif;
            font-size: 7px;
            letter-spacing: 0.12em;
            opacity: 0.6;
            margin-top: 0.2rem;
        }

        body.dark-mode .dial-extension-slot {
            background: rgba(255, 255, 255, 0.03);
        }

        /* =========================================================
           5. MEDIA GALLERY & PREVIEWS
           ========================================================= */
        .media-preview {
            display: none;
            width: 100%;
            padding: 0.4rem 0 0.2rem 0;
        }

        .media-preview.is-open {
            display: flex;
        }

        .media-gallery {
            flex-direction: row;
            gap: 0.4rem;
            overflow-x: auto;
            scrollbar-width: thin;
        }

        .media-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 0.2rem;
            cursor: pointer;
            flex: 0 0 88px;
            background: transparent;
            border: none;
        }

        .media-item img {
            width: 100%;
            height: 64px;
            object-fit: contain;
            border: 1px solid var(--jako-border);
            border-radius: 4px;
            background: rgba(255, 255, 255, 0.8);
            transition: border-color 0.2s ease, transform 0.15s ease;
        }

        .media-item:hover img {
            transform: scale(1.02);
        }

        .media-item.is-selected img {
            border-color: var(--jako-text);
            box-shadow: 0 0 0 1px var(--jako-text);
        }

        .media-item span {
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            opacity: 0.6;
        }

        /* Large Preview spanning full width of the entity container */
        .selected-media-preview {
            width: 100%;
        }

        .selected-media-preview img {
            width: 100%;
            height: auto;
            max-height: 480px;
            object-fit: contain;
            border-radius: 4px;
            border: 1px solid var(--jako-border);
            margin-top: 0.3rem;
            background: rgba(0, 0, 0, 0.02);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
        }

        /* =========================================================
           6. FOOTER & PRINT / PDF STYLES
           ========================================================= */
        .pdf-footer {
            justify-content: center;
        }

        .btn-control-action {
            padding: 0 0.8rem;
            height: 28px;
            font-family: 'Orbitron', sans-serif;
            font-size: 8px;
            font-weight: 700;
            letter-spacing: 0.1em;
            border: 1px solid var(--jako-border);
            border-radius: 4px;
            background: transparent;
            color: var(--jako-text);
            display: flex;
            align-items: center;
            gap: 0.4rem;
            cursor: pointer;
            transition: border-color 0.2s ease, opacity 0.2s ease;
        }

        .btn-control-action:hover {
            border-color: var(--jako-text);
            opacity: 0.9;
        }

        @media print {
            html, body {
                height: auto !important;
                max-height: none !important;
                overflow: visible !important;
                background: #fff !important;
                color: #000 !important;
            }

            #page-bg-overlay, .ambient-gradient, .header-style-bar {
                display: none !important;
            }

            .vision-scroll-viewport {
                overflow: visible !important;
                height: auto !important;
                max-height: none !important;
                padding: 0 !important;
                max-width: 100% !important;
            }

            .vision-card {
                box-shadow: none !important;
                border: 1px solid #ddd !important;
                background: #fff !important;
                backdrop-filter: none !important;
                margin-bottom: 0.5rem;
                page-break-inside: avoid;
            }

            /* Preserve open galleries & previews in print */
            .media-preview.is-open {
                display: flex !important;
            }

            .selected-media-preview img {
                max-height: none !important;
                page-break-inside: avoid;
            }

            * {
                -webkit-print-color-adjust: exact !important;
                print-color-adjust: exact !important;
            }
        }
    </style>
</head>
<body>

    <div id="page-bg-overlay"></div>
    <div class="ambient-gradient"></div>

    <!-- =========================================================
         MACRO-BLOCK 1: SUN (HEADER)
         ========================================================= -->
    <header class="header-style-bar site-header">
        <div class="site-brand-lockup">
            <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true">
                <g transform="rotate(180 50 50)">
                    <polygon points="50,42 58,50 50,58 42,50" />
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>
            <span class="site-brand">JAKO</span>
        </div>

<nav class="header-controls-dial-wrapper" aria-label="Header controls dial">
            <!-- Marcadores de escala del dial -->
            <div class="dial-scale-ticks" aria-hidden="true"></div>

            <div class="header-controls-dial" id="controls-dial">
                <!-- Botón 1: GitHub -->
                <a class="header-control dial-step" href="https://github.com/jalkn" target="_blank" rel="noopener noreferrer" aria-label="GitHub Profile" title="GitHub">
                    <svg class="github-icon" viewBox="0 0 24 24" aria-hidden="true">
                        <path fill="currentColor" d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729 1.205.085 1.84 1.237 1.84 1.237 1.07 1.834 2.807 1.304 3.492.997.108-.775.418-1.305.762-1.605-2.665-.3-5.467-1.334-5.467-5.93 0-1.31.468-2.38 1.235-3.22-.124-.303-.535-1.523.117-3.176 0 0 1.008-.322 3.3 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.29-1.552 3.295-1.23 3.295-1.23.655 1.653.244 2.873.12 3.176.77.84 1.233 1.91 1.233 3.22 0 4.61-2.807 5.625-5.48 5.92.43.372.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.286 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/>
                    </svg>
                </a>

                <!-- Botón 2: Theme Toggle -->
                <button class="header-control dial-step" id="theme-toggle" type="button" aria-label="Toggle theme" title="Toggle theme">
                    <svg class="icon-stroke" viewBox="0 0 24 24" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                        <rect x="3" y="6" width="18" height="12" rx="6" />
                        <circle class="theme-switch-knob" cx="9" cy="12" r="3.5" fill="currentColor" stroke="none" />
                    </svg>
                </button>
            </div>
        </nav>
    </header>

    <!-- =========================================================
         MAIN VIEWPORT (CONTAINING BODY & SPIRIT)
         ========================================================= -->
    <main class="vision-scroll-viewport" id="main-viewport">

        <!-- MACRO-BLOCK 2: BODY -->
        <section class="vision-card" id="card-profile">
            <div class="engine-box">
                <img src="src/img/photo.png" alt="Alejandro Monsalve M." class="engine-avatar" onerror="this.style.display='none'">
                <div>
                    <div class="engine-title-block">ALEJANDRO MONSALVE M.</div>
                    <p class="engine-text">
                        Multidisciplinary artist and software developer working across plastic arts, digital interfaces, visual systems, and biokinetic research. Translating human movement, code, and physical traction into computational systems. Experienced in full stack development, signage fabrication, and movement research. I speak Spanish, English, and Italian.
                    </p>
                </div>
            </div>
        </section>

        <!-- EDUCATION -->
        <section class="vision-card" id="card-education">
            <div class="section-heading">
                <h2>Education</h2>
                <span>COMPLETION</span>
            </div>
            <div class="dropSphere-group" id="container-education"></div>
        </section>

        <!-- JOB EXPERIENCE -->
        <section class="vision-card" id="card-experience">
            <div class="section-heading">
                <h2>Job Experience</h2>
                <span>START - END</span>
            </div>
            <div class="dropSphere-group" id="container-experience"></div>
        </section>

        <!-- MACRO-BLOCK 3: SPIRIT -->
        <!-- PROJECTS -->
        <section class="vision-card" id="card-projects">
            <div class="section-heading">
                <h2>Projects</h2>
                <span>LAUNCH</span>
            </div>
            <div class="dropSphere-group" id="container-projects"></div>
        </section>

        <!-- BOOKS -->
        <section class="vision-card" id="card-books">
            <div class="section-heading">
                <h2>Books</h2>
                <span></span>
            </div>
            <div class="dropSphere-group" id="container-books"></div>
        </section>

    </main>

    <!-- FOOTER CONTROLS -->
    <footer class="header-style-bar pdf-footer">
        <button class="btn-control-action" id="download-pdf" aria-label="Download PDF" title="Download PDF">
            <svg class="icon-stroke" viewBox="0 0 24 24" fill="none" stroke-width="2">
                <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/>
                <polyline points="7 10 12 15 17 10"/>
                <line x1="12" y1="15" x2="12" y2="3"/>
            </svg>
            PDF
        </button>
    </footer>

    <!-- =========================================================
         7. BACKEND ENTITY DICTIONARY & TRANSLATION LAYER
         ========================================================= -->
    <script>
        /**
         * JAKO DATABASE - Centralized Entity Registry
         * Canonical Backend Source of Truth
         */
        const JAKO_DATABASE = {
            metadata: {
                name: "JAKO",
                model: "MASTER_ENTITY_MODEL",
                version: "1.0",
                architecture: "SUN_BODY_SPIRIT"
            },
            entities: [
                // ---------------------------------------------------------
                // DROPS - EDUCATION
                // ---------------------------------------------------------
                {
                    ID: "drop-edu-01",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Full Stack Development",
                    DESCRIPTION: "W3Schools",
                    DATE: "12/23",
                    PLACE: "Online",
                    MEDIA: [
                        { src: "src/certify/sqlmedia.png", label: "SQL" },
                        { src: "src/certify/pythonmedia.png", label: "Python" },
                        { src: "src/certify/pandasmedia.png", label: "Pandas" },
                        { src: "src/certify/djangomedia.png", label: "Django" },
                        { src: "src/certify/AWScloudmedia.png", label: "AWS Cloud" },
                        { src: "src/certify/htmlmedia.png", label: "HTML" }
                    ],
                    TOOLS: ["SQL", "Python", "Pandas", "Django", "AWS", "HTML"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-edu-02",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Fine Arts Recognition Level 7",
                    DESCRIPTION: "NZQA",
                    DATE: "12/22",
                    PLACE: "Auckland, NZ",
                    MEDIA: [
                        { src: "src/certify/NZQA.png", label: "Degree" }
                    ],
                    TOOLS: [],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-edu-03",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Plastic Arts Educator Degree",
                    DESCRIPTION: "University of Antioquia",
                    DATE: "03/15",
                    PLACE: "Medellín, COL",
                    MEDIA: [
                        { src: "src/certify/degreemedia.png", label: "English" },
                        { src: "src/certify/certificadoGrado.png", label: "Spanish" }
                    ],
                    TOOLS: [],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // DROPS - EXPERIENCE
                // ---------------------------------------------------------
                {
                    ID: "drop-exp-01",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Celsia S.A. E.S.P.",
                    DESCRIPTION: "Software Developer",
                    DATE: "03/25 - 10/25",
                    PLACE: "Medellín, COL",
                    MEDIA: [],
                    TOOLS: ["Python", "SQL", "Pandas", "Git"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-02",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Synthesis Consulting S.A.S.",
                    DESCRIPTION: "RPA Developer",
                    DATE: "10/24 - 02/25",
                    PLACE: "Medellín, COL",
                    MEDIA: [],
                    TOOLS: ["Python", "PowerShell", "Bash"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-03",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Sharp Signs",
                    DESCRIPTION: "Graphic Designer & Installer",
                    DATE: "06/22 - 09/23",
                    PLACE: "Auckland, NZ",
                    MEDIA: [],
                    TOOLS: ["CNC Router Cut", "Vinyl Computer Cut", "Lamination", "Wrapping"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-04",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Sign Creations NZ",
                    DESCRIPTION: "Signs Installer",
                    DATE: "04/21 - 05/22",
                    PLACE: "Mt Maunganui, NZ",
                    MEDIA: [],
                    TOOLS: ["CNC Router Cut", "Vinyl Computer Cut", "Inkjet Print", "Lamination"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-09",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "ediciones&formas",
                    DESCRIPTION: "Graphic Designer",
                    DATE: "05/06 - 07/17",
                    PLACE: "Medellín, COL",
                    MEDIA: [
                        { src: "src/drop/eyf/1.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/2.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/3.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/4.JPG", label: "Graphic Design" },
                        { src: "src/drop/eyf/5.JPG", label: "Graphic Design"}
                    ],
                    TOOLS: ["Corel Draw", "Illustrator", "Photoshop", "InDesign", "Lithography"],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // SPHERES - PROJECTS
                // ---------------------------------------------------------
                {
                    ID: "sphere-proj-02",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "NZ Trip",
                    DESCRIPTION: "Website",
                    DATE: "09/23",
                    PLACE: "New Zealand",
                    MEDIA: [
                        { src: "src/sphere/nzTrip/1.png", label: "1" },
                        { src: "src/sphere/nzTrip/4.png", label: "4" },
                        { src: "src/sphere/nzTrip/5.png", label: "5" },
                        { src: "src/sphere/nzTrip/7.png", label: "7" },
                        { src: "src/sphere/nzTrip/8.png", label: "8" },
                        { src: "src/sphere/nzTrip/9.png", label: "9" },
                        { src: "src/sphere/nzTrip/10.png", label: "10" },
                        { src: "src/sphere/nzTrip/12.png", label: "12" },
                        { src: "src/sphere/nzTrip/16.png", label: "16" },
                        { src: "src/sphere/nzTrip/19.png", label: "19" },
                        { src: "src/sphere/nzTrip/20.png", label: "20" },
                        { src: "src/sphere/nzTrip/21.png", label: "21" },
                        { src: "src/sphere/nzTrip/22.png", label: "22" },
                        { src: "src/sphere/nzTrip/23.png", label: "23" },
                        { src: "src/sphere/nzTrip/24.png", label: "24" },
                        { src: "src/sphere/nzTrip/25.png", label: "25" },
                        { src: "src/sphere/nzTrip/26.png", label: "26" },
                        { src: "src/sphere/nzTrip/27.png", label: "27" },
                        { src: "src/sphere/nzTrip/30.png", label: "30" }
                    ],
                    TOOLS: ["Motion Graphics", "Aerial Photography", "Drawing", "Performance", "Land Art"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "sphere-proj-06",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "fotopanel.art",
                    DESCRIPTION: "Mobile and Web app",
                    DATE: "",
                    PLACE: "",
                    MEDIA: [],
                    TOOLS: ["Visual Systems", "Physical Computing"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "sphere-proj-07",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "Colombian Air Force Squads",
                    DESCRIPTION: "Poster Series",
                    DATE: "09/25",
                    PLACE: "Apiay, Meta, COL",
                    MEDIA: [
                        { src: "src/sphere/escuadrones/214.jpg", label: "Escuadrón Defensa Aérea 214" },
                        { src: "src/sphere/escuadrones/215.jpg", label: "Escuadrón Navegación Aérea 215" },
                        { src: "src/sphere/escuadrones/A29B.jpg", label: "A29B Supertucano" },
                        { src: "src/sphere/escuadrones/AC47T.jpg", label: "AC47T Fantasma" },
                        { src: "src/sphere/escuadrones/tucano.png", label: "AT27 Tucano" },
                        { src: "src/sphere/escuadrones/blackhawk.png", label: "Blackhawk UH60L" },
                        { src: "src/sphere/escuadrones/caravan.png", label: "C-208B Caravan" },
                        { src: "src/sphere/escuadrones/hermes.png", label: "Hermes 900/450" },
                        { src: "src/sphere/escuadrones/schweizer.png", label: "SA237B Schweizer" }
                    ],
                    TOOLS: ["Photoshop", "Digital Collage", "Visual Identity", "Print Design", "Image Compositing"],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // SPHERES - BOOKS
                // ---------------------------------------------------------
                {
                    ID: "sphere-book-01",
                    CLASS: "SPHERE",
                    TYPE: "book",
                    WORD: "BIOMANIFESTO & THE COGNITIVE SYSTEM",
                    DESCRIPTION: "the unconscious mind, bopdy as source of creativity.",
                    DATE: "",
                    PLACE: "",
                    MEDIA: [],
                    TOOLS: ["Philosophical Seed"],
                    LINKS: [],
                    RELATIONS: []
                }
            ]
        };

        /* =========================================================
           8. VALIDATION & FRONTEND TRANSLATION LAYER
           ========================================================= */
        function validateDatabase(db) {
            const validPairs = [
                { CLASS: "DROP", TYPE: "education" },
                { CLASS: "DROP", TYPE: "experience" },
                { CLASS: "SPHERE", TYPE: "project" },
                { CLASS: "SPHERE", TYPE: "book" }
            ];

            db.entities.forEach(entity => {
                const isValid = validPairs.some(p => p.CLASS === entity.CLASS && p.TYPE === entity.TYPE);
                if (!isValid) {
                    console.warn(`[JAKO VALIDATION] Invalid CLASS/TYPE pair for entity ID: ${entity.ID}`);
                }
            });
        }

        /**
         * Generic Component Renderer
         * Translates backend entities to the frontend visual components
         */
        function renderEntityGroup(typeFilter, containerId) {
            const container = document.getElementById(containerId);
            if (!container) return;

            const entities = JAKO_DATABASE.entities.filter(e => e.TYPE === typeFilter);

            container.innerHTML = entities.map((item) => {
                const toolsList = item.TOOLS.length > 0 
                    ? `<span class="experience-tools">${item.TOOLS.join(' · ')}</span>` 
                    : '';
                
                const placeLabel = item.PLACE ? `<span class="metadata">[${item.PLACE}]</span>` : '';
                const dateLabel = item.DATE || '—';

                const hasMedia = item.MEDIA && item.MEDIA.length > 0;
                const toggleClass = hasMedia ? 'media-toggle' : '';

                // Build media gallery HTML if images are present
                let mediaHtml = '';
                if (hasMedia) {
                    const galleryItems = item.MEDIA.map((m) => `
                        <button class="media-item" type="button" data-media-src="${m.src}" data-media-alt="${m.label}">
                            <img src="${m.src}" alt="${m.label}" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\\'http://www.w3.org/2000/svg\\' width=\\'50\\' height=\\'50\\'><rect width=\\'50\\' height=\\'50\\' fill=\\'%23ccc\\'/></svg>'">
                            <span>${m.label}</span>
                        </button>
                    `).join('');

                    mediaHtml = `
                        <div class="media-preview media-gallery" id="gallery-${item.ID}">
                            ${galleryItems}
                        </div>
                        <div class="media-preview selected-media-preview" id="preview-${item.ID}" aria-live="polite">
                            <img alt="Selected view" src="">
                        </div>
                    `;
                }

                return `
                    <div class="dropSphere-row ${toggleClass}" data-entity-id="${item.ID}">
                        <span class="dropSphere-value">
                            <strong>${item.WORD}</strong> ${item.DESCRIPTION ? '// ' + item.DESCRIPTION : ''}
                            ${placeLabel}
                            ${toolsList}
                        </span>
                        <span class="dropSphere-label">${dateLabel}</span>
                    </div>
                    ${mediaHtml}
                `;
            }).join('');
        }

        /* =========================================================
           9. INTERACTION CONTROLLERS (INDEPENDENT TOGGLES & FULL WIDTH PREVIEWS)
           ========================================================= */
        function initInteractions() {
            // Theme Toggle Controller
            const themeBtn = document.getElementById('theme-toggle');
            themeBtn.addEventListener('click', () => {
                const isDark = document.body.classList.toggle('dark-mode');
                themeBtn.setAttribute('aria-pressed', isDark);
            });

            // Print / PDF Controller
            const pdfBtn = document.getElementById('download-pdf');
            pdfBtn.addEventListener('click', () => {
                window.print();
            });

            // Independent Accordion & Image Viewport Controller
            document.addEventListener('click', (e) => {
                // Handle Entity Row Gallery Toggle (Independent toggle per entity)
                const toggleRow = e.target.closest('.media-toggle');
                if (toggleRow) {
                    const entityId = toggleRow.getAttribute('data-entity-id');
                    const gallery = document.getElementById(`gallery-${entityId}`);
                    const preview = document.getElementById(`preview-${entityId}`);

                    if (gallery) {
                        const isOpen = gallery.classList.contains('is-open');
                        if (isOpen) {
                            // Close this specific gallery and its large preview
                            gallery.classList.remove('is-open');
                            if (preview) {
                                preview.classList.remove('is-open');
                                const img = preview.querySelector('img');
                                if (img) img.src = '';
                            }
                            // Clear selected state on thumbnails
                            gallery.querySelectorAll('.media-item').forEach(btn => btn.classList.remove('is-selected'));
                        } else {
                            // Open this specific gallery without closing others
                            gallery.classList.add('is-open');
                        }
                    }
                    return;
                }

                // Handle Gallery Thumbnail Selection
                const mediaItem = e.target.closest('.media-item');
                if (mediaItem) {
                    const src = mediaItem.getAttribute('data-media-src');
                    const gallery = mediaItem.closest('.media-gallery');
                    const previewContainer = gallery.nextElementSibling;

                    if (previewContainer && previewContainer.classList.contains('selected-media-preview')) {
                        const img = previewContainer.querySelector('img');
                        
                        // Toggle logic: if clicking the currently active image, close the large preview
                        if (mediaItem.classList.contains('is-selected')) {
                            mediaItem.classList.remove('is-selected');
                            previewContainer.classList.remove('is-open');
                            img.src = '';
                        } else {
                            // Clear other selection highlights in this gallery
                            gallery.querySelectorAll('.media-item').forEach(btn => btn.classList.remove('is-selected'));
                            
                            mediaItem.classList.add('is-selected');
                            img.src = src;
                            previewContainer.classList.add('is-open');
                        }
                    }
                }
            });
        }

        /* Initialization execution */
        document.addEventListener('DOMContentLoaded', () => {
            validateDatabase(JAKO_DATABASE);
            renderEntityGroup('education', 'container-education');
            renderEntityGroup('experience', 'container-experience');
            renderEntityGroup('project', 'container-projects');
            renderEntityGroup('book', 'container-books');
            initInteractions();
        });
    </script>
</body>
</html>
'@

try {
    if ([string]::IsNullOrWhiteSpace($ProjectRoot)) {
        throw 'Could not resolve the repository directory from the script location.'
    }

    if (-not $html.TrimStart().StartsWith('<!DOCTYPE html>', [System.StringComparison]::OrdinalIgnoreCase)) {
        throw 'The embedded HTML does not begin with a valid HTML doctype.'
    }

    $Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($OutputPath, $html, $Utf8NoBom)

    Write-Host "JAKO index.html generated successfully: $OutputPath" -ForegroundColor Green
}
catch {
    Write-Error "JAKO HTML generation failed: $($_.Exception.Message)"
    exit 1
}
