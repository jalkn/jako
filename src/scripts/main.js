document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});

document.querySelectorAll('.certification-toggle').forEach((toggle) => {
    toggle.addEventListener('click', () => {
        const preview = toggle.nextElementSibling;

        if (preview) {
            const isOpen = preview.classList.toggle('is-open');

            if (!isOpen && preview.classList.contains('certification-gallery')) {
                const selectedPreview = preview.nextElementSibling;

                if (selectedPreview.classList.contains('selected-certificate-preview')) {
                    selectedPreview.classList.remove('is-open');
                    selectedPreview.querySelector('img').removeAttribute('src');
                    selectedPreview.querySelector('img').alt = '';
                }
            }
        }
    });
});

document.querySelectorAll('.certification-gallery .certificate-item').forEach((certificate) => {
    certificate.addEventListener('click', () => {
        const selectedCertificatePreview = certificate.closest('.certification-gallery').nextElementSibling;
        const selectedCertificateImage = selectedCertificatePreview.querySelector('img');

        selectedCertificateImage.src = certificate.dataset.certificateSrc;
        selectedCertificateImage.alt = certificate.dataset.certificateAlt;
        selectedCertificatePreview.classList.add('is-open');
    });
});
