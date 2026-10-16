/**
 * JAKO DATABASE — Centralized Entity Registry
 */
const JAKO_DATABASE = {
    metadata: {
        name: "JAKO",
        model: "MASTER_ENTITY_MODEL",
        version: "1.0",
        architecture: "SUN_BODY_SPIRIT"
    },

    entities: [
        // =====================================================
        // EDUCATION
        // =====================================================
        {
            ID: "drop-edu-01",
            CLASS: "DROP",
            TYPE: "education",
            WORD: "Full Stack Development",
            DESCRIPTION: "Certifications",
            DATE: "ACTIVE",
            PLACE: "W3Schools, Online",
            MEDIA: [
                { src: "src/drop/certify/sqlQ.png", label: "SQL" },
                { src: "src/drop/certify/pythonQ.png", label: "Python" },
                { src: "src/drop/certify/pandasQ.png", label: "Pandas" },
                { src: "src/drop/certify/djangoQ.png", label: "Django" },
                { src: "src/drop/certify/AWScloudQ.png", label: "AWS Cloud" },
                { src: "src/drop/certify/htmlQ.png", label: "HTML" },
                { src: "src/drop/certify/phpQ.png", label: "PHP" }
            ],
            TOOLS: [
                "SQL", "Python", "Pandas", "Django",
                "AWS", "HTML", "PHP", "JavaScript"
            ],
            AREA: [
                "Software Development",
                "Web Development",
                "Data Science",
                "Automation"
            ],
            LINKS: [],
            RELATIONS: []
        },
        {
            ID: "drop-edu-02",
            CLASS: "DROP",
            TYPE: "education",
            WORD: "Bachelor in Fine Arts",
            DESCRIPTION: "Recognition Level 7",
            DATE: "12/22",
            PLACE: "NZQA, Auckland, New Zealand",
            MEDIA: [
                { src: "src/drop/certify/NZQA.png", label: "Degree" }
            ],
            TOOLS: [],
            AREA: [
                "Fine Arts",
                "Media Art",
                "Generative Art",
                "Land Art",
                "Biokinetic Art"
            ],
            LINKS: [],
            RELATIONS: []
        },
        {
            ID: "drop-edu-03",
            CLASS: "DROP",
            TYPE: "education",
            WORD: "Plastic Arts Educator",
            DESCRIPTION: "Degree",
            DATE: "03/15",
            PLACE: "University of Antioquia, Medellín, Colombia",
            MEDIA: [
                { src: "src/drop/certify/degreeQ.png", label: "English" },
                { src: "src/drop/certify/certificadoGrado.png", label: "Spanish" }
            ],
            TOOLS: [],
            AREA: [
                "Art Education",
                "Artistic Pedagogy",
                "Painting",
                "Drawing",
                "Performance Art",
                "Video Art",
                "Photography"
            ],
            LINKS: [],
            RELATIONS: []
        },

        // =====================================================
        // PROFESSIONAL EXPERIENCE
        // =====================================================
        {
            ID: "drop-exp-01",
            CLASS: "DROP",
            TYPE: "experience",
            WORD: "jako.studio",
            DESCRIPTION: "Media Art",
            DATE: "03/25 - ACTIVE",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Python", "SQL", "Pandas", "Git"],
            AREA: [
                "Media Art",
                "Artistic Research",
                "Software Development",
                "Creative Coding",
                "Biokinetic Art"
            ],
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
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Python", "PowerShell", "Bash"],
            AREA: [
                "Software Development",
                "Robotic Process Automation",
                "Workflow Automation"
            ],
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
            PLACE: "Auckland, New Zealand",
            MEDIA: [],
            TOOLS: [
                "CNC Router",
                "Vinyl Cutting Plotter",
                "Lamination Equipment",
                "Wrapping Tools"
            ],
            AREA: [
                "Graphic Design",
                "Signage",
                "Visual Communication",
                "Digital Fabrication"
            ],
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
            PLACE: "Mount Maunganui, New Zealand",
            MEDIA: [],
            TOOLS: [
                "CNC Router",
                "Vinyl Cutting Plotter",
                "Inkjet Printer",
                "Lamination Equipment"
            ],
            AREA: [
                "Signage",
                "Large-Format Printing",
                "Digital Fabrication",
                "Installation"
            ],
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
            PLACE: "Medellín, Colombia",
            MEDIA: [
                { src: "src/drop/eyf/1.JPG", label: "Digital Printing" },
                { src: "src/drop/eyf/2.JPG", label: "Digital Printing" },
                { src: "src/drop/eyf/3.JPG", label: "Digital Printing" },
                { src: "src/drop/eyf/4.JPG", label: "Graphic Design" },
                { src: "src/drop/eyf/5.JPG", label: "Graphic Design" }
            ],
            TOOLS: [
                "CorelDRAW",
                "Adobe Illustrator",
                "Adobe Photoshop",
                "Adobe InDesign"
            ],
            AREA: [
                "Graphic Design",
                "Visual Communication",
                "Print Design",
                "Publishing",
                "Image Making"
            ],
            LINKS: [],
            RELATIONS: []
        },

        // =====================================================
        // PROJECTS
        // =====================================================
        {
            ID: "sphere-proj-02",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "NZ Trip",
            DESCRIPTION: "A visual documentation project exploring travel, landscape, aerial imagery, drawing, performance, and artistic encounters throughout New Zealand.",
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
            TOOLS: [],
            AREA: [
                "Visual Arts",
                "Aerial Photography",
                "Motion Graphics",
                "Drawing",
                "Performance Art",
                "Land Art"
            ],
            LINKS: [],
            RELATIONS: []
        },
        {
            ID: "sphere-proj-06",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "fotopanel.art",
            DESCRIPTION: "A mobile and web application for visualizing images on physical panels, exploring the relationship between digital imagery, material production, and spatial presentation.",
            DATE: "11/23",
            PLACE: "",
            MEDIA: [],
            TOOLS: [],
            AREA: [
                "Digital Art",
                "Visual Systems",
                "Creative Coding",
                "Product Design",
                "Physical Computing"
            ],
            LINKS: [],
            RELATIONS: []
        },
        {
            ID: "sphere-proj-07",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "Colombian Air Force Squads",
            DESCRIPTION: "A poster series developed around Colombian Air Force squadrons and aircraft, combining photographic imagery, digital compositing, and visual identity.",
            DATE: "09/25",
            PLACE: "Apiay, Meta, Colombia",
            MEDIA: [
                { src: "src/sphere/escuadrones/214.jpg", label: "Air Defense Squadron 214" },
                { src: "src/sphere/escuadrones/215.jpg", label: "Air Navigation Squadron 215" },
                { src: "src/sphere/escuadrones/A29B.jpg", label: "A29B Super Tucano" },
                { src: "src/sphere/escuadrones/AC47T.jpg", label: "AC47T Fantasma" },
                { src: "src/sphere/escuadrones/tucano.png", label: "AT27 Tucano" },
                { src: "src/sphere/escuadrones/blackhawk.png", label: "Black Hawk UH60L" },
                { src: "src/sphere/escuadrones/caravan.png", label: "C-208B Caravan" },
                { src: "src/sphere/escuadrones/hermes.png", label: "Hermes 900/450" },
                { src: "src/sphere/escuadrones/schweizer.png", label: "SA237B Schweizer" }
            ],
            TOOLS: [
                "Adobe Photoshop",
                "Digital Compositing",
                "Print Production"
            ],
            AREA: [
                "Graphic Design",
                "Poster Design",
                "Visual Identity",
                "Image Making",
                "Print Design"
            ],
            LINKS: [],
            RELATIONS: []
        },

        // =====================================================
        // ARDER — RESEARCH
        // =====================================================
        {
            ID: "research-arder",
            CLASS: "DROP",
            TYPE: "research",
            WORD: "ARDER — Research Manifesto",
            DESCRIPTION: "An artistic research project exploring the intersection of art and sport to make the invisible forces of the body visible. Through physical exertion, movement, repetition, ritual, play, signs, and objects, ARDER investigates how bodily energy, tension, pressure, and exhaustion can be translated into artistic forms. Its methodology combines physical practice, observation, documentation, questionnaires, bibliographic research, and artistic experimentation.",
            DATE: "2008–2010",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: [],
            AREA: [
                "Artistic Research",
                "Performance Art",
                "Body Art",
                "Kinetic Art",
                "Sports",
                "Aesthetics",
                "Embodied Research"
            ],
            LINKS: [],
            RELATIONS: []
        },

        // =====================================================
        // ARDER — ARTISTIC PROJECTS
        // Dates and location are provisional estimates.
        // MEDIA paths remain empty until confirmed.
        // =====================================================
        {
            ID: "sphere-arder-t1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER T1",
            DESCRIPTION: "A series of paintings derived from playing tennis. The resulting marks reveal the forces, tensions, and energies experienced by the body during the game, translating athletic gestures and emotional variations into painterly surfaces.",
            DATE: "03/08",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Paint", "Canvas", "Tennis Racket"],
            AREA: [
                "Painting",
                "Performance Art",
                "Body Art",
                "Kinetic Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-v1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER V1",
            DESCRIPTION: "A drawing action in which push-ups generate a sequence of charcoal lines on a white panel. One line is drawn after every twenty repetitions, and the action ends when physical exhaustion prevents continuation. Variations in the lines record changes in the body's pulse, making invisible physical forces visible.",
            DATE: "08/08",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Charcoal", "White Panel"],
            AREA: [
                "Performance Art",
                "Drawing",
                "Body Art",
                "Kinetic Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-s1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER S1",
            DESCRIPTION: "A painting proposal exploring the forces generated by bodily movement and jumping. Through repetition, the body experiences gravity, pressure, and tension, transforming physical exertion into flashes of color and painterly expression.",
            DATE: "11/08",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: [],
            AREA: [
                "Painting",
                "Performance Art",
                "Body Art",
                "Kinetic Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-p1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "Pesa Arder No. 1",
            DESCRIPTION: "A sculptural performance involving a white weight made from two plaster discs weighing approximately thirty kilograms. Repeated lifting continues until exhaustion causes the weight to fall and break, releasing red paint. The fragmented object remains as a material trace of the forces and energy expended by the body.",
            DATE: "04/09",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Plaster", "Weight", "Red Paint"],
            AREA: [
                "Sculpture",
                "Performance Art",
                "Installation Art",
                "Body Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-p2",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER P2",
            DESCRIPTION: "An installation proposal that transforms the gallery into a space for physical exercise. It invites spectators or participants to experience the aesthetics of sport while making visible bodily gestures, sweating, breathing, agitation, and the physical changes produced by exertion.",
            DATE: "09/09",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: [],
            AREA: [
                "Installation Art",
                "Performance Art",
                "Participatory Art",
                "Body Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-b1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER B1",
            DESCRIPTION: "A participatory installation proposal in which a baseball player strikes a gallery wall with a bat and ball. Impact marks remain on the wall while the athlete's footprints trace the floor. The gallery becomes a surface that records bodily force through direct physical action.",
            DATE: "02/10",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: ["Baseball Bat", "Baseball"],
            AREA: [
                "Installation Art",
                "Performance Art",
                "Participatory Art",
                "Drawing",
                "Body Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },
        {
            ID: "sphere-arder-e1",
            CLASS: "SPHERE",
            TYPE: "project",
            WORD: "ARDER E1",
            DESCRIPTION: "A performance in which the artist climbs gallery walls while drawing the trajectory of the body's joints. The resulting drawing records the tensions and forces generated by climbing, while the climber's sporting equipment remains part of the visual language of the action.",
            DATE: "07/10",
            PLACE: "Medellín, Colombia",
            MEDIA: [],
            TOOLS: [
                "Climbing Shoes",
                "Climbing Harness",
                "Ropes",
                "Chalk Bag",
                "Climbing Gloves"
            ],
            AREA: [
                "Performance Art",
                "Drawing",
                "Installation Art",
                "Body Art",
                "Kinetic Art"
            ],
            LINKS: [],
            RELATIONS: ["research-arder"]
        },

        // =====================================================
        // BOOKS AND CONCEPTUAL DOCUMENTS
        // =====================================================
        {
            ID: "sphere-book-01",
            CLASS: "SPHERE",
            TYPE: "book",
            WORD: "BIOMANIFESTO & THE COGNITIVE SYSTEM",
            DESCRIPTION: "An exploration of the unconscious mind and the body as a source of creativity, connected to biokinetic visualization through the Z-Dial concept.",
            DATE: "02/22",
            PLACE: "",
            MEDIA: [],
            TOOLS: [],
            AREA: [
                "Artistic Research",
                "Cognitive Systems",
                "Embodied Creativity",
                "Biokinetic Art"
            ],
            LINKS: [],
            RELATIONS: []
        },
        {
            ID: "sphere-book-02",
            CLASS: "SPHERE",
            TYPE: "book",
            WORD: "Z-DIAL — BIOKINETIC ENGINE",
            DESCRIPTION: "A conceptual and technical document exploring the Z-Dial biokinetic engine and its visual language.",
            DATE: "06/26",
            PLACE: "",
            MEDIA: [
                { src: "src/sphere/zDial/biodial.png", label: "BioDial" },
                { src: "src/sphere/zDial/dropdial.png", label: "DropDial" },
                { src: "src/sphere/zDial/sphere.png", label: "Sphere" }
            ],
            TOOLS: [],
            AREA: [
                "Biokinetic Art",
                "Generative Art",
                "Creative Coding",
                "Data Visualization",
                "System Design"
            ],
            LINKS: [],
            RELATIONS: []
        }
    ]
};


// =============================================================
// DATABASE VALIDATION — REPORT ONLY
// =============================================================
function validateDatabase(db) {
    const validPairs = [
        { CLASS: "DROP", TYPE: "education" },
        { CLASS: "DROP", TYPE: "experience" },
        { CLASS: "DROP", TYPE: "research" },
        { CLASS: "SPHERE", TYPE: "project" },
        { CLASS: "SPHERE", TYPE: "book" }
    ];

    const ids = new Set();
    const entityIds = new Set(db.entities.map(entity => entity.ID));

    db.entities.forEach(entity => {
        const prefix = `[JAKO VALIDATION] ${entity.ID || "Unknown entity"}`;

        if (!entity.ID) {
            console.warn(`${prefix}: Missing ID.`);
        } else if (ids.has(entity.ID)) {
            console.warn(`${prefix}: Duplicate ID.`);
        } else {
            ids.add(entity.ID);
        }

        const validPair = validPairs.some(
            pair => pair.CLASS === entity.CLASS && pair.TYPE === entity.TYPE
        );

        if (!validPair) {
            console.warn(`${prefix}: Invalid CLASS/TYPE pair.`);
        }

        ["WORD", "DESCRIPTION", "DATE", "PLACE"].forEach(field => {
            if (typeof entity[field] !== "string") {
                console.warn(`${prefix}: ${field} must be a string.`);
            }
        });

        ["MEDIA", "TOOLS", "AREA", "LINKS", "RELATIONS"].forEach(field => {
            if (!Array.isArray(entity[field])) {
                console.warn(`${prefix}: ${field} must be an array.`);
            }
        });

        if (Array.isArray(entity.MEDIA)) {
            entity.MEDIA.forEach((media, index) => {
                if (
                    !media ||
                    typeof media.src !== "string" ||
                    typeof media.label !== "string"
                ) {
                    console.warn(
                        `${prefix}: Invalid MEDIA entry at index ${index}.`
                    );
                }
            });
        }

        ["TOOLS", "AREA", "LINKS", "RELATIONS"].forEach(field => {
            if (Array.isArray(entity[field])) {
                entity[field].forEach((value, index) => {
                    if (typeof value !== "string" || !value.trim()) {
                        console.warn(
                            `${prefix}: Invalid ${field} entry at index ${index}.`
                        );
                    }
                });
            }
        });

        if (Array.isArray(entity.RELATIONS)) {
            entity.RELATIONS.forEach(relationId => {
                if (!entityIds.has(relationId)) {
                    console.warn(
                        `${prefix}: RELATIONS references unknown ID "${relationId}".`
                    );
                }
            });
        }
    });
}


// =============================================================
// ENTITY RENDERER
// =============================================================
function renderEntityGroup(typeFilter, containerId) {
    const container = document.getElementById(containerId);
    if (!container) return;

    const entities = JAKO_DATABASE.entities.filter(
        entity => entity.TYPE === typeFilter
    );

    container.innerHTML = entities.map(item => {
        const toolsList = item.TOOLS.length
            ? `<span class="experience-tools">${item.TOOLS.join(" · ")}</span>`
            : "";

        const areaList = item.AREA.length
            ? `<span class="entity-areas">${item.AREA.join(" · ")}</span>`
            : "";

        const placeLabel = item.PLACE
            ? `<span class="metadata">[${item.PLACE}]</span>`
            : "";

        let dateLabel = item.DATE || "—";

        if (dateLabel.includes(" - ")) {
            dateLabel = dateLabel.replace(" - ", "\n");
        }

        const hasMedia = item.MEDIA.length > 0;
        const toggleClass = hasMedia ? "media-toggle" : "";

        let mediaHtml = "";

        if (hasMedia) {
            const galleryItems = item.MEDIA.map(media => `
                <button
                    class="media-item"
                    type="button"
                    data-media-src="${media.src}"
                    data-media-alt="${media.label}"
                >
                    <img
                        src="${media.src}"
                        alt="${media.label}"
                        loading="lazy"
                        decoding="async"
                        onerror="this.style.display='none'"
                    >
                    <span>${media.label}</span>
                </button>
            `).join("");

            mediaHtml = `
                <div
                    class="media-preview media-gallery"
                    id="gallery-${item.ID}"
                >
                    ${galleryItems}
                </div>

                <div
                    class="media-preview selected-media-preview"
                    id="preview-${item.ID}"
                    aria-live="polite"
                >
                    <img
                        alt="Selected view"
                        src=""
                        loading="lazy"
                        decoding="async"
                    >
                </div>
            `;
        }

        return `
            <div
                class="dropSphere-row ${toggleClass}"
                data-entity-id="${item.ID}"
            >
                <div class="dropSphere-value">
                    <div class="dropSphere-line-primary">
                        <strong>${item.WORD}</strong>
                        ${item.DESCRIPTION ? "// " + item.DESCRIPTION : ""}
                        ${placeLabel}
                    </div>

                    <div class="dropSphere-line-secondary">
                        <span class="dropSphere-label">${dateLabel}</span>
                        ${toolsList}
                        ${areaList}
                    </div>
                </div>
            </div>
            ${mediaHtml}
        `;
    }).join("");
}


// =============================================================
// INTERACTIONS
// =============================================================
function initInteractions() {
    // Theme controller
    const themeBtn = document.getElementById("theme-toggle");

    if (themeBtn) {
        themeBtn.addEventListener("click", () => {
            const isLight = document.body.classList.toggle("light-mode");

            themeBtn.setAttribute("aria-pressed", String(!isLight));
            themeBtn.setAttribute(
                "aria-label",
                isLight ? "Switch to dark theme" : "Switch to light theme"
            );
        });
    }

    // Print / PDF controller
    const pdfBtn = document.getElementById("download-pdf");

    if (pdfBtn) {
        pdfBtn.addEventListener("click", () => window.print());
    }

    // Profile photo and name controller
    const avatarBtn = document.getElementById("avatar-toggle");
    const engineBox = document.getElementById("engine-box");
    const profileName = document.getElementById("profile-name");

    if (avatarBtn && engineBox) {
        avatarBtn.addEventListener("click", () => {
            const existingAvatar = engineBox.querySelector(".engine-avatar");

            if (existingAvatar) {
                existingAvatar.remove();

                if (profileName) {
                    profileName.textContent = "JAKO";
                }

                return;
            }

            const img = document.createElement("img");
            img.src = "src/img/photo.png";
            img.alt = "Alejandro Monsalve M.";
            img.className = "engine-avatar";
            img.onerror = function() {
                this.style.display = "none";
            };

            img.addEventListener("click", () => {
                img.remove();

                if (profileName) {
                    profileName.textContent = "JAKO";
                }
            });

            engineBox.prepend(img);

            if (profileName) {
                profileName.textContent = "ALEJANDRO MONSALVE M.";
            }
        });
    }

    // Gallery accordion and selected-image controller
    document.addEventListener("click", event => {
        const toggleRow = event.target.closest(".media-toggle");

        if (toggleRow) {
            const entityId = toggleRow.getAttribute("data-entity-id");
            const gallery = document.getElementById(`gallery-${entityId}`);
            const preview = document.getElementById(`preview-${entityId}`);

            if (!gallery) return;

            const isOpen = gallery.classList.contains("is-open");

            if (isOpen) {
                gallery.classList.remove("is-open");

                if (preview) {
                    preview.classList.remove("is-open");

                    const img = preview.querySelector("img");
                    if (img) img.src = "";
                }

                gallery.querySelectorAll(".media-item").forEach(button => {
                    button.classList.remove("is-selected");
                });
            } else {
                gallery.classList.add("is-open");
            }

            return;
        }

        const mediaItem = event.target.closest(".media-item");
        if (!mediaItem) return;

        const src = mediaItem.getAttribute("data-media-src");
        const gallery = mediaItem.closest(".media-gallery");
        if (!gallery) return;

        const previewContainer = gallery.nextElementSibling;

        if (
            !previewContainer ||
            !previewContainer.classList.contains("selected-media-preview")
        ) {
            return;
        }

        const img = previewContainer.querySelector("img");

        if (!img) return;

        if (mediaItem.classList.contains("is-selected")) {
            mediaItem.classList.remove("is-selected");
            previewContainer.classList.remove("is-open");
            img.src = "";
        } else {
            gallery.querySelectorAll(".media-item").forEach(button => {
                button.classList.remove("is-selected");
            });

            mediaItem.classList.add("is-selected");
            img.src = src;
            previewContainer.classList.add("is-open");
        }
    });
}


// =============================================================
// INITIALIZATION
// =============================================================
document.addEventListener("DOMContentLoaded", () => {
    validateDatabase(JAKO_DATABASE);

    renderEntityGroup("education", "container-education");
    renderEntityGroup("experience", "container-experience");
    renderEntityGroup("project", "container-projects");
    renderEntityGroup("research", "container-research");
    renderEntityGroup("book", "container-books");

    initInteractions();
});