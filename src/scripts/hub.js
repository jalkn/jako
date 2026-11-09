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