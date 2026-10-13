/* SUN — Theme controller */
const themeToggle = document.getElementById('theme-toggle');

themeToggle.addEventListener('click', () => {
    const isDark = document.body.classList.toggle('dark-mode');
    themeToggle.setAttribute('aria-pressed', String(isDark));
});