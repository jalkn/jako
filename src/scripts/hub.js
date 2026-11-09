/* =========================================================================
   JAKO ECOSYSTEM — HUB INTERACTION & CENTER SOLAR AZIMUTH VECTOR ENGINE
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
// CENTER ROTATING SOLAR AZIMUTH VECTOR RENDERER
// -------------------------------------------------------------------------
function initCenterAzimuthEngine() {
    const targetAzimuth = 142.5; // Degree angle
    const svgOverlay = $('center-azimuth-svg');
    if (!svgOverlay) return;

    function renderCenterAzimuth() {
        const stage = $('main-stage');
        if (!stage) return;

        const width = stage.clientWidth;
        const height = stage.clientHeight;
        const cx = width / 2;
        const cy = height / 2;
        const radius = Math.min(cx, cy) * 0.75;

        // Convert angle (0° = North = straight up) to radians
        const angleRad = (targetAzimuth - 90) * (Math.PI / 180);
        const endX = cx + radius * Math.cos(angleRad);
        const endY = cy + radius * Math.sin(angleRad);

        svgOverlay.innerHTML = `
            <g transform="translate(0,0)">
                <!-- Outer Compass Ring -->
                <circle cx="${cx}" cy="${cy}" r="${radius}" stroke="rgba(255,255,255,0.15)" stroke-width="1" stroke-dasharray="2 4" fill="none" />
                <circle cx="${cx}" cy="${cy}" r="${radius * 0.5}" stroke="rgba(255,255,255,0.08)" stroke-width="1" fill="none" />

                <!-- Cardinal Pole Labels -->
                <text x="${cx}" y="${cy - radius - 10}" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle" font-family="Orbitron">N</text>
                <text x="${cx + radius + 15}" y="${cy + 4}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="start" font-family="Orbitron">E</text>
                <text x="${cx}" y="${cy + radius + 20}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle" font-family="Orbitron">S</text>
                <text x="${cx - radius - 15}" y="${cy + 4}" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="end" font-family="Orbitron">W</text>

                <!-- Center Point Nucleus -->
                <circle cx="${cx}" cy="${cy}" r="3" fill="#ffffff" />
                
                <!-- Rotating Azimuth Line Vector from Center -->
                <line x1="${cx}" y1="${cy}" x2="${endX}" y2="${endY}" stroke="#ffffff" stroke-width="1.5" stroke-dasharray="4 2" />
                <circle cx="${endX}" cy="${endY}" r="4" fill="#ffffff" />

                <!-- Azimuth Coordinate Tag -->
                <text x="${endX + 10}" y="${endY + 4}" fill="#ffffff" font-size="10" font-weight="700" font-family="Orbitron">
                    AZIMUTH ${targetAzimuth}° N
                </text>
            </g>
        `;
    }

    renderCenterAzimuth();
    window.addEventListener('resize', renderCenterAzimuth);
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

    // Event listener for interactive AZIMUTH ticker click
    const azimuthItem = $('azimuth-ticker-item');
    if (azimuthItem) {
        azimuthItem.addEventListener('click', (e) => {
            e.stopPropagation();
            toggleAzimuthView();
        });
    }

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