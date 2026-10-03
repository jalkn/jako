/* =========================================================
   PDF
   ========================================================= */

document.getElementById('download-pdf').addEventListener('click', () => {
    window.print();
});


/* =========================================================
   LANGUAGE SYSTEM
   ========================================================= */

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

        profileText:
            'Multidisciplinary designer and developer focused on digital experiences, visual systems, and creative technology. Combining formal training in visual arts with web development, UI/UX, automation, and computational experimentation. My work moves between image, design, code, media art, physical making, and emerging biokinetic research. I speak Spanish, English, and Italian.',

        education: 'Education',
        dataTechnologyResearch: 'Data / Technology / Research',
        jako: 'JAKO',
        startEnd: 'START - END',
        now: 'NOW',
        period: 'Period',
        oneMonth: '1 month',
        months: (count) => `${count} months`,
        platformLabels: {
            'Web App': 'Web App',
            'Mobile App': 'Mobile App',
            'Desktop App': 'Desktop App',
            'Smartwatch App': 'Smartwatch App',
            Physical: 'Physical',
            Digital: 'Digital'
        },

        fullStackDevelopment: 'Full Stack Development',
        online: '[Online]',

        runningCourse: 'Running Course',
        englishB2: 'English B2+',
        bachelorPlasticArts: 'Bachelor Plastic Arts',
        spanishVersion: 'Spanish',

        experience: 'Job Experience',

        fullStackDeveloper: 'Full Stack Developer',
        softwareDeveloper: 'Software Developer',
        rpaDeveloper: 'RPA Developer',

        graphicDesignerInstaller: 'Graphic Designer & Installer',
        signInstaller: 'Signs Installer',
        maintenance: 'Maintenance',
        storeperson: 'Storeperson',
        entrepreneurGraphicDesigner: 'Entrepreneur Graphic Designer',

        dark: 'DARK',
        light: 'LIGHT',
        enableDark: 'Enable dark mode',
        enableLight: 'Enable light mode',
        changeLanguage: 'Change language'
    },


    es: {
        pageTitle: 'Portafolio y CV - Alejandro Monsalve',

        profileText:
            'Diseñador y desarrollador multidisciplinario enfocado en experiencias digitales, sistemas visuales y tecnología creativa. Combino formación formal en artes visuales con desarrollo web, UI/UX, automatización y experimentación computacional. Mi trabajo transita entre imagen, diseño, código, arte medial, creación física e investigación biocinética emergente. Hablo español, inglés e italiano.',

        education: 'Educación',
        dataTechnologyResearch: 'Datos / Tecnología / Investigación',
        jako: 'JAKO',
        startEnd: 'INICIO - FIN',
        now: 'ACTUALIDAD',
        period: 'Periodo',
        oneMonth: '1 mes',
        months: (count) => `${count} meses`,
        platformLabels: {
            'Web App': 'Aplicación web',
            'Mobile App': 'Aplicación móvil',
            'Desktop App': 'Aplicación de escritorio',
            'Smartwatch App': 'Aplicación para smartwatch',
            Physical: 'Físico',
            Digital: 'Digital'
        },

        fullStackDevelopment: 'Desarrollo Full Stack',
        online: '[En línea]',

        runningCourse: 'Curso de running',
        englishB2: 'Inglés B2+',
        bachelorPlasticArts: 'Licenciatura en Artes Plásticas',
        spanishVersion: 'Español',

        experience: 'Experiencia laboral',

        fullStackDeveloper: 'Desarrollador Full Stack',
        softwareDeveloper: 'Desarrollador de Software',
        rpaDeveloper: 'Desarrollador RPA',

        graphicDesignerInstaller: 'Diseñador Gráfico e Instalador',
        signInstaller: 'Instalador de Señalización',
        maintenance: 'Mantenimiento',
        storeperson: 'Auxiliar de Almacén',
        entrepreneurGraphicDesigner: 'Diseñador Gráfico Emprendedor',

        dark: 'OSCURO',
        light: 'CLARO',
        enableDark: 'Activar modo oscuro',
        enableLight: 'Activar modo claro',
        changeLanguage: 'Cambiar idioma'
    },


    it: {
        pageTitle: 'Portfolio e CV - Alejandro Monsalve',

        profileText:
            'Designer e sviluppatore multidisciplinare, con focus su esperienze digitali, sistemi visivi e tecnologia creativa. Unisco una formazione formale nelle arti visive allo sviluppo web, UI/UX, automazione e sperimentazione computazionale. Il mio lavoro si muove tra immagine, design, codice, media art, creazione fisica e ricerca biocinetica emergente. Parlo spagnolo, inglese e italiano.',

        education: 'Istruzione',
        dataTechnologyResearch: 'Dati / Tecnologia / Ricerca',
        jako: 'JAKO',
        startEnd: 'INIZIO - FINE',
        now: 'OGGI',
        period: 'Periodo',
        oneMonth: '1 mese',
        months: (count) => `${count} mesi`,
        platformLabels: {
            'Web App': 'App web',
            'Mobile App': 'App mobile',
            'Desktop App': 'App desktop',
            'Smartwatch App': 'App per smartwatch',
            Physical: 'Fisico',
            Digital: 'Digitale'
        },

        fullStackDevelopment: 'Sviluppo Full Stack',
        online: '[Online]',

        runningCourse: 'Corso di corsa',
        englishB2: 'Inglese B2+',
        bachelorPlasticArts: 'Laurea in Arti Plastiche',
        spanishVersion: 'Spagnolo',

        experience: 'Esperienza lavorativa',

        fullStackDeveloper: 'Sviluppatore Full Stack',
        softwareDeveloper: 'Sviluppatore Software',
        rpaDeveloper: 'Sviluppatore RPA',

        graphicDesignerInstaller: 'Grafico e Installatore',
        signInstaller: 'Installatore di Insegne',
        maintenance: 'Manutenzione',
        storeperson: 'Magazziniere',
        entrepreneurGraphicDesigner: 'Grafico Imprenditore',

        dark: 'SCURO',
        light: 'CHIARO',
        enableDark: 'Attiva modalità scura',
        enableLight: 'Attiva modalità chiara',
        changeLanguage: 'Cambia lingua'
    }

};


/* =========================================================
   PROJECT DATA
   ========================================================= */

const createProjectRecord = ({ project, category, ...metadata }) => ({
    project,
    category,
    projectType: null,
    platform: null,
    launchMonth: null,
    launchYear: null,
    description: null,
    programmingLanguage: null,
    framework: null,
    deployment: null,
    cloud: null,
    zDialFA: null,
    biokineticDrop: null,
    jakoLayer: null,
    interaction: null,
    stage: null,
    assets: [],
    repository: null,
    liveUrl: null,
    featured: null,
    nextAction: null,
    ...metadata
});

const projects = [
    createProjectRecord({ project: 'ARDE', category: 'artProjects' }),
    createProjectRecord({ project: 'Artepanel', category: 'artProjects' }),
    createProjectRecord({
        project: 'Drawgap Studio',
        category: 'artProjects',
        projectType: 'studio',
        description: 'Multidisciplinary Art Producer · Drone Video & Photography · 3D Scan · Media Art · Generative Art'
    }),
    createProjectRecord({
        project: 'Fotopanel.art',
        category: 'artProjects',
        platform: ['Web App', 'Mobile App']
    }),
    createProjectRecord({
        project: 'NZ Trip',
        category: 'artProjects',
        location: 'Tauranga, NZ',
        period: '11/20 - 08/21',
        description: 'Aerial Photography · Drawing · Running · Performance · Land Art · Media Art · Generative Art'
    }),
    createProjectRecord({
        project: 'ARPA Solutions',
        category: 'dataTechnologyResearch',
        platform: ['Web App', 'Mobile App'],
        assets: [{ src: 'img/arpa.png', alt: 'ARPA Solutions', label: 'ARPA Solutions' }]
    }),
    createProjectRecord({
        project: 'KroxTrain',
        category: 'dataTechnologyResearch',
        liveUrl: 'http://jalkn.github.io/kroxTrain/',
        assets: [{ src: 'img/krox.png', alt: 'KroxTrain', label: 'KroxTrain' }]
    }),
    createProjectRecord({
        project: 'Zenergy.lab',
        category: 'dataTechnologyResearch',
        liveUrl: 'https://jalkn.github.io/zenErgy/',
        assets: [{ src: 'img/zenergy.png', alt: 'Zenergy.lab', label: 'Zenergy.lab' }]
    }),
    createProjectRecord({ project: 'Biopulsor', category: 'dataTechnologyResearch' }),
    createProjectRecord({ project: 'Z-Dial', category: 'dataTechnologyResearch' }),
    createProjectRecord({
        project: 'PULS App',
        category: 'dataTechnologyResearch',
        platform: ['Smartwatch App'],
        assets: [{ src: 'img/jd.png', alt: 'PULS App', label: 'PULS App' }]
    }),
    createProjectRecord({
        project: 'Pulsor App',
        category: 'dataTechnologyResearch',
        platform: ['Mobile App', 'Web App'],
        assets: [{ src: 'img/jd.png', alt: 'Pulsor App', label: 'Pulsor App' }]
    }),
    createProjectRecord({
        project: 'BioRush',
        category: 'dataTechnologyResearch',
        assets: [{
            src: 'src/data science/biorush/project1.png',
            alt: 'BioRush',
            label: 'BioRush'
        }]
    }),
    createProjectRecord({
        project: 'JAKO Ecosystem',
        category: 'jako',
        assets: [{ src: 'img/jd.png', alt: 'JAKO Ecosystem', label: 'JAKO Ecosystem' }]
    })
];


const calculateDurationInMonths = (launchMonth, launchYear, currentDate = new Date()) => {
    if (!launchMonth || !Number.isInteger(launchYear)) return null;

    const monthIndex = new Date(`${launchMonth} 1, ${launchYear}`).getMonth();
    if (Number.isNaN(monthIndex)) return null;

    const elapsedMonths =
        (currentDate.getFullYear() - launchYear) * 12 +
        currentDate.getMonth() - monthIndex;

    return elapsedMonths >= 0 ? elapsedMonths : null;
};


const projectCards = new Map();


const readProjectAssets = (gallery) => Array.from(
    gallery?.querySelectorAll('.certificate-item') || [],
    (item) => ({
        src: item.dataset.certificateSrc,
        alt: item.dataset.certificateAlt || item.querySelector('img')?.alt || '',
        label: item.querySelector('span')?.textContent.trim() || ''
    })
);


const createProjectGallery = (project) => {
    if (!project.assets.length) return [];

    const gallery = document.createElement('div');
    gallery.className = 'certification-preview certification-gallery';
    gallery.setAttribute('aria-label', `${project.project} project images`);

    project.assets.forEach((asset) => {
        const item = document.createElement('button');
        item.className = 'certificate-item';
        item.type = 'button';
        item.dataset.certificateSrc = asset.src;
        item.dataset.certificateAlt = asset.alt;
        item.setAttribute('aria-label', `View ${asset.alt}`);

        const image = document.createElement('img');
        image.src = asset.src;
        image.alt = asset.alt;

        const label = document.createElement('span');
        label.textContent = asset.label;
        item.append(image, label);
        gallery.append(item);
    });

    const preview = document.createElement('div');
    preview.className = 'certification-preview selected-certificate-preview';
    preview.setAttribute('aria-live', 'polite');
    preview.innerHTML = '<img src="" alt="">';

    return [gallery, preview];
};


const prepareProjectCard = (project, row, gallery, selectedPreview) => {
    if (!gallery) {
        const generatedParts = createProjectGallery(project);
        [gallery, selectedPreview] = generatedParts;
    } else {
        project.assets = readProjectAssets(gallery);
    }

    row.dataset.projectId = project.id;
    row.classList.add('project-entry');
    row.classList.toggle('certification-toggle', Boolean(gallery));
    row.replaceChildren();

    const details = document.createElement('span');
    details.className = 'checklist-value project-details';

    const title = document.createElement('strong');
    title.textContent = project.project;
    details.append(title);

    const platform = document.createElement('span');
    platform.className = 'project-platform';
    platform.hidden = !project.platform?.length;
    details.append(platform);

    const location = document.createElement('span');
    location.className = 'project-location';
    location.hidden = !project.location;
    if (project.location) location.textContent = `[${project.location}]`;
    details.append(location);

    const description = document.createElement('span');
    description.className = 'experience-tools project-description';
    description.hidden = !project.description;
    if (project.description) description.textContent = project.description;
    details.append(description);

    const date = document.createElement('span');
    date.className = 'checklist-label project-launch-meta';
    date.hidden = true;

    const period = document.createElement('span');
    period.className = 'checklist-label project-period';
    period.hidden = !project.period;

    row.append(details, date, period);

    if (gallery) {
        gallery.setAttribute('aria-label', `${project.project} project images`);
        gallery.querySelectorAll('.certificate-item').forEach((item) => {
            if (project.assets.length === 1) {
                item.dataset.certificateAlt = project.project;
                item.setAttribute('aria-label', `View ${project.project}`);
                item.querySelector('img').alt = project.project;
                item.querySelector('span').textContent = project.project;
            }
        });
        projectCards.set(project.id, { project, row, gallery, selectedPreview });
    } else {
        projectCards.set(project.id, { project, row, gallery: null, selectedPreview: null });
    }

    return [row, gallery, selectedPreview].filter(Boolean);
};


const renderProjectCards = () => {
    const existingRows = new Map(
        Array.from(document.querySelectorAll('.vision-card .checklist-row[data-project-id]'))
            .map((row) => [row.dataset.projectId, row])
    );

    projects.forEach((project) => {
        project.id = project.project.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/-$/, '');
        const row = existingRows.get(project.id);

        if (row) {
            const gallery = row.nextElementSibling?.classList.contains('certification-gallery')
                ? row.nextElementSibling
                : null;
            const selectedPreview = gallery?.nextElementSibling?.classList.contains('selected-certificate-preview')
                ? gallery.nextElementSibling
                : null;
            prepareProjectCard(project, row, gallery, selectedPreview);
        } else {
            const row = document.createElement('div');
            row.className = 'checklist-row';
            prepareProjectCard(project, row, null, null);
        }
    });

    const groups = new Map(Array.from(
        document.querySelectorAll('[data-project-category]'),
        (group) => [group.dataset.projectCategory, group]
    ));

    projects.forEach((project) => {
        const card = projectCards.get(project.id);
        groups.get(project.category).append(...[card.row, card.gallery, card.selectedPreview].filter(Boolean));
    });

    updateProjectMetadata();
};


const updateProjectMetadata = () => {
    const copy = translations[languages[languageIndex].code];

    projectCards.forEach(({ project, row }) => {
        const platform = row.querySelector('.project-platform');
        if (project.platform?.length) {
            platform.textContent = project.platform
                .map((value) => copy.platformLabels[value] || value)
                .join(' · ');
            platform.hidden = false;
        } else {
            platform.textContent = '';
            platform.hidden = true;
        }

        const date = row.querySelector('.project-launch-meta');
        const monthsElapsed = calculateDurationInMonths(project.launchMonth, project.launchYear);
        if (monthsElapsed === null) {
            date.textContent = '';
            date.hidden = true;
        } else {
            const launchMonth = new Date(`${project.launchMonth} 1, ${project.launchYear}`);
            const launchDateLabel = new Intl.DateTimeFormat(languages[languageIndex].code, {
                month: 'short',
                year: 'numeric'
            }).format(launchMonth);
            const duration = monthsElapsed === 1 ? copy.oneMonth : copy.months(monthsElapsed);
            date.textContent = `${launchDateLabel} · ${duration}`;
            date.hidden = false;
        }

        const period = row.querySelector('.project-period');
        period.textContent = project.period ? `${copy.period} · ${project.period}` : '';
        period.hidden = !project.period;
    });
};


/* =========================================================
   LANGUAGE STATE
   ========================================================= */

let languageIndex = 0;


/* =========================================================
   APPLY LANGUAGE
   ========================================================= */

const applyLanguage = () => {

    const language = languages[languageIndex];
    const copy = translations[language.code];

    document.documentElement.lang = language.code;

    document.querySelectorAll('[data-i18n]').forEach((element) => {
        element.textContent = copy[element.dataset.i18n];
    });

    updateProjectMetadata();

    languageToggle.textContent = language.label;

    languageToggle.setAttribute(
        'aria-label',
        `${copy.changeLanguage}, ${language.label}`
    );

    languageToggle.title =
        `${copy.changeLanguage}, ${language.label}`;


    const isDarkMode =
        document.body.classList.contains('dark-mode');

    themeToggle.textContent =
        isDarkMode ? copy.light : copy.dark;

    themeToggle.setAttribute(
        'aria-label',
        isDarkMode ? copy.enableLight : copy.enableDark
    );

    themeToggle.title =
        isDarkMode ? copy.enableLight : copy.enableDark;
};


renderProjectCards();
applyLanguage();


/* =========================================================
   THEME TOGGLE
   ========================================================= */

themeToggle.addEventListener('click', () => {

    const isDarkMode =
        document.body.classList.toggle('dark-mode');

    const copy =
        translations[languages[languageIndex].code];

    themeToggle.textContent =
        isDarkMode ? copy.light : copy.dark;

    themeToggle.setAttribute(
        'aria-pressed',
        String(isDarkMode)
    );

    themeToggle.setAttribute(
        'aria-label',
        isDarkMode ? copy.enableLight : copy.enableDark
    );

    themeToggle.title =
        isDarkMode ? copy.enableLight : copy.enableDark;
});


/* =========================================================
   LANGUAGE TOGGLE
   ========================================================= */

languageToggle.addEventListener('click', () => {

    languageIndex =
        (languageIndex + 1) % languages.length;

    applyLanguage();
});


/* =========================================================
   CERTIFICATION TOGGLES
   ========================================================= */

document
    .querySelectorAll('.certification-toggle')
    .forEach((toggle) => {

        toggle.addEventListener('click', () => {

            const preview =
                toggle.nextElementSibling;

            if (preview) {

                const isOpen =
                    preview.classList.toggle('is-open');

                if (
                    !isOpen &&
                    preview.classList.contains('certification-gallery')
                ) {

                    const selectedPreview =
                        preview.nextElementSibling;

                    if (
                        selectedPreview &&
                        selectedPreview.classList.contains(
                            'selected-certificate-preview'
                        )
                    ) {

                        selectedPreview.classList.remove('is-open');

                        selectedPreview
                            .querySelector('img')
                            .removeAttribute('src');

                        selectedPreview
                            .querySelector('img')
                            .alt = '';
                    }
                }
            }
        });
    });


/* =========================================================
   CERTIFICATE SELECTION
   ========================================================= */

document
    .querySelectorAll('.certification-gallery .certificate-item')
    .forEach((certificate) => {

        certificate.addEventListener('click', () => {

            const selectedCertificatePreview =
                certificate
                    .closest('.certification-gallery')
                    .nextElementSibling;

            const selectedCertificateImage =
                selectedCertificatePreview.querySelector('img');

            selectedCertificateImage.src =
                certificate.dataset.certificateSrc;

            selectedCertificateImage.alt =
                certificate.dataset.certificateAlt;

            selectedCertificatePreview.classList.add('is-open');
        });
    });
