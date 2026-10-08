/* =========================================================
   PDF
   ========================================================= */

document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});


/* =========================================================
   THEME TOGGLE
   ========================================================= */

const themeToggle = document.getElementById('theme-toggle');

themeToggle.addEventListener('click', () => {

    const isDarkMode =
        document.body.classList.toggle('dark-mode');

    themeToggle.setAttribute(
        'aria-pressed',
        String(isDarkMode)
    );

    themeToggle.setAttribute(
        'aria-label',
        isDarkMode ? 'Enable light mode' : 'Enable dark mode'
    );

    themeToggle.title =
        isDarkMode ? 'Enable light mode' : 'Enable dark mode';
});



/* =========================================================
   GALLERY INTERACTIONS
   ========================================================= */

document.querySelectorAll('.media-toggle').forEach((toggle) => {
    toggle.addEventListener('click', () => {
        const gallery = toggle.nextElementSibling;

        if (!gallery?.classList.contains('media-gallery')) return;

        const isOpen = gallery.classList.toggle('is-open');
        toggle.setAttribute('aria-expanded', String(isOpen));

        if (!isOpen) {
            const preview = gallery.nextElementSibling;
            const image = preview?.querySelector('img');

            if (preview?.classList.contains('selected-media-preview')) {
                preview.classList.remove('is-open');
                image?.removeAttribute('src');
                if (image) image.alt = '';
            }
        }
    });
});

document.querySelectorAll('.media-gallery .media-item').forEach((media) => {
    media.addEventListener('click', (event) => {
        event.stopPropagation();

        const gallery = media.closest('.media-gallery');
        const preview = gallery?.nextElementSibling;
        const image = preview?.querySelector('img');

        if (!preview?.classList.contains('selected-media-preview') || !image) return;

        image.src = media.dataset.mediaSrc;
        image.alt = media.dataset.mediaAlt || '';
        preview.classList.add('is-open');
    });
});