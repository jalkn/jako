document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});

document.querySelectorAll('.certification-toggle').forEach((toggle) => {
    toggle.addEventListener('click', () => {
        const preview = toggle.nextElementSibling;

        if (preview) {
            preview.style.display =
                preview.style.display === 'block' ? 'none' : 'block';
        }
    });
});