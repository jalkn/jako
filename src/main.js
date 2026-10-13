/* =========================================================
   SUN — Theme Controller
   ========================================================= */

const themeToggle = document.getElementById('theme-toggle');
const rootElement = document.documentElement;

function setTheme(theme) {
    const isDark = theme === 'dark';

    rootElement.dataset.theme = isDark ? 'dark' : 'light';
    themeToggle.setAttribute('aria-pressed', String(isDark));
}

themeToggle?.addEventListener('click', () => {
    const currentTheme = rootElement.dataset.theme || 'light';
    setTheme(currentTheme === 'dark' ? 'light' : 'dark');
});