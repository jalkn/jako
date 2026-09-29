document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});

const languageToggle = document.getElementById('language-toggle');
const themeToggle = document.getElementById('theme-toggle');
const languages = [
    { code: 'en', label: 'ENGLISH' },
    { code: 'es', label: 'ESPAÑOL' },
    { code: 'it', label: 'ITALIANO' }
];
const translations = {
    en: {
        pageTitle: 'Portfolio & CV - Alejandro Monsalve',
        profileText: 'UI/UX Designer specialized in high-performance frontend interfaces, design systems, and component architecture. Blending formal visual arts background with technical mastery in web standards. Fluent in Spanish, English, and Italian.',
        education: 'Education', startEnd: 'START - END', now: 'NOW', fullStackDevelopment: 'Full Stack Development', online: '[Online]',
        runningCourse: 'Running Course', englishB2: 'English B2+', bachelorPlasticArts: 'Bachelor Plastic Arts', spanishVersion: 'Spanish',
        experience: 'Experience', fullStackDeveloper: 'Full Stack Developer', softwareDeveloper: 'Software Developer', rpaDeveloper: 'RPA Developer',
        graphicDesignerInstaller: 'Graphic Designer & Installer', signInstaller: 'Signs Installer', maintenance: 'Maintenance', storeperson: 'Storeperson', entrepreneurGraphicDesigner: 'Entrepreneur Graphic Designer',
        dark: 'DARK', light: 'LIGHT', enableDark: 'Enable dark mode', enableLight: 'Enable light mode', changeLanguage: 'Change language'
    },
    es: {
        pageTitle: 'Portafolio y CV - Alejandro Monsalve',
        profileText: 'Diseñador UI/UX especializado en interfaces frontend de alto rendimiento, sistemas de diseño y arquitectura de componentes. Combino una formación formal en artes visuales con dominio técnico de los estándares web. Domino español, inglés e italiano.',
        education: 'Educación', startEnd: 'INICIO - FIN', now: 'ACTUALIDAD', fullStackDevelopment: 'Desarrollo Full Stack', online: '[En línea]',
        runningCourse: 'Curso de running', englishB2: 'Inglés B2+', bachelorPlasticArts: 'Licenciatura en Artes Plásticas', spanishVersion: 'Español',
        experience: 'Experiencia', fullStackDeveloper: 'Desarrollador Full Stack', softwareDeveloper: 'Desarrollador de Software', rpaDeveloper: 'Desarrollador RPA',
        graphicDesignerInstaller: 'Diseñador Gráfico e Instalador', signInstaller: 'Instalador de Señalización', maintenance: 'Mantenimiento', storeperson: 'Auxiliar de Almacén', entrepreneurGraphicDesigner: 'Diseñador Gráfico Emprendedor',
        dark: 'OSCURO', light: 'CLARO', enableDark: 'Activar modo oscuro', enableLight: 'Activar modo claro', changeLanguage: 'Cambiar idioma'
    },
    it: {
        pageTitle: 'Portfolio e CV - Alejandro Monsalve',
        profileText: 'Designer UI/UX specializzato in interfacce frontend ad alte prestazioni, sistemi di design e architettura dei componenti. Unisco una formazione formale nelle arti visive alla padronanza tecnica degli standard web. Parlo spagnolo, inglese e italiano.',
        education: 'Istruzione', startEnd: 'INIZIO - FINE', now: 'OGGI', fullStackDevelopment: 'Sviluppo Full Stack', online: '[Online]',
        runningCourse: 'Corso di corsa', englishB2: 'Inglese B2+', bachelorPlasticArts: 'Laurea in Arti Plastiche', spanishVersion: 'Spagnolo',
        experience: 'Esperienza', fullStackDeveloper: 'Sviluppatore Full Stack', softwareDeveloper: 'Sviluppatore Software', rpaDeveloper: 'Sviluppatore RPA',
        graphicDesignerInstaller: 'Grafico e Installatore', signInstaller: 'Installatore di Insegne', maintenance: 'Manutenzione', storeperson: 'Magazziniere', entrepreneurGraphicDesigner: 'Grafico Imprenditore',
        dark: 'SCURO', light: 'CHIARO', enableDark: 'Attiva modalità scura', enableLight: 'Attiva modalità chiara', changeLanguage: 'Cambia lingua'
    }
};
let languageIndex = 0;

const applyLanguage = () => {
    const language = languages[languageIndex];
    const copy = translations[language.code];

    document.documentElement.lang = language.code;
    document.querySelectorAll('[data-i18n]').forEach((element) => {
        element.textContent = copy[element.dataset.i18n];
    });
    languageToggle.textContent = language.label;
    languageToggle.setAttribute('aria-label', `${copy.changeLanguage}, ${language.label}`);
    languageToggle.title = `${copy.changeLanguage}, ${language.label}`;

    const isDarkMode = document.body.classList.contains('dark-mode');
    themeToggle.textContent = isDarkMode ? copy.light : copy.dark;
    themeToggle.setAttribute('aria-label', isDarkMode ? copy.enableLight : copy.enableDark);
    themeToggle.title = isDarkMode ? copy.enableLight : copy.enableDark;
};

themeToggle.addEventListener('click', () => {
    const isDarkMode = document.body.classList.toggle('dark-mode');
    const copy = translations[languages[languageIndex].code];

    themeToggle.textContent = isDarkMode ? copy.light : copy.dark;
    themeToggle.setAttribute('aria-pressed', String(isDarkMode));
    themeToggle.setAttribute('aria-label', isDarkMode ? copy.enableLight : copy.enableDark);
    themeToggle.title = isDarkMode ? copy.enableLight : copy.enableDark;
});

languageToggle.addEventListener('click', () => {
    languageIndex = (languageIndex + 1) % languages.length;
    applyLanguage();
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
