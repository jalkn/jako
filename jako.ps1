#!/usr/bin/env pwsh
# =========================================================================
# JAKO CORE — MAIN ECOSYSTEM HUB GENERATOR
# File: jako.ps1 | Architecture, Layout & Data Flow Manifest
# Output: package.json, astro.config.mjs, src/styles/hub.css, 
#         src/scripts/hub.js, public/index.html, index.html
# Version: 1.1.0 | Updated: 2026-11-09
# =========================================================================

<#
===========================================================================
01. JAKO ECOSYSTEM — SYSTEM ARCHITECTURE & DATA FLOW
===========================================================================

                         +-----------------------+
                         |     JAKO ECOSYSTEM    |
                         |     (jako.ps1 HUB)    |
                         +-----------+-----------+
                                     |
    +--------------------------------+--------------------------------+
    |                                |                                |
    v                                v                                v
+------------------+       +-------------------+            +-------------------+
| GLOBAL TELEMETRY |       |   MULTI-CHANNEL   |            |   APP TELEMETRY   |
| (Python / SQLite)|       |   MAIN STAGE      |            |   (Local Engine)  |
| - Biokinetic Δ   |       | - 3D / WebGL      |            | - Action/Vector   |
| - Solar Azimuth  |       | - Video Mapping   |            | - Sets / Reps     |
| - Vault Database |       | - Laser Vector    |            | - Telemetry Ticker|
+------------------+       +-------------------+            +-------------------+

===========================================================================
02. LAYOUT TOPOLOGY & BLOCK SCHEMA (4-BLOCK HYPERREALISTIC INTERFACE)
===========================================================================

+-------------------------------------------------------------------------+
| BLOCK 1: HEADER BAR (Sun / Identity, Global Navigation, Mode Selectors) |
+-------------------------------------------------------------------------+
| BLOCK 2: SYSTEM TELEMETRY STRIP (Infinite Loop / Drag: Global Data)     |
+-------------------------------------------------------------------------+
|                                                                         |
|                          MAIN VIEWPORT STAGE                            |
|                 (Reserved for App Injection in Next Phase)              |
|                                                                         |
+-------------------------------------------------------------------------+
| BLOCK 3: APP TELEMETRY STRIP (Infinite Loop / Drag: Local App Metrics)  |
+-------------------------------------------------------------------------+
| BLOCK 4: FOOTER & MASTER CONTROLS (Ecosystem Sync, Mapping, Settings)   |
+-------------------------------------------------------------------------+

===========================================================================
03. REPOSITORY INTEGRATION MAP
===========================================================================

jako.ps1 (Hub Orchestrator)
 ├── jako-pulsDial   (Biokinetic Transducer Engine & SVG/3D View)
 ├── jako-dropDial   (Particle & Flow Biokinetic Engine)
 ├── jako-alfaDial   (Neural Frequency & Solar Synchronization)
 ├── jako-beatDial   (Web Audio & Sound Geometry Engine)
 ├── jako-fotoPanel  (Spatial Large-Format Inkjet Preview)
 ├── jako-beatWord   (Phoneme-to-Vector Mapping Engine)
 ├── jako-bioManifest(Cognitive System & BioManifiesto SSG)
 ├── jako-bioUI      (Automated CV Generation: UI Jobs & Art Portfolio)
 └── jako-vision     (Artistic Strategy & Open Call Registry)
#>

$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

function Write-Status {
    param(
        [Parameter(Mandatory = $true)][string]$Message,
        [ConsoleColor]$Color = [ConsoleColor]::Cyan
    )
    Write-Host $Message -ForegroundColor $Color
}

function Write-ProjectFile {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Content
    )
    $fullPath = Join-Path $PSScriptRoot $Path
    $parent = Split-Path -Parent $fullPath
    if ($parent -and -not (Test-Path -LiteralPath $parent)) { 
        New-Item -ItemType Directory -Path $parent -Force | Out-Null 
    }
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($fullPath, $Content, $utf8NoBom)
}

Write-Status "========================================================="
Write-Status "     JAKO ECOSYSTEM — INITIALIZING MAIN REPOSITORY       "
Write-Status "========================================================="

# -------------------------------------------------------------------------
# 1. Project Manifest: package.json
# -------------------------------------------------------------------------
Write-Status "`n[1/6] Writing package.json..." Yellow
$packageJson = @'
{
  "name": "jako-ecosystem",
  "type": "module",
  "version": "1.1.0",
  "description": "JAKO Biokinetic Ecosystem Hub & Multichannel Stage",
  "scripts": {
    "dev": "astro dev",
    "build": "astro build",
    "preview": "astro preview"
  },
  "dependencies": {
    "astro": "^5.0.0",
    "svelte": "^5.0.0",
    "@astrojs/svelte": "^6.0.0",
    "three": "^0.170.0"
  }
}
'@
Write-ProjectFile -Path 'package.json' -Content $packageJson

# -------------------------------------------------------------------------
# 2. Configuration: astro.config.mjs
# -------------------------------------------------------------------------
Write-Status "[2/6] Writing astro.config.mjs..." Yellow
$astroConfig = @'
import { defineConfig } from 'astro/config';
import svelte from '@astrojs/svelte';

export default defineConfig({
  integrations: [svelte()],
  server: {
    port: 3000
  }
});
'@
Write-ProjectFile -Path 'astro.config.mjs' -Content $astroConfig

# -------------------------------------------------------------------------
# 3. Modular External CSS: src/styles/hub.css
# -------------------------------------------------------------------------
Write-Status "[3/6] Generating hyperrealistic external CSS (src/styles/hub.css)..." Yellow
$hubCss = @'
/* =========================================================================
   JAKO ECOSYSTEM — HYPERREALISTIC GLOBAL STYLES (MATCHING PULSDIAL DESIGN)
   ========================================================================= */

:root[data-theme="dark"] {
    --jako-bg: rgba(0, 0, 0, 0.95);
    --jako-text: #ffffff;
    --jako-border: rgba(255, 255, 255, 0.08);
    --jako-glass: rgba(0, 0, 0, 0.5);
    --jako-led: rgba(255, 255, 255, 0.75);
    --gradient-start: rgba(255, 255, 255, 0.03);
    --gradient-mid: rgba(5, 5, 8, 0.85);
    --gradient-end: #000000;
}

:root[data-theme="white"] {
    --jako-bg: #f8f9fa;
    --jako-text: #000000;
    --jako-border: rgba(0, 0, 0, 0.08);
    --jako-glass: rgba(255, 255, 255, 0.4);
    --jako-led: rgba(0, 0, 0, 0.85);
    --gradient-start: rgba(0, 0, 0, 0.02);
    --gradient-mid: rgba(248, 249, 250, 0.85);
    --gradient-end: #ffffff;
}

*, ::before, ::after {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    user-select: none;
}

body {
    scroll-behavior: smooth;
    letter-spacing: 0.05em;
    overscroll-behavior: none;
    background-color: var(--jako-bg);
    color: var(--jako-text);
    transition: background-color 0.5s ease, color 0.5s ease;
    font-family: 'Plus Jakarta Sans', sans-serif;
    -webkit-font-smoothing: antialiased;
    width: 100vw;
    height: 100vh;
    height: 100dvh;
    overflow: hidden;
    display: grid;
    grid-template-rows: 46px 32px 1fr 32px 54px;
}

::selection {
    background-color: var(--jako-text);
    color: var(--jako-bg);
}

#page-bg-overlay {
    position: fixed;
    inset: 0;
    background: radial-gradient(circle at 50% 50%, var(--gradient-start) 15%, var(--gradient-mid) 80%, var(--gradient-end) 100%);
    z-index: -1;
    transform: translateZ(0);
}

/* =========================================================
   BLOCK 1: HEADER BAR
   ========================================================= */
.header-style-bar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    min-height: 46px;
    padding: 0 1rem;
    z-index: 100;
    background: var(--jako-glass);
    border-bottom: 1px solid var(--jako-border);
    backdrop-filter: blur(24px) saturate(125%);
    -webkit-backdrop-filter: blur(24px) saturate(125%);
}

.site-brand-lockup {
    display: inline-flex;
    align-items: center;
    gap: 0.45rem;
    color: var(--jako-text);
    text-decoration: none;
    white-space: nowrap;
}

.site-brand-mark {
    display: block;
    width: 21px;
    height: 21px;
    fill: currentColor;
    opacity: 0.92;
}

.site-brand {
    font-family: 'Orbitron', sans-serif;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 0.2em;
}

.header-controls {
    display: flex;
    align-items: stretch;
    min-height: 30px;
    background: var(--jako-glass);
    border: 1px solid var(--jako-border);
    border-radius: 3px;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.08), 0 2px 8px rgba(0, 0, 0, 0.035);
}

.header-control {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0 0.8rem;
    min-height: 30px;
    color: inherit;
    background: transparent;
    border: 0;
    cursor: pointer;
    text-decoration: none;
    font-family: 'Orbitron', sans-serif;
    font-size: 10px;
    transition: background-color 0.2s ease, color 0.2s ease;
}

.header-control + .header-control {
    border-left: 1px solid var(--jako-border);
}

.header-control:hover {
    background: var(--jako-border);
}

.header-icon {
    display: block;
    width: 14px;
    height: 14px;
    color: currentColor;
    fill: currentColor;
    opacity: 0.76;
    transition: opacity 0.2s ease;
}

.theme-icon {
    fill: none;
    stroke: currentColor;
    stroke-width: 1.35;
    stroke-linecap: round;
    stroke-linejoin: round;
}

.theme-icon-sun {
    fill: currentColor;
    stroke: none;
}

/* =========================================================
   BLOCKS 2 & 3: TELEMETRY STRIPS (INFINITE TICKER)
   ========================================================= */
.telemetry-strip {
    width: 100%;
    height: 100%;
    background: var(--jako-glass);
    border-top: 1px solid var(--jako-border);
    border-bottom: 1px solid var(--jako-border);
    overflow: hidden;
    display: flex;
    align-items: center;
    position: relative;
    cursor: grab;
    backdrop-filter: blur(12px);
}

.telemetry-strip:active {
    cursor: grabbing;
}

.ticker-track {
    display: flex;
    white-space: nowrap;
    will-change: transform;
    font-family: 'Orbitron', monospace;
    font-size: 10px;
    letter-spacing: 0.15em;
    opacity: 0.85;
}

.ticker-item {
    padding: 0 1.5rem;
    display: inline-flex;
    align-items: center;
    gap: 0.4rem;
}

.ticker-item span {
    opacity: 0.5;
}

/* =========================================================
   MAIN VIEWPORT STAGE (CONTAINER FOR APPS)
   ========================================================= */
.jako-main-stage {
    position: relative;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

.app-viewport-container {
    width: 100%;
    height: 100%;
    position: absolute;
    inset: 0;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* =========================================================
   BLOCK 4: FOOTER BAR
   ========================================================= */
.jako-footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 1rem;
    background: var(--jako-glass);
    border-top: 1px solid var(--jako-border);
    backdrop-filter: blur(24px) saturate(125%);
    -webkit-backdrop-filter: blur(24px) saturate(125%);
    font-size: 11px;
}

.footer-cluster {
    display: flex;
    align-items: center;
    gap: 1rem;
}

.status-dot {
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background: var(--jako-text);
    box-shadow: 0 0 10px var(--jako-led);
}
'@
Write-ProjectFile -Path 'src/styles/hub.css' -Content $hubCss

# -------------------------------------------------------------------------
# 4. Modular External JS: src/scripts/hub.js
# -------------------------------------------------------------------------
Write-Status "[4/6] Generating external JavaScript logic (src/scripts/hub.js)..." Yellow
$hubJs = @'
/* =========================================================================
   JAKO ECOSYSTEM — HUB INTERACTION & TELEMETRY ENGINE
   ========================================================================= */

const $ = id => document.getElementById(id);

const toggleTheme = () => {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'white' : 'dark';
    document.documentElement.setAttribute('data-theme', newTheme);
    const themeBtn = $('theme-toggle');
    if (themeBtn) themeBtn.setAttribute('aria-pressed', String(newTheme === 'dark'));
};

function setupTelemetryStrip(stripId, tickerId) {
    const strip = $(stripId);
    const ticker = $(tickerId);
    if (!strip || !ticker) return;

    let isDown = false;
    let startX;
    let currentTranslate = 0;
    let autoMoveSpeed = -0.5;

    function animate() {
        if (!isDown) {
            currentTranslate += autoMoveSpeed;
            if (Math.abs(currentTranslate) >= ticker.scrollWidth / 2) {
                currentTranslate = 0;
            }
            ticker.style.transform = `translateX(${currentTranslate}px)`;
        }
        requestAnimationFrame(animate);
    }

    strip.addEventListener('mousedown', (e) => {
        isDown = true;
        startX = e.pageX - currentTranslate;
    });

    strip.addEventListener('mouseleave', () => { isDown = false; });
    strip.addEventListener('mouseup', () => { isDown = false; });

    strip.addEventListener('mousemove', (e) => {
        if (!isDown) return;
        e.preventDefault();
        currentTranslate = e.pageX - startX;
        ticker.style.transform = `translateX(${currentTranslate}px)`;
    });

    ticker.innerHTML += ticker.innerHTML;
    animate();
}

document.addEventListener('DOMContentLoaded', () => {
    setupTelemetryStrip('system-strip', 'system-ticker');
    setupTelemetryStrip('app-strip', 'app-ticker');

    const themeBtn = $('theme-toggle');
    if (themeBtn) {
        themeBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            toggleTheme();
        });
    }
});
'@
Write-ProjectFile -Path 'src/scripts/hub.js' -Content $hubJs

# -------------------------------------------------------------------------
# 5. HTML Shell Layout (4-Block Architecture linking external CSS/JS)
# -------------------------------------------------------------------------
Write-Status "[5/6] Generating HTML structure with external CSS and JS links..." Yellow
$mainHtml = @'
<!DOCTYPE html>
<html lang="en" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>JAKO — Biokinetic Transducer Ecosystem</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Plus+Jakarta+Sans:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./src/styles/hub.css">
</head>
<body>

    <div id="page-bg-overlay"></div>

    <!-- BLOCK 1: HEADER -->
    <header class="header-style-bar" id="top">
        <a class="site-brand-lockup" href="#top" aria-label="JAKO home">
            <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true">
                <g transform="rotate(180 50 50)">
                    <polygon points="80,20 20,20 30,35 70,35" />
                    <polygon points="50,42 58,50 50,58 42,50" />
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>
            <span class="site-brand">JAKO.LAB</span>
        </a>

        <nav class="header-controls">
            <a class="header-control" href="https://github.com/jalkn" target="_blank" rel="noopener noreferrer" title="GitHub">
                <svg class="header-icon" viewBox="0 0 24 24" aria-hidden="true">
                    <path fill="currentColor" d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729 1.205.085 1.84 1.237 1.84 1.237 1.07 1.834 2.807 1.304 3.492.997.108-.775.418-1.305.762-1.605-2.665-.3-5.467-1.334-5.467-5.93 0-1.31.468-2.38 1.235-3.22-.124-.303-.535-1.523.117-3.176 0 0 1.008-.322 3.3 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.29-1.552 3.295-1.23 3.295-1.23.655 1.653.244 2.873.12 3.176.77.84 1.233 1.91 1.233 3.22 0 4.61-2.807 5.625-5.48 5.92.43.372.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.286 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/>
                </svg>
            </a>
            <button class="header-control" id="theme-toggle" type="button" title="Toggle theme">
                <svg class="header-icon theme-icon" viewBox="0 0 24 24" aria-hidden="true">
                    <circle class="theme-icon-sun" cx="12" cy="12" r="3.5" />
                    <path class="theme-icon-rays" d="M12 2v2m0 16v2M4.93 4.93l1.42 1.42m11.3 11.3 1.42 1.42M2 12h2m16 0h2M4.93 19.07l1.42-1.42m11.3-11.3 1.42-1.42" />
                </svg>
            </button>
        </nav>
    </header>

    <!-- BLOCK 2: SYSTEM TELEMETRY STRIP (GLOBAL) -->
    <section class="telemetry-strip" id="system-strip">
        <div class="ticker-track" id="system-ticker">
            <div class="ticker-item">SYSTEM_READY <span>[AZIMUTH: 142.5°]</span></div>
            <div class="ticker-item">SUN_ELEVATION <span>[48.2°]</span></div>
            <div class="ticker-item">GLOBAL_DELTA <span>[Δ=1.04]</span></div>
            <div class="ticker-item">RESONANCE <span>[HOMEOSTASIS]</span></div>
            <div class="ticker-item">ACTIVE_MODULES <span>[9 APPS]</span></div>
            <div class="ticker-item">VAULT_COMMITS <span>[RELATIONAL_OK]</span></div>
        </div>
    </section>

    <!-- MAIN VIEWPORT STAGE (RESERVED FOR NEXT PHASE APP INJECTION) -->
    <main class="jako-main-stage">
        <div class="app-viewport-container" id="app-viewport">
            <!-- Stage reserved for App injection -->
        </div>
    </main>

    <!-- BLOCK 3: APP TELEMETRY STRIP (LOCAL) -->
    <section class="telemetry-strip" id="app-strip">
        <div class="ticker-track" id="app-ticker">
            <div class="ticker-item">APP <span>[READY]</span></div>
            <div class="ticker-item">COORDINATE <span>[WAITING FOR APP INJECTION]</span></div>
            <div class="ticker-item">TRANSDUCTION <span>[STANDBY]</span></div>
        </div>
    </section>

    <!-- BLOCK 4: FOOTER -->
    <footer class="jako-footer">
        <div class="footer-cluster">
            <div class="status-dot"></div>
            <span>ENGINE: OPERATIONAL</span>
            <span id="current-app-label" style="font-family: Orbitron; font-weight: 700; margin-left: 1rem;">HUB: READY</span>
        </div>

        <div class="footer-cluster">
            <button class="header-control" id="btn-settings">SETTINGS & MAPPING</button>
        </div>
    </footer>

    <script src="./src/scripts/hub.js" defer></script>
</body>
</html>
'@
Write-ProjectFile -Path 'public/index.html' -Content $mainHtml

# -------------------------------------------------------------------------
# 6. Root HTML Entry Point
# -------------------------------------------------------------------------
Write-Status "`n[6/6] Writing index.html at root..." Yellow
Write-ProjectFile -Path 'index.html' -Content $mainHtml

Write-Status "`n=========================================================" Green
Write-Status "JAKO MAIN HUB INITIALIZED — 4-BLOCK HYPERREALISTIC READY" Green
Write-Status "=========================================================" Green