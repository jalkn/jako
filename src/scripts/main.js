document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});

document.querySelectorAll('.certification-toggle').forEach((toggle) => {
    toggle.addEventListener('click', () => {
        const preview = toggle.nextElementSibling;

        if (preview) {
            const isOpen = preview.classList.toggle('is-open');

            if (!isOpen && preview.classList.contains('full-stack-gallery')) {
                const selectedPreview = preview.nextElementSibling;

                if (selectedPreview.classList.contains('full-stack-selected-certificate')) {
                    selectedPreview.classList.remove('is-open');
                    selectedPreview.querySelector('img').removeAttribute('src');
                    selectedPreview.querySelector('img').alt = '';
                }
            }
        }
    });
});

const selectedCertificatePreview = document.querySelector('.full-stack-selected-certificate');
const selectedCertificateImage = selectedCertificatePreview.querySelector('img');

document.querySelectorAll('.full-stack-gallery .certificate-item').forEach((certificate) => {
    certificate.addEventListener('click', () => {
        selectedCertificateImage.src = certificate.dataset.certificateSrc;
        selectedCertificateImage.alt = certificate.dataset.certificateAlt;
        selectedCertificatePreview.classList.add('is-open');
    });
});
