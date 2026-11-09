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