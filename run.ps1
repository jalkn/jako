Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

$files = @{}

$files["index.html"] = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio & CV - Alejandro Monsalve</title>
    <link rel="stylesheet" href="src/styles/global.css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Rajdhani:wght@500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div id="page-bg-overlay"></div>
    <div class="ambient-gradient"></div>

    <header class="header-style-bar site-header">
        <div class="site-brand-lockup">
            <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true" focusable="false">
                <g transform="rotate(180 50 50)">
                    <polygon points="50,42 58,50 50,58 42,50" />
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>
            <span class="site-brand">JAKO</span>
        </div>
        <nav class="actions-group header-controls" aria-label="Portfolio controls">
            <a class="btn-control-action header-control header-github-button" href="https://github.com/jalkn" target="_blank" rel="noopener noreferrer" aria-label="GitHub engine" title="GitHub engine">
                <svg class="github-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                    <path fill="currentColor" d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729 1.205.085 1.84 1.237 1.84 1.237 1.07 1.834 2.807 1.304 3.492.997.108-.775.418-1.305.762-1.605-2.665-.3-5.467-1.334-5.467-5.93 0-1.31.468-2.38 1.235-3.22-.124-.303-.535-1.523.117-3.176 0 0 1.008-.322 3.3 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.29-1.552 3.295-1.23 3.295-1.23.655 1.653.244 2.873.12 3.176.77.84 1.233 1.91 1.233 3.22 0 4.61-2.807 5.625-5.48 5.92.43.372.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.286 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12" />
                </svg>
            </a>

            <button class="btn-control-action header-control" id="theme-toggle" type="button" aria-pressed="false" aria-label="Enable dark mode" title="Enable dark mode">
                <svg class="icon-stroke theme-toggle-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" focusable="false">
                    <rect x="3" y="6" width="18" height="12" rx="6" />
                    <circle class="theme-switch-knob" cx="9" cy="12" r="3.5" fill="currentColor" stroke="none" />
                </svg>
            </button>

        </nav>
    </header>

    <!-- Main Single-Column Viewport Container -->
    <main class="vision-scroll-viewport" id="main-viewport">

        <section class="engine-section-group" id="professional-engine">
        <!-- SECTION 1: Professional engine -->
        <section class="vision-card" id="card-engine">

            <div class="engine-box">
                <div class="engine-photo-links">
                    <img src="src/img/photo.png" alt="Alejandro Monsalve" class="engine-avatar">
                </div>

                <div>
                    <div class="engine-title-block">
                        <span>ALEJANDRO MONSALVE M.</span>
                    </div>

<p class="engine-text">
    Multidisciplinary artist and developer focused on graphic design, digital experiences, visual systems, and generative art. Combining formal training in visual arts with web development, UI/UX, automation, and computational experimentation. My work moves between image, design, code, media art, physical making, and emerging biokinetic research. I speak Spanish, English, and Italian.
</p>
                </div>
            </div>

        </section>

<!-- SECTION 2: Education -->
<section class="vision-card" id="card-education">
    <div class="section-heading">
        <h2>Education</h2>
        <span>COMPLETION</span>
    </div>

    <div class="dropSphere-group">
        <div class="dropSphere-row media-toggle">
            <span class="dropSphere-value">
                <strong>Full Stack Development</strong> // W3Schools
                <span class="metadata">[Online]</span>
            </span>
            <span class="dropSphere-label">12/23</span>
        </div>

        <div class="media-preview media-gallery" aria-label="Full Stack Development medias">
            <button class="media-item" type="button"
                    data-media-src="src/certify/sqlmedia.png"
                    data-media-alt="SQL media"
                    aria-label="View SQL media">
                <img src="src/certify/sqlmedia.png" alt="SQL media">
                <span>SQL</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/pythonmedia.png"
                    data-media-alt="Python media"
                    aria-label="View Python media">
                <img src="src/certify/pythonmedia.png" alt="Python media">
                <span>Python</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/pandasmedia.png"
                    data-media-alt="Pandas media"
                    aria-label="View Pandas media">
                <img src="src/certify/pandasmedia.png" alt="Pandas media">
                <span>Pandas</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/djangomedia.png"
                    data-media-alt="Django media"
                    aria-label="View Django media">
                <img src="src/certify/djangomedia.png" alt="Django media">
                <span>Django</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/AWScloudmedia.png"
                    data-media-alt="AWS Cloud media"
                    aria-label="View AWS Cloud media">
                <img src="src/certify/AWScloudmedia.png" alt="AWS Cloud media">
                <span>AWS Cloud</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/htmlmedia.png"
                    data-media-alt="HTML media"
                    aria-label="View HTML media">
                <img src="src/certify/htmlmedia.png" alt="HTML media">
                <span>HTML</span>
            </button>
        </div>

        <div class="media-preview selected-media-preview" aria-live="polite">
            <img alt="">
        </div>

        <div class="dropSphere-row media-toggle">
            <span class="dropSphere-value">
                <strong>Fine Arts Recognition Level 7</strong> // NZQA
                <span class="metadata">[Auckland, NZ]</span>
            </span>
            <span class="dropSphere-label">12/22</span>
        </div>

        <div class="media-preview media-gallery" aria-label="NZQA Qualification Recognition">
            <button class="media-item" type="button"
                    data-media-src="src/certify/NZQA.png"
                    data-media-alt="NZQA International Qualifications Recognition Statement"
                    aria-label="View NZQA International Qualifications Recognition Statement">
                <img src="src/certify/NZQA.png" alt="NZQA International Qualifications Recognition Statement">
                <span>NZQA</span>
            </button>
        </div>

        <div class="media-preview selected-media-preview" aria-live="polite">
            <img alt="">
        </div>

        <div class="dropSphere-row media-toggle">
            <span class="dropSphere-value">
                <strong>Plastic Arts Educator Degree</strong> // University of Antioquia
                <span class="metadata">[Medellín, COL]</span>
            </span>
            <span class="dropSphere-label">03/15</span>
        </div>

        <div class="media-preview media-gallery" aria-label="Degree medias">
            <button class="media-item" type="button"
                    data-media-src="src/certify/degreemedia.png"
                    data-media-alt="Degree media"
                    aria-label="View Degree media">
                <img src="src/certify/degreemedia.png" alt="Degree media">
                <span>Degree</span>
            </button>

            <button class="media-item" type="button"
                    data-media-src="src/certify/certificadoGrado.png"
                    data-media-alt="Degree media in Spanish"
                    aria-label="View Degree media in Spanish">
                <img src="src/certify/certificadoGrado.png" alt="Degree media in Spanish">
                <span>Spanish</span>
            </button>
        </div>

        <div class="media-preview selected-media-preview" aria-live="polite">
            <img alt="">
        </div>

    </div>
</section>

<!-- SECTION 3: Job Experience -->
        <section class="vision-card" id="card-experience">
            <div class="section-heading">
    <h2>Job Experience</h2>
    <span>START - END</span>
</div>
            <div class="dropSphere-group">
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>Celsia S.A. E.S.P.</strong> // <span>Software Developer</span> <span style="opacity:0.5; font-size:8px;">[Medellín, COL]</span><span class="experience-tools">Python · SQL · Pandas · Git</span></span>
                    <span class="dropSphere-label" style="text-align: right;">03/25 - 10/25</span>
                </div>
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>Synthesis Consulting S.A.S.</strong> // <span>RPA Developer</span> <span style="opacity:0.5; font-size:8px;">[Medellín, COL]</span><span class="experience-tools">Python · PowerShell · Bash</span></span>
                    <span class="dropSphere-label" style="text-align: right;">10/24 - 02/25</span>
                </div>
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>Sharp Signs</strong> // <span>Graphic Designer & Installer</span><span style="opacity:0.5; font-size:8px;">[Auckland, NZ]</span><span class="experience-tools">CNC Router Cut - Vinyl Computer Cut · Lamination · Wrapping Surfaces</span></span>
                    <span class="dropSphere-label" style="text-align: right;">06/22 - 09/23</span>
                </div>
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>Sign Creations NZ</strong> // <span>Signs Installer</span> <span style="opacity:0.5; font-size:8px;">[Mt Maunganui, NZ]</span><span class="experience-tools">CNC Router Cut - Vinyl Computer Cut · Inkjet Print - Lamination · Wrapping Surfaces</span></span>
                    <span class="dropSphere-label" style="text-align: right;">04/21 - 05/22</span>
                </div>
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>Hilton Hotel</strong> // Storeperson <span style="opacity:0.5; font-size:8px;">[Queenstown, NZ]</span><span class="experience-tools">Inventory Control · Stock Handling · Warehouse Operations</span></span>
                    <span class="dropSphere-label" style="text-align: right;">12/17 - 05/20</span>
                </div>
                <div class="dropSphere-row">
                    <span class="dropSphere-value" style="text-align: left;"><strong>ediciones&formas</strong> // <span>Entrepreneur Graphic Designer</span> <span style="opacity:0.5; font-size:8px;">[Medellín, COL]</span><span class="experience-tools">Corel Draw · Illustrator · Photoshop · InDesign · After Effects · Inkjet Print · Lithography</span></span>
                    <span class="dropSphere-label" style="text-align: right;">05/06 - 07/17</span>
                </div>

            </div>
        </section>
        <!-- SECTION 4: Projects -->
<section class="vision-card" id="card-art-projects">
    <div class="section-heading">
        <h2>Projects</h2>
        <span>LAUNCH</span>
    </div>

    <div class="dropSphere-group">
        <div class="dropSphere-row media-toggle" aria-expanded="false">
            <span class="dropSphere-value">
                <strong>NZ Trip</strong> // Website
                <span class="metadata">[NEW ZEALAND]</span>
                <span class="experience-tools">Motion Graphics · Aerial Photography · Drawing · Running · Performance · Land Art · Media Art · Generative Art</span>
            </span>
            <span class="dropSphere-label">09/23</span>
        </div>

        <div class="media-preview media-gallery" aria-label="NZ Trip project images">
<button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/1.png" data-media-alt="NZ Trip image 1" aria-label="View NZ Trip image 1"><img src="src/art.projects/nzTrip/1.png" alt="NZ Trip image 1"><span>1</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/4.png" data-media-alt="NZ Trip image 4" aria-label="View NZ Trip image 4"><img src="src/art.projects/nzTrip/4.png" alt="NZ Trip image 4"><span>4</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/5.png" data-media-alt="NZ Trip image 5" aria-label="View NZ Trip image 5"><img src="src/art.projects/nzTrip/5.png" alt="NZ Trip image 5"><span>5</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/7.png" data-media-alt="NZ Trip image 7" aria-label="View NZ Trip image 7"><img src="src/art.projects/nzTrip/7.png" alt="NZ Trip image 7"><span>7</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/8.png" data-media-alt="NZ Trip image 8" aria-label="View NZ Trip image 8"><img src="src/art.projects/nzTrip/8.png" alt="NZ Trip image 8"><span>8</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/9.png" data-media-alt="NZ Trip image 9" aria-label="View NZ Trip image 9"><img src="src/art.projects/nzTrip/9.png" alt="NZ Trip image 9"><span>9</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/10.png" data-media-alt="NZ Trip image 10" aria-label="View NZ Trip image 10"><img src="src/art.projects/nzTrip/10.png" alt="NZ Trip image 10"><span>10</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/12.png" data-media-alt="NZ Trip image 12" aria-label="View NZ Trip image 12"><img src="src/art.projects/nzTrip/12.png" alt="NZ Trip image 12"><span>12</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/16.png" data-media-alt="NZ Trip image 16" aria-label="View NZ Trip image 16"><img src="src/art.projects/nzTrip/16.png" alt="NZ Trip image 16"><span>16</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/19.png" data-media-alt="NZ Trip image 19" aria-label="View NZ Trip image 19"><img src="src/art.projects/nzTrip/19.png" alt="NZ Trip image 19"><span>19</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/20.png" data-media-alt="NZ Trip image 20" aria-label="View NZ Trip image 20"><img src="src/art.projects/nzTrip/20.png" alt="NZ Trip image 20"><span>20</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/21.png" data-media-alt="NZ Trip image 21" aria-label="View NZ Trip image 21"><img src="src/art.projects/nzTrip/21.png" alt="NZ Trip image 21"><span>21</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/22.png" data-media-alt="NZ Trip image 22" aria-label="View NZ Trip image 22"><img src="src/art.projects/nzTrip/22.png" alt="NZ Trip image 22"><span>22</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/23.png" data-media-alt="NZ Trip image 23" aria-label="View NZ Trip image 23"><img src="src/art.projects/nzTrip/23.png" alt="NZ Trip image 23"><span>23</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/24.png" data-media-alt="NZ Trip image 24" aria-label="View NZ Trip image 24"><img src="src/art.projects/nzTrip/24.png" alt="NZ Trip image 24"><span>24</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/25.png" data-media-alt="NZ Trip image 25" aria-label="View NZ Trip image 25"><img src="src/art.projects/nzTrip/25.png" alt="NZ Trip image 25"><span>25</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/26.png" data-media-alt="NZ Trip image 26" aria-label="View NZ Trip image 26"><img src="src/art.projects/nzTrip/26.png" alt="NZ Trip image 26"><span>26</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/27.png" data-media-alt="NZ Trip image 27" aria-label="View NZ Trip image 27"><img src="src/art.projects/nzTrip/27.png" alt="NZ Trip image 27"><span>27</span></button>
                    <button class="media-item" type="button" data-media-src="src/art.projects/nzTrip/30.png" data-media-alt="NZ Trip image 30" aria-label="View NZ Trip image 30"><img src="src/art.projects/nzTrip/30.png" alt="NZ Trip image 30"><span>30</span></button>
        </div>

        <div class="media-preview selected-media-preview" aria-live="polite">
            <img alt="">
        </div>
    </div>
</section>


<footer class="header-style-bar pdf-footer">
        <div class="actions-group">
            <button class="btn-control-action" id="download-pdf" aria-label="Download PDF" title="Download PDF" style="display: flex; align-items: center; gap: 0.3rem;">
                <svg class="icon-stroke" viewBox="0 0 24 24" fill="none" stroke-width="2"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
                PDF
            </button>
        </div>
    </footer>

    <script src="src/scripts/main.js"></script>
</body>
</html>
'@

$files["src/scripts/main.js"] = @'
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
'@

$files["src/styles/global.css"] = @'
:root {
    --jako-bg: #f4f5f7;
    --jako-text: #0d0d0d;
    --jako-border: rgba(0, 0, 0, 0.12);
    --jako-glass: rgba(255, 255, 255, 0.92);
    --gradient-start: rgba(0, 0, 0, 0.02);
    --gradient-mid: rgba(244, 245, 247, 0.85);
    --gradient-end: #f4f5f7;
    --icon-hover: #000;
}

body.dark-mode {
    --jako-bg: #111315;
    --jako-text: #f4f5f7;
    --jako-border: rgba(255, 255, 255, 0.16);
    --jako-glass: rgba(25, 28, 31, 0.92);
    --gradient-start: rgba(255, 255, 255, 0.04);
    --gradient-mid: rgba(17, 19, 21, 0.86);
    --gradient-end: #111315;
    --icon-hover: #fff;
}

*,
*::before,
*::after {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: inherit;
}

html,
body {
    height: 100vh;
    max-height: 100vh;
    overflow: hidden;
}

body {
    font-family: 'Rajdhani', sans-serif;
    background-color: var(--jako-bg);
    color: var(--jako-text);
    width: 100vw;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    user-select: none;
    position: relative;
    letter-spacing: 0.02em;
}

::selection {
    background-color: var(--jako-text);
    color: var(--jako-bg);
}

button,
span,
div {
    -webkit-tap-highlight-color: transparent;
}

/* =========================================================
   BACKGROUND SYSTEM
   ========================================================= */

#page-bg-overlay,
.ambient-gradient {
    position: fixed;
    inset: 0;
}

#page-bg-overlay {
    background:
        radial-gradient(
            circle at 50% 30%,
            var(--gradient-start) 0%,
            var(--gradient-mid) 65%,
            var(--gradient-end) 100%
        );
    z-index: -1;
}

.ambient-gradient {
    background:
        linear-gradient(
            to bottom,
            rgba(0, 0, 0, 0.03),
            transparent,
            rgba(0, 0, 0, 0.03)
        );
    z-index: 0;
    pointer-events: none;
}

/* =========================================================
   BUTTONS
   ========================================================= */

button {
    background: transparent;
    border: none;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--jako-text);
    cursor: pointer;
    transition: all 0.3s ease;
}

button:hover {
    opacity: 0.8;
}

button:active {
    transform: scale(0.92);
}

.icon-stroke {
    width: 1.1rem;
    height: 1.1rem;
    stroke: var(--jako-text);
    transition: stroke 0.3s ease;
}

button:hover .icon-stroke {
    stroke: var(--icon-hover);
}

/* =========================================================
   FOOTER / CONTROL BAR
   ========================================================= */

.header-style-bar {
    height: 42px;
    flex-shrink: 0;
    display: flex;
    align-items: center;
    width: 100%;
    padding: 0 1.2rem;
    z-index: 100;
    border-top: 1px solid var(--jako-border);
    background: var(--jako-glass);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    gap: 0.5rem;
}

.header-style-bar.site-header {
    height: auto;
    min-height: 42px;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 0.3rem 0.8rem;
    border-top: 0;
    border-bottom: 1px solid var(--jako-border);
}

.site-brand {
    font-family: 'Orbitron', sans-serif;
    font-size: 10px;
    font-weight: 700;
    letter-spacing: 0.12em;
    white-space: nowrap;
}

.site-brand-lockup {
    display: inline-flex;
    align-items: center;
    gap: 0.3rem;
    white-space: nowrap;
}

.site-brand-mark {
    display: block;
    width: 22px;
    height: 22px;
    fill: var(--jako-text);
    flex: 0 0 auto;
}

.site-header .header-controls {
    max-width: 100%;
    height: auto;
    flex-wrap: wrap;
    justify-content: flex-end;
    gap: 0.2rem;
}

.header-control {
    height: 28px;
    min-width: 28px;
    padding: 0 0.4rem;
    border: 1px solid transparent;
    border-radius: 4px;
    font-size: 7px;
    text-decoration: none;
}

.header-github-button {
    display: flex;
    align-items: center;
    justify-content: center;
}

.github-icon {
    display: block;
    width: 15px;
    height: 15px;
    fill: currentColor;
}

body.dark-mode .theme-switch-knob {
    transform: translateX(6px);
}

.pdf-footer {
    justify-content: center;
}

.pdf-footer .actions-group {
    margin-left: 0;
    justify-content: center;
}

.actions-group {
    display: flex;
    align-items: center;
    gap: 0.3rem;
    height: 100%;
    margin-left: auto;
}

.btn-control-action {
    padding: 0 0.6rem;
    height: 100%;
    font-family: 'Orbitron', sans-serif;
    font-size: 8px;
    font-weight: 700;
    letter-spacing: 0.1em;
}

/* =========================================================
   MAIN VIEWPORT
   ========================================================= */

.vision-scroll-viewport {
    width: 100%;
    max-width: 560px;
    padding: 0.3rem 0.8rem;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    gap: 0.35rem;
    flex-grow: 1;
    justify-content: flex-start;
    align-items: center;
}

.engine-section-group {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.35rem;
    width: 100%;
}

/* =========================================================
   CARDS
   ========================================================= */

.vision-card {
    background: var(--jako-glass);
    border: 1px solid var(--jako-border);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    padding: 0.4rem 0.8rem;
    border-radius: 4px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.015);
    width: 100%;
}

.vision-card h2 {
    font-family: 'Orbitron', sans-serif;
    font-size: 8px;
    letter-spacing: 0.15em;
    margin-bottom: 0.25rem;
    border-bottom: 1px solid var(--jako-border);
    padding-bottom: 0.12rem;
    text-transform: uppercase;
}

/* =========================================================
   engine
   ========================================================= */

.engine-title-block {
    display: flex;
    flex-direction: column;
    font-family: 'Orbitron', sans-serif;
    font-size: 10.5px;
    font-weight: 700;
    letter-spacing: 0.15em;
    margin-bottom: 0.25rem;
}

.engine-title-block span.sub-title {
    font-size: 5.5px;
    opacity: 0.6;
    letter-spacing: 0.15em;
}

.engine-box {
    display: flex;
    gap: 0.8rem;
    align-items: center;
}

.engine-avatar {
    width: 60px;
    height: 60px;
    border-radius: 4px;
    object-fit: cover;
    flex-shrink: 0;
}

.engine-photo-links {
    display: flex;
    flex: 0 0 60px;
    flex-direction: column;
    align-items: stretch;
    gap: 0.2rem;
}

.engine-github-button {
    justify-content: center;
    height: auto;
    padding: 0.15rem 0;
    border: 1px solid var(--jako-border);
    border-radius: 4px;
    font-size: 6px;
    line-height: 1.2;
    text-decoration: none;
}

.engine-text {
    line-height: 1.3;
    font-size: 11px;
    font-weight: 500;
}

/* =========================================================
   dropSphere / EXPERIENCE
   ========================================================= */

.dropSphere-group {
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
    font-size: 11.5px;
    font-weight: 500;
}

.dropSphere-row {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    width: 100%;
}

.dropSphere-value {
    flex: 1;
    min-width: 0;
    font-size: 11px;
    text-align: left;
}

.dropSphere-label {
    flex-shrink: 0;
    min-width: 120px;
    margin-left: 1rem;
    padding-top: 1px;
    font-family: 'Orbitron', sans-serif;
    font-size: 7.5px;
    font-weight: 700;
    letter-spacing: 0.08em;
    opacity: 0.7;
    text-align: right;
    text-transform: uppercase;
}

.dropSphere-row:last-child {
    border-bottom: none;
    padding-bottom: 0;
}

.project-platform {
    font: inherit;
    overflow-wrap: anywhere;
}

.project-location {
    margin-left: 0.2rem;
    font-size: 8px;
    opacity: 0.5;
    text-transform: uppercase;
}

.dropSphere-row[data-project-id] [hidden] {
    display: none !important;
}

.experience-tools {
    display: block;
    margin-top: 0.12rem;
    font-family: 'Orbitron', sans-serif;
    font-size: 6px;
    font-weight: 700;
    letter-spacing: 0.08em;
    opacity: 0.6;
}

/* =========================================================
   PRINT / PDF
   ========================================================= */

@media print {

    html,
    body {
        height: auto !important;
        min-height: 0 !important;
        max-height: none !important;
        overflow: visible !important;
        background: #fff !important;
    }

    /*
     * Disable all ambient visual layers.
     * These fixed gradients can be rasterized incorrectly
     * by browser PDF/print engines and produce black or
     * transparent blocks.
     */
    #page-bg-overlay,
    .ambient-gradient {
        display: none !important;
    }

    /*
     * Remove the interactive control bar from the PDF.
     */
    .header-style-bar {
        display: none !important;
    }

    /*
     * Disable the scrolling behavior used by the web UI.
     */
    .vision-scroll-viewport {
        overflow: visible !important;
        min-height: 0 !important;
        height: auto !important;
        max-height: none !important;
        background: #fff !important;
    }

    /*
     * Convert glass cards into solid printable cards.
     */
    .vision-card {
        box-shadow: none !important;
        border: 1px solid #ddd !important;
        background: #fff !important;
        backdrop-filter: none !important;
        -webkit-backdrop-filter: none !important;
    }

    /*
     * Ensure the browser preserves the intended print colors
     * without relying on transparency or compositing.
     */
    * {
        -webkit-print-color-adjust: exact !important;
        print-color-adjust: exact !important;
    }
}

/* =========================================================
   engine HEADER
   ========================================================= */

.engine-header {
    width: 100%;
    max-width: 560px;
    padding: 0.3rem 0.8rem;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 8fr;
    gap: 0.35rem;
    flex-shrink: 0;
}

/* =========================================================
   SCROLL / mediaS
   ========================================================= */

.vision-scroll-viewport {
    overflow-y: auto;
    overflow-x: hidden;
    min-height: 0;
    scrollbar-width: thin;
}

.media-toggle {
    cursor: pointer;
}

.media-preview {
    display: none;
    width: 100%;
    padding: 0.5rem 0;
}

.media-preview img {
    display: block;
    width: 100%;
    height: auto;
    border-radius: 4px;
}

.media-preview.is-open {
    display: block;
}

.media-gallery.is-open {
    display: flex;
    flex-direction: row;
    gap: 0.4rem;
    overflow-x: auto;
    overscroll-behavior-x: contain;
    scrollbar-width: thin;
}

.media-gallery .media-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.2rem;
    cursor: pointer;
    flex: 0 0 96px;
    padding: 0;
    text-align: center;
}

.media-gallery .media-item img {
    width: 100%;
    height: 72px;
    object-fit: contain;
    border: 1px solid var(--jako-border);
    border-radius: 4px;
    background: #fff;
}

.media-gallery .media-item span {
    font-family: 'Orbitron', sans-serif;
    font-size: 6px;
    font-weight: 700;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    opacity: 0.6;
}

.media-gallery .media-item:focus-visible {
    outline: 1px solid var(--jako-text);
    outline-offset: 2px;
}


/* =========================================================
   SHARED SECTION HEADER
   ========================================================= */

.section-heading {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid var(--jako-border);
    padding-bottom: 0.12rem;
    margin-bottom: 0.25rem;
}

.section-heading h2 {
    margin-bottom: 0;
    border-bottom: none;
    padding-bottom: 0;
}

.section-heading > span {
    font-family: 'Orbitron', sans-serif;
    font-size: 5.5px;
    font-weight: 700;
    letter-spacing: 0.08em;
    opacity: 0.5;
    text-transform: uppercase;
}

.metadata {
    opacity: 0.5;
    font-size: 8px;
}
'@

foreach ($relativePath in $files.Keys) {
    $target = Join-Path $root $relativePath
    $directory = Split-Path -Parent $target

    if (-not (Test-Path -LiteralPath $directory)) {
        New-Item -ItemType Directory -Path $directory -Force | Out-Null
    }

    Set-Content -LiteralPath $target -Value $files[$relativePath] -Encoding utf8 -NoNewline
    Write-Host "Updated: $relativePath"
}

Write-Host ""
Write-Host "JAKO CV source files synchronized from run.ps1." -ForegroundColor Green
Write-Host "index.html, src/scripts/main.js, and src/styles/global.css were overwritten."
