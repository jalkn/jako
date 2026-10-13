
        /**
         * JAKO DATABASE - Centralized Entity Registry
         * Canonical Backend Source of Truth
         */
        const JAKO_DATABASE = {
            metadata: {
                name: "JAKO",
                model: "MASTER_ENTITY_MODEL",
                version: "1.0",
                architecture: "SUN_BODY_SPIRIT"
            },
            entities: [
                // ---------------------------------------------------------
                // DROPS - EDUCATION
                // ---------------------------------------------------------
                {
                    ID: "drop-edu-01",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Full Stack Development",
                    DESCRIPTION: "W3Schools",
                    DATE: "12/23",
                    PLACE: "Online",
                    MEDIA: [
                        { src: "src/certify/sqlmedia.png", label: "SQL" },
                        { src: "src/certify/pythonmedia.png", label: "Python" },
                        { src: "src/certify/pandasmedia.png", label: "Pandas" },
                        { src: "src/certify/djangomedia.png", label: "Django" },
                        { src: "src/certify/AWScloudmedia.png", label: "AWS Cloud" },
                        { src: "src/certify/htmlmedia.png", label: "HTML" }
                    ],
                    TOOLS: ["SQL", "Python", "Pandas", "Django", "AWS", "HTML"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-edu-02",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Fine Arts Recognition Level 7",
                    DESCRIPTION: "NZQA",
                    DATE: "12/22",
                    PLACE: "Auckland, NZ",
                    MEDIA: [
                        { src: "src/certify/NZQA.png", label: "Degree" }
                    ],
                    TOOLS: [],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-edu-03",
                    CLASS: "DROP",
                    TYPE: "education",
                    WORD: "Plastic Arts Educator Degree",
                    DESCRIPTION: "University of Antioquia",
                    DATE: "03/15",
                    PLACE: "Medellín, COL",
                    MEDIA: [
                        { src: "src/certify/degreemedia.png", label: "English" },
                        { src: "src/certify/certificadoGrado.png", label: "Spanish" }
                    ],
                    TOOLS: [],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // DROPS - EXPERIENCE
                // ---------------------------------------------------------
                {
                    ID: "drop-exp-01",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Celsia S.A. E.S.P.",
                    DESCRIPTION: "Software Developer",
                    DATE: "03/25 - 10/25",
                    PLACE: "Medellín, COL",
                    MEDIA: [],
                    TOOLS: ["Python", "SQL", "Pandas", "Git"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-02",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Synthesis Consulting S.A.S.",
                    DESCRIPTION: "RPA Developer",
                    DATE: "10/24 - 02/25",
                    PLACE: "Medellín, COL",
                    MEDIA: [],
                    TOOLS: ["Python", "PowerShell", "Bash"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-03",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Sharp Signs",
                    DESCRIPTION: "Graphic Designer & Installer",
                    DATE: "06/22 - 09/23",
                    PLACE: "Auckland, NZ",
                    MEDIA: [],
                    TOOLS: ["CNC Router Cut", "Vinyl Computer Cut", "Lamination", "Wrapping"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-04",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "Sign Creations NZ",
                    DESCRIPTION: "Signs Installer",
                    DATE: "04/21 - 05/22",
                    PLACE: "Mt Maunganui, NZ",
                    MEDIA: [],
                    TOOLS: ["CNC Router Cut", "Vinyl Computer Cut", "Inkjet Print", "Lamination"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "drop-exp-09",
                    CLASS: "DROP",
                    TYPE: "experience",
                    WORD: "ediciones&formas",
                    DESCRIPTION: "Graphic Designer",
                    DATE: "05/06 - 07/17",
                    PLACE: "Medellín, COL",
                    MEDIA: [
                        { src: "src/drop/eyf/1.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/2.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/3.JPG", label: "Digital Printing" },
                        { src: "src/drop/eyf/4.JPG", label: "Graphic Design" },
                        { src: "src/drop/eyf/5.JPG", label: "Graphic Design"}
                    ],
                    TOOLS: ["Corel Draw", "Illustrator", "Photoshop", "InDesign", "Lithography"],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // SPHERES - PROJECTS
                // ---------------------------------------------------------
                {
                    ID: "sphere-proj-02",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "NZ Trip",
                    DESCRIPTION: "Website",
                    DATE: "09/23",
                    PLACE: "New Zealand",
                    MEDIA: [
                        { src: "src/sphere/nzTrip/1.png", label: "1" },
                        { src: "src/sphere/nzTrip/4.png", label: "4" },
                        { src: "src/sphere/nzTrip/5.png", label: "5" },
                        { src: "src/sphere/nzTrip/7.png", label: "7" },
                        { src: "src/sphere/nzTrip/8.png", label: "8" },
                        { src: "src/sphere/nzTrip/9.png", label: "9" },
                        { src: "src/sphere/nzTrip/10.png", label: "10" },
                        { src: "src/sphere/nzTrip/12.png", label: "12" },
                        { src: "src/sphere/nzTrip/16.png", label: "16" },
                        { src: "src/sphere/nzTrip/19.png", label: "19" },
                        { src: "src/sphere/nzTrip/20.png", label: "20" },
                        { src: "src/sphere/nzTrip/21.png", label: "21" },
                        { src: "src/sphere/nzTrip/22.png", label: "22" },
                        { src: "src/sphere/nzTrip/23.png", label: "23" },
                        { src: "src/sphere/nzTrip/24.png", label: "24" },
                        { src: "src/sphere/nzTrip/25.png", label: "25" },
                        { src: "src/sphere/nzTrip/26.png", label: "26" },
                        { src: "src/sphere/nzTrip/27.png", label: "27" },
                        { src: "src/sphere/nzTrip/30.png", label: "30" }
                    ],
                    TOOLS: ["Motion Graphics", "Aerial Photography", "Drawing", "Performance", "Land Art"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "sphere-proj-06",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "fotopanel.art",
                    DESCRIPTION: "Mobile and Web app",
                    DATE: "",
                    PLACE: "",
                    MEDIA: [],
                    TOOLS: ["Visual Systems", "Physical Computing"],
                    LINKS: [],
                    RELATIONS: []
                },
                {
                    ID: "sphere-proj-07",
                    CLASS: "SPHERE",
                    TYPE: "project",
                    WORD: "Colombian Air Force Squads",
                    DESCRIPTION: "Poster Series",
                    DATE: "09/25",
                    PLACE: "Apiay, Meta, COL",
                    MEDIA: [
                        { src: "src/sphere/escuadrones/214.jpg", label: "Escuadrón Defensa Aérea 214" },
                        { src: "src/sphere/escuadrones/215.jpg", label: "Escuadrón Navegación Aérea 215" },
                        { src: "src/sphere/escuadrones/A29B.jpg", label: "A29B Supertucano" },
                        { src: "src/sphere/escuadrones/AC47T.jpg", label: "AC47T Fantasma" },
                        { src: "src/sphere/escuadrones/tucano.png", label: "AT27 Tucano" },
                        { src: "src/sphere/escuadrones/blackhawk.png", label: "Blackhawk UH60L" },
                        { src: "src/sphere/escuadrones/caravan.png", label: "C-208B Caravan" },
                        { src: "src/sphere/escuadrones/hermes.png", label: "Hermes 900/450" },
                        { src: "src/sphere/escuadrones/schweizer.png", label: "SA237B Schweizer" }
                    ],
                    TOOLS: ["Photoshop", "Digital Collage", "Visual Identity", "Print Design", "Image Compositing"],
                    LINKS: [],
                    RELATIONS: []
                },

                // ---------------------------------------------------------
                // SPHERES - BOOKS
                // ---------------------------------------------------------
                {
                    ID: "sphere-book-01",
                    CLASS: "SPHERE",
                    TYPE: "book",
                    WORD: "BIOMANIFESTO & THE COGNITIVE SYSTEM",
                    DESCRIPTION: "the unconscious mind, bopdy as source of creativity.",
                    DATE: "",
                    PLACE: "",
                    MEDIA: [],
                    TOOLS: ["Philosophical Seed"],
                    LINKS: [],
                    RELATIONS: []
                }
            ]
        };

        /* =========================================================
           8. VALIDATION & FRONTEND TRANSLATION LAYER
           ========================================================= */
        function validateDatabase(db) {
            const validPairs = [
                { CLASS: "DROP", TYPE: "education" },
                { CLASS: "DROP", TYPE: "experience" },
                { CLASS: "SPHERE", TYPE: "project" },
                { CLASS: "SPHERE", TYPE: "book" }
            ];

            db.entities.forEach(entity => {
                const isValid = validPairs.some(p => p.CLASS === entity.CLASS && p.TYPE === entity.TYPE);
                if (!isValid) {
                    console.warn(`[JAKO VALIDATION] Invalid CLASS/TYPE pair for entity ID: ${entity.ID}`);
                }
            });
        }

        /**
         * Generic Component Renderer
         * Translates backend entities to the frontend visual components
         */
        function renderEntityGroup(typeFilter, containerId) {
            const container = document.getElementById(containerId);
            if (!container) return;

            const entities = JAKO_DATABASE.entities.filter(e => e.TYPE === typeFilter);

            container.innerHTML = entities.map((item) => {
                const toolsList = item.TOOLS.length > 0 
                    ? `<span class="experience-tools">${item.TOOLS.join(' · ')}</span>` 
                    : '';
                
                const placeLabel = item.PLACE ? `<span class="metadata">[${item.PLACE}]</span>` : '';
                const dateLabel = item.DATE || '—';

                const hasMedia = item.MEDIA && item.MEDIA.length > 0;
                const toggleClass = hasMedia ? 'media-toggle' : '';

                // Build media gallery HTML if images are present
                let mediaHtml = '';
                if (hasMedia) {
                    const galleryItems = item.MEDIA.map((m) => `
                        <button class="media-item" type="button" data-media-src="${m.src}" data-media-alt="${m.label}">
                            <img src="${m.src}" alt="${m.label}" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\\'http://www.w3.org/2000/svg\\' width=\\'50\\' height=\\'50\\'><rect width=\\'50\\' height=\\'50\\' fill=\\'%23ccc\\'/></svg>'">
                            <span>${m.label}</span>
                        </button>
                    `).join('');

                    mediaHtml = `
                        <div class="media-preview media-gallery" id="gallery-${item.ID}">
                            ${galleryItems}
                        </div>
                        <div class="media-preview selected-media-preview" id="preview-${item.ID}" aria-live="polite">
                            <img alt="Selected view" src="">
                        </div>
                    `;
                }

                return `
                    <div class="dropSphere-row ${toggleClass}" data-entity-id="${item.ID}">
                        <span class="dropSphere-value">
                            <strong>${item.WORD}</strong> ${item.DESCRIPTION ? '// ' + item.DESCRIPTION : ''}
                            ${placeLabel}
                            ${toolsList}
                        </span>
                        <span class="dropSphere-label">${dateLabel}</span>
                    </div>
                    ${mediaHtml}
                `;
            }).join('');
        }

        /* =========================================================
           9. INTERACTION CONTROLLERS (INDEPENDENT TOGGLES & FULL WIDTH PREVIEWS)
           ========================================================= */
        function initInteractions() {
            // Theme Toggle Controller
            const themeBtn = document.getElementById('theme-toggle');
            themeBtn.addEventListener('click', () => {
                const isDark = document.body.classList.toggle('dark-mode');
                themeBtn.setAttribute('aria-pressed', isDark);
            });

            // Print / PDF Controller
            const pdfBtn = document.getElementById('download-pdf');
            pdfBtn.addEventListener('click', () => {
                window.print();
            });

            // Independent Accordion & Image Viewport Controller
            document.addEventListener('click', (e) => {
                // Handle Entity Row Gallery Toggle (Independent toggle per entity)
                const toggleRow = e.target.closest('.media-toggle');
                if (toggleRow) {
                    const entityId = toggleRow.getAttribute('data-entity-id');
                    const gallery = document.getElementById(`gallery-${entityId}`);
                    const preview = document.getElementById(`preview-${entityId}`);

                    if (gallery) {
                        const isOpen = gallery.classList.contains('is-open');
                        if (isOpen) {
                            // Close this specific gallery and its large preview
                            gallery.classList.remove('is-open');
                            if (preview) {
                                preview.classList.remove('is-open');
                                const img = preview.querySelector('img');
                                if (img) img.src = '';
                            }
                            // Clear selected state on thumbnails
                            gallery.querySelectorAll('.media-item').forEach(btn => btn.classList.remove('is-selected'));
                        } else {
                            // Open this specific gallery without closing others
                            gallery.classList.add('is-open');
                        }
                    }
                    return;
                }

                // Handle Gallery Thumbnail Selection
                const mediaItem = e.target.closest('.media-item');
                if (mediaItem) {
                    const src = mediaItem.getAttribute('data-media-src');
                    const gallery = mediaItem.closest('.media-gallery');
                    const previewContainer = gallery.nextElementSibling;

                    if (previewContainer && previewContainer.classList.contains('selected-media-preview')) {
                        const img = previewContainer.querySelector('img');
                        
                        // Toggle logic: if clicking the currently active image, close the large preview
                        if (mediaItem.classList.contains('is-selected')) {
                            mediaItem.classList.remove('is-selected');
                            previewContainer.classList.remove('is-open');
                            img.src = '';
                        } else {
                            // Clear other selection highlights in this gallery
                            gallery.querySelectorAll('.media-item').forEach(btn => btn.classList.remove('is-selected'));
                            
                            mediaItem.classList.add('is-selected');
                            img.src = src;
                            previewContainer.classList.add('is-open');
                        }
                    }
                }
            });
        }

        /* Initialization execution */
        document.addEventListener('DOMContentLoaded', () => {
            validateDatabase(JAKO_DATABASE);
            renderEntityGroup('education', 'container-education');
            renderEntityGroup('experience', 'container-experience');
            renderEntityGroup('project', 'container-projects');
            renderEntityGroup('book', 'container-books');
            initInteractions();
        });