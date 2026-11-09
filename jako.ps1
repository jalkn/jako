#!/usr/bin/env pwsh
# =========================================================================
# JAKO CORE — MAIN ECOSYSTEM HUB GENERATOR
# File: jako.ps1 | Architecture, Layout & Interactive Azimuth Manifest
# Output: package.json, astro.config.mjs, src/styles/hub.css, 
#         src/scripts/hub.js, public/index.html, index.html
# Version: 1.5.0 | Updated: 2026-11-09
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
| - Biokinetic Δ   |       | - Clean Stage (Def)|           | - Action/Vector   |
| - Solar Azimuth  |       | - 60fps SVG Vector|            | - Sets / Reps     |
| - Vault Database |       | - Grass / LandArt |            | - Telemetry Ticker|
+------------------+       +-------------------+            +-------------------+

===========================================================================
02. LAYOUT TOPOLOGY & BLOCK SCHEMA (4-BLOCK HYPERREALISTIC INTERFACE)
===========================================================================

+-------------------------------------------------------------------------+
| BLOCK 1: HEADER BAR (Sun / Brand Identity Only)                         |
+-------------------------------------------------------------------------+
| BLOCK 2: SYSTEM TELEMETRY STRIP (Interactive Click on AZIMUTH [142.5°]) |
+-------------------------------------------------------------------------+
|                                                                         |
|                BLOCK 3: MAIN VIEWPORT STAGE                             |
|       (Default Clean Dashboard + On-Demand 60fps Motion Azimuth Vector) |
|                                                                         |
+-------------------------------------------------------------------------+
| BLOCK 4: APP TELEMETRY STRIP (Infinite Loop / Drag: Local App Metrics)  |
+-------------------------------------------------------------------------+
| BLOCK 5: FOOTER (Right-Aligned Controls: [LAND ART] + [Theme Toggle])   |
+-------------------------------------------------------------------------+
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
  "version": "1.5.0",
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
   JAKO ECOSYSTEM — HYPERREALISTIC GLOBAL STYLES & CENTER AZIMUTH OVERLAY
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
    transition: background 0.5s ease, opacity 0.5s ease;
}

body.grass-bg-active #page-bg-overlay {
    background: url('img/grass.png') center center / cover no-repeat !important;
}

/* =========================================================
   BLOCK 1: HEADER BAR (CLEAN & MINIMALIST)
   ========================================================= */
.header-style-bar {
    display: flex;
    align-items: center;
    justify-content: flex-start;
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

/* =========================================================
   BLOCKS 2 & 4: TELEMETRY STRIPS (INFINITE TICKER)
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
    z-index: 90;
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

.ticker-item.interactive-azimuth {
    cursor: pointer;
    transition: color 0.2s ease;
}

.ticker-item.interactive-azimuth:hover {
    color: #ffffff;
    text-shadow: 0 0 8px rgba(255, 255, 255, 0.8);
}

.ticker-item span {
    opacity: 0.5;
}

/* =========================================================
   BLOCK 3: MAIN VIEWPORT STAGE & CENTER AZIMUTH OVERLAY
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

.center-azimuth-overlay {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
    z-index: 50;
    opacity: 0;
    transform: scale(0.95);
    transition: opacity 0.4s ease, transform 0.4s cubic-bezier(0.2, 0, 0, 1);
}

.center-azimuth-overlay.is-active {
    opacity: 1;
    transform: scale(1);
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
   BLOCK 5: FOOTER BAR & RIGHT CONTROL CLUSTER
   ========================================================= */
.jako-footer {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    padding: 0 1rem;
    background: var(--jako-glass);
    border-top: 1px solid var(--jako-border);
    backdrop-filter: blur(24px) saturate(125%);
    -webkit-backdrop-filter: blur(24px) saturate(125%);
    font-size: 11px;
    z-index: 100;
}

.footer-cluster {
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.footer-btn-group {
    display: flex;
    align-items: center;
    background: var(--jako-glass);
    border: 1px solid var(--jako-border);
    border-radius: 3px;
    overflow: hidden;
}

.header-control {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 30px;
    padding: 0 0.8rem;
    color: inherit;
    background: transparent;
    border: 0;
    cursor: pointer;
    text-decoration: none;
    font-family: 'Orbitron', sans-serif;
    font-size: 10px;
    transition: background-color 0.2s ease, color 0.2s ease;
}

.header-control:hover {
    background: var(--jako-border);
}

.footer-btn-group .header-control + .header-control {
    border-left: 1px solid var(--jako-border);
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
'@
Write-ProjectFile -Path 'src/styles/hub.css' -Content $hubCss

# -------------------------------------------------------------------------
# 4. Modular External JS: src/scripts/hub.js
# -------------------------------------------------------------------------
Write-Status "[4/6] Generating external JavaScript logic (src/scripts/hub.js)..." Yellow
$hubJs = @'
/* =========================================================================
   JAKO ECOSYSTEM — HUB INTERACTION & 60FPS ANIMATED AZIMUTH VECTOR ENGINE
   ========================================================================= */

const $ = id => document.getElementById(id);

const toggleTheme = () => {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'white' : 'dark';
    document.documentElement.setAttribute('data-theme', newTheme);
    const themeBtn = $('theme-toggle');
    if (themeBtn) themeBtn.setAttribute('aria-pressed', String(newTheme === 'dark'));
};

const toggleGrassBackground = () => {
    document.body.classList.toggle('grass-bg-active');
    const grassBtn = $('btn-grass-toggle');
    if (grassBtn) {
        const isActive = document.body.classList.contains('grass-bg-active');
        grassBtn.style.background = isActive ? 'var(--jako-border)' : 'transparent';
    }
};

// Setup Drag & Infinite Loop for Telemetry Strips
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

// -------------------------------------------------------------------------
// CENTER ROTATING SOLAR AZIMUTH VECTOR RENDERER (FLUID 60FPS MOTION)
// -------------------------------------------------------------------------
let baseAzimuth = 142.5;
let animationFrameId = null;

function initCenterAzimuthEngine() {
    const svgOverlay = $('center-azimuth-svg');
    if (!svgOverlay) return;

    function renderFrame(timestamp) {
        const stage = $('main-stage');
        if (stage && svgOverlay.classList.contains('is-active')) {
            const width = stage.clientWidth;
            const height = stage.clientHeight;
            const cx = width / 2;
            const cy = height / 2;
            const radius = Math.min(cx, cy) * 0.38;

            // Smooth sine-wave motion interpolation using high-precision timestamp
            const timeInSeconds = timestamp / 1000;
            const liveAzimuth = baseAzimuth + (Math.sin(timeInSeconds * 1.5) * 1.8);

            // Convert angle (0° = North = straight up) to radians
            const angleRad = (liveAzimuth - 90) * (Math.PI / 180);
            const endX = cx + radius * Math.cos(angleRad);
            const endY = cy + radius * Math.sin(angleRad);

            svgOverlay.innerHTML = `
                <g transform="translate(0,0)">
                    <!-- Outer Compass Ring -->
                    <circle cx="${cx}" cy="${cy}" r="${radius}" stroke="rgba(255,255,255,0.18)" stroke-width="1" stroke-dasharray="3 4" fill="none" />
                    <circle cx="${cx}" cy="${cy}" r="${radius * 0.5}" stroke="rgba(255,255,255,0.08)" stroke-width="1" fill="none" />

                    <!-- Cardinal Pole Labels -->
                    <text x="${cx}" y="${cy - radius - 12}" fill="rgba(255,255,255,0.7)" font-size="10" text-anchor="middle" font-family="Orbitron">N</text>
                    <text x="${cx + radius + 16}" y="${cy + 4}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="start" font-family="Orbitron">E</text>
                    <text x="${cx}" y="${cy + radius + 22}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle" font-family="Orbitron">S</text>
                    <text x="${cx - radius - 16}" y="${cy + 4}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="end" font-family="Orbitron">W</text>

                    <!-- Center Point Nucleus -->
                    <circle cx="${cx}" cy="${cy}" r="3" fill="#ffffff" />
                    
                    <!-- Rotating Azimuth Vector Line -->
                    <line x1="${cx}" y1="${cy}" x2="${endX}" y2="${endY}" stroke="#ffffff" stroke-width="1.5" stroke-dasharray="4 2" />
                    <circle cx="${endX}" cy="${endY}" r="4" fill="#ffffff" />

                    <!-- Azimuth Coordinate Tag -->
                    <text x="${endX + 12}" y="${endY + 4}" fill="#ffffff" font-size="10" font-weight="700" font-family="Orbitron">
                        AZIMUTH ${liveAzimuth.toFixed(1)}° N
                    </text>
                </g>
            `;
        }
        animationFrameId = requestAnimationFrame(renderFrame);
    }

    if (animationFrameId) cancelAnimationFrame(animationFrameId);
    animationFrameId = requestAnimationFrame(renderFrame);
}

function toggleAzimuthView() {
    const svgOverlay = $('center-azimuth-svg');
    if (svgOverlay) {
        svgOverlay.classList.toggle('is-active');
    }
}

document.addEventListener('DOMContentLoaded', () => {
    setupTelemetryStrip('system-strip', 'system-ticker');
    setupTelemetryStrip('app-strip', 'app-ticker');
    initCenterAzimuthEngine();

    // Delegation listener for interactive AZIMUTH ticker item clicks
    document.body.addEventListener('click', (e) => {
        const item = e.target.closest('#azimuth-ticker-item, .interactive-azimuth');
        if (item) {
            e.stopPropagation();
            toggleAzimuthView();
        }
    });

    const themeBtn = $('theme-toggle');
    if (themeBtn) {
        themeBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            toggleTheme();
        });
    }

    const grassBtn = $('btn-grass-toggle');
    if (grassBtn) {
        grassBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            toggleGrassBackground();
        });
    }
});
'@
Write-ProjectFile -Path 'src/scripts/hub.js' -Content $hubJs

# -------------------------------------------------------------------------
# 5. HTML Shell Layout (4-Block Architecture linking external CSS/JS)
# -------------------------------------------------------------------------
Write-Status "[5/6] Generating HTML structure with Center Azimuth Vector Stage..." Yellow
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

    <!-- BLOCK 1: HEADER (CLEAN BRANDING ONLY) -->
    <header class="header-style-bar" id="top">
        <a class="site-brand-lockup" href="#top" aria-label="JAKO home">
            <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true">
                <g transform="rotate(180 50 50)">
                    <polygon points="80,20 20,20 30,35 70,35" />
                    <polygon points="50,42 58,50 50,58 42,50" />
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>
            <span class="site-brand">JAKO</span>
        </a>
    </header>

    <!-- BLOCK 2: SYSTEM TELEMETRY STRIP (GLOBAL - CLICKABLE AZIMUTH) -->
    <section class="telemetry-strip" id="system-strip">
        <div class="ticker-track" id="system-ticker">
            <div class="ticker-item interactive-azimuth" id="azimuth-ticker-item">AZIMUTH <span>[142.5°]</span></div>
            <div class="ticker-item">ELEVATION <span>[48.2°]</span></div>
            <div class="ticker-item">POSITION <span>[Δ=1.04]</span></div>
        </div>
    </section>

    <!-- BLOCK 3: MAIN VIEWPORT STAGE -->
    <main class="jako-main-stage" id="main-stage">
        <!-- SVG Vector Canvas for Center-Rotating Solar Azimuth (Hidden by default) -->
        <svg class="center-azimuth-overlay" id="center-azimuth-svg"></svg>

        <div class="app-viewport-container" id="app-viewport">
            <!-- Stage reserved for App injection -->
        </div>
    </main>

    <!-- BLOCK 4: APP TELEMETRY STRIP (LOCAL) -->
    <section class="telemetry-strip" id="app-strip">
        <div class="ticker-track" id="app-ticker">
            <div class="ticker-item">APP <span>[READY]</span></div>
            <div class="ticker-item">COORDINATE <span>[WAITING FOR APP INJECTION]</span></div>
            <div class="ticker-item">TRANSDUCTION <span>[STANDBY]</span></div>
        </div>
    </section>

    <!-- BLOCK 5: FOOTER (RIGHT-ALIGNED CONTROLS) -->
    <footer class="jako-footer">
        <div class="footer-cluster">
            <div class="footer-btn-group">
                <button class="header-control" id="btn-grass-toggle" type="button" title="Toggle Grass Background">LAND ART</button>
                <button class="header-control" id="theme-toggle" type="button" title="Toggle theme">
                    <svg class="header-icon theme-icon" viewBox="0 0 24 24" aria-hidden="true">
                        <circle class="theme-icon-sun" cx="12" cy="12" r="3.5" />
                        <path class="theme-icon-rays" d="M12 2v2m0 16v2M4.93 4.93l1.42 1.42m11.3 11.3 1.42 1.42M2 12h2m16 0h2M4.93 19.07l1.42-1.42m11.3-11.3 1.42-1.42" />
                    </svg>
                </button>
            </div>
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
Write-Status "JAKO MAIN HUB INITIALIZED — CLEAN MINIMALIST STAGE READY" Green
Write-Status "=========================================================" Green