# JAKO Portfolio — Canonical Generator
# Source: bio.ps1 | Output: index.html

<#
JAKO ARCHITECTURE
-----------------

                         JAKO
                           |
                        RESEARCH
                           |
                       JAKO.STUDIO
                           |
                 +---------+---------+
                 |                   |
                PULL                PUSH
                 |                   |
          IMAGINE / INHALE     EXHALE / CREATE
                 |                   |
                 +---------+---------+
                           |
                         SPHERE
                           |
                          DROPS
                           |
                        RELATIONS


FRONTEND ARCHITECTURE
---------------------

SUN    — Glass header and global controls.
BODY   — Profile, Education, and Job Experience.
SPIRIT — Projects and Books.

SUN
└── site-header
    ├── site-brand
    └── header-controls (GitHub, PDF, Theme Toggle)

BODY
├── section-profile
├── section-education
│   └── list-education
└── section-experience
    └── list-experience

SPIRIT
├── section-projects
│   └── list-projects
└── section-books
    └── list-books

src/global.css
│
├── 01. DESIGN TOKENS
│   ├── Colors
│   ├── Typography
│   ├── Borders and surfaces
│   └── Spacing and transitions
│
├── 02. THEMES
│   ├── Light
│   └── Dark (Default)
│
├── 03. GLOBAL FOUNDATION
│   ├── Reset and box-sizing
│   ├── Body and viewport
│   └── Accessibility
│
├── 04. SHARED COMPONENTS
│   ├── Buttons
│   ├── SVG icons
│   └── Glass surfaces
│
├── 05. SUN
│   ├── Site header
│   ├── Brand
│   └── Header controls
│
├── 06. BODY
│
├── 07. SPIRIT
│
├── 08. SHARED INTERACTIONS
│
└── 09. RESPONSIVE AND PRINT

GENERATOR CONTRACT
------------------

bio.ps1 is the canonical source for the public portfolio.
bio.ps1 generates index.html at the repository root and writes
CSS and JavaScript to src/global.css and src/main.js.

# ============================================================
# JAKO — ARTISTIC STRATEGY & BIO MANIFESTO
# Version: 1.0
# Date: 2026-10-16
# ============================================================

<#
STRATEGIC TRANSITION
--------------------

JAKO is evolving from a conventional CV / portfolio into BIO:
a living index of an artistic investigation.

The purpose of BIO is not merely to present professional
experience, education, skills or completed projects. It is to
make visible the evolution of a multidisciplinary practice
connecting visual arts, design, physical production, software,
data, movement, nature and systems.

BIO documents the relationship between the artist, the research,
the works and the evolving JAKO ecosystem.

ARTISTIC DIRECTION
------------------

The central trajectory moves through:

IMAGE
  -> MATTER
  -> SPACE
  -> BODY
  -> NATURE
  -> SYSTEM
  -> TIME
  -> MOVEMENT
  -> CODE
  -> ART

The investigation develops toward BIOKINETIC ART and LAND ART,
exploring how movement, material, energy, territory, biological
processes and computational systems can become artistic
language.

The BIO MANIFESTO establishes the conceptual origin.
The BIOKINETIC ENGINE develops that origin through research,
notation, mathematical models, software and physical works.

JAKO is presented as an evolving artistic investigation,
not merely as a startup, software company or conventional
professional profile.

PROJECT-FIRST STRATEGY
----------------------

The strategic priority is to develop, document, exhibit and
commercialize JAKO projects rather than organize the entire
practice around obtaining employment.

Projects are treated as active artistic and technological
entities within one interconnected ecosystem.

ACTIVE indicates that a project remains part of the current
research, development, production or commercialization
strategy. It does not imply that the project is finished,
publicly available or generating revenue.

The objective is to turn research into tangible works,
demonstrable systems, exhibitions, commissions, products,
collaborations and sustainable sources of income.

Professional experience, education and technical skills remain
visible as evidence of the capacities supporting this practice.
They no longer define the primary narrative.

BIO AS AN ARTISTIC INTERFACE
----------------------------

BIO is both a public-facing identity and an interface for
navigating the JAKO ecosystem.

Its structure preserves the existing SUN / BODY / SPIRIT
architecture:

SUN:
  Identity, navigation and primary actions.

BODY:
  Biography, education, professional experience and the
  biokinetic research engine.

SPIRIT:
  Projects, works, publications and conceptual research.

The interface should prioritize clarity, visual coherence,
direct access to works and the relationships between entities.

The BIO is not intended to imitate a conventional résumé.
It should function as a concise entry point into a larger
artistic investigation.

PROJECT STATUS AND CHRONOLOGY
-----------------------------

Projects may remain ACTIVE while their research and production
continue.

DATE should represent the documented year or date of the
first version, origin or release, according to the entity's
defined data model. It must not be confused with the latest
update, current status or completion date.

Chronology documents the evolution of the investigation.
Status documents its present operational condition.

ARTISTIC DOCUMENTATION
---------------------

Texts describing individual works should be autonomous and
suitable for exhibition contexts.

Whenever appropriate, the work itself should be the subject
of the text, written in the third person rather than framed
primarily as a personal résumé statement.

Documentation should distinguish:
- Conceptual intention.
- Research and development process.
- Material and technical decisions.
- Observable characteristics of the work.
- Relationships to movement, nature, space and time.
- Exhibition, publication or production history.

Claims about completed works, exhibitions, funding, awards
and institutional affiliations must be supported by evidence.

OPPORTUNITY STRATEGY
--------------------

Artistic opportunities are tracked as a dedicated registry,
separate from the core JAKO project entities.

Calls for exhibitions, residencies, commissions, publications,
grants and festivals are evaluated according to:

- Eligibility and geographic restrictions.
- Artistic and conceptual affinity.
- Relevance to the biokinetic investigation.
- Production and travel feasibility.
- Funding, fees and material support.
- Potential for exhibition, documentation and future sales.
- Strategic value for the JAKO ecosystem.

An opportunity is not considered verified merely because
it appears on social media.

Unknown conditions must remain explicitly marked UNKNOWN
or VERIFY until supported by a reliable source.

GOVERNING PRINCIPLE
-------------------

JAKO connects research, works, systems and opportunities
within a single evolving artistic practice.

BIO makes that practice legible.
The projects embody the investigation.
The works make it visible.
The documentation preserves its evolution.
The opportunity registry connects it to exhibitions,
commissions, residencies, audiences and potential income.

The objective is not simply to describe an artist's past,
but to make the ongoing investigation visible and actionable.

```powershell
# ============================================================
# JAKO — ART OPPORTUNITY REGISTRY
# Snapshot: 2026-10-21
# Format: Unified Opportunity & Strategic Priority Table
# Source: User-provided screenshots and conversation records
# ============================================================

$ART_OPPORTUNITIES_PLAINTEXT = @'
JAKO VISION — ACTIVE OPPORTUNITY REGISTER
=========================================

ID | OPPORTUNITY | LOCATION | DEADLINE | STATUS | PRIORITY | STRATEGIC FIT | NEXT ACTION

EVENT-001 | Learning Materials International Artist in Residence 2027 | Helsinki, Finland | 2026-10-26 | OPEN | VERY HIGH | Material research, socially engaged art, international residency | Submit English bio, motivation, work plan and portfolio. Official HIAP deadline: 15:00 EEST.
EVENT-002 | Jan van Eyck Academie Residency 2028 | Maastricht, Netherlands | 2026-12-01 | OPEN | VERY HIGH | Interdisciplinary research, material culture, photography, audiovisual, printing | Verify fees, financial conditions and full requirements; prepare research proposal.
EVENT-003 | Foundation House Winter 2027 Artist Residency | UNKNOWN | 2026-11-15 | VERIFY | CONDITIONAL | Interdisciplinary practice, environment, wellness, social justice | Verify location, funding and visa restrictions before applying.
EVENT-004 | Suboart Magazine — November / December 2026 Print Issues | Print / online | 2026-10-31 | OPEN | HIGH | Artwork documentation and international visibility | Select up to six images; confirm publication terms.
EVENT-005 | 2027 ACC NEXT Emerging Asian Artists | South Korea | 2026-10-25 | VERIFY | CONDITIONAL | Experimental art and technology | Confirm eligibility; do not assume eligibility from artistic discipline alone.
EVENT-006 | Still Life Photography — Blank Wall Gallery | Athens, Greece | 2026-10-22 | OPEN | HIGH / CONDITIONAL | Photography and exhibition | Check fees, submission rules and availability of a suitable photographic series.
EVENT-007 | Dear Creatures, Big and Small | Online | 2026-11-02 | VERIFY | CONDITIONAL | Animal-world theme, visual art | Confirm fee, eligibility and direct relevance of available work.
EVENT-008 | Aquatic Wonders — TERAVARNA | UNKNOWN | 2026-11-15 | VERIFY | CONDITIONAL | Water-themed art and environmental research | Verify entry fee, eligibility and award terms.
EVENT-009 | Women in Arts Magazine — Issue 01 | Print / online | 2026-10-31 | VERIFY | CONDITIONAL | Publication and visibility | Verify eligibility and fees before proceeding.
EVENT-011 | La Huella Negra — Emerging Artists Open Call | Buenos Aires, Argentina | UNKNOWN | VERIFY | HIGH / CONDITIONAL | Painting, drawing, photography, printmaking, sculpture | Confirm whether submissions remain open; advertised exhibition date was 2026-11-06.
EVENT-012 | Festival Internacional Caminar — April 2027 | La Boca / Isla Maciel, Buenos Aires, Argentina | 2026-11-07 | OPEN | VERY HIGH | Walking, territory, movement, Land Art, biokinetic research | Develop a proposal connecting movement, body and territory; verify full terms.
EVENT-013 | Art@PSP — Exterior Tile Mural | United States | UNKNOWN | VERIFY | LOW / BLOCKED | Public art and large-scale mural | Published US residency/work requirement appears incompatible; verify before investing time.
EVENT-014 | Artist Residency Madrid — estudio_inverso x flame.foundation | Madrid, Spain | UNKNOWN | VERIFY | HIGH / CONDITIONAL | Material research, installation, audiovisual practice | Confirm dates, costs, eligibility and application deadline.
EVENT-015 | Premios APIM 2026 — Illustration | UNKNOWN | 2026-10-21 | VERIFY | CONDITIONAL | Illustration and graphic image | Deadline is today according to the supplied record; verify cutoff and eligibility immediately.
EVENT-016 | Málaga Festival Fund & Co-Production Event | Málaga, Spain | 2026-10-22 | VERIFY | CONDITIONAL | Audiovisual and moving image | Confirm whether experimental media art is eligible and whether a production company is required.
EVENT-017 | Perform Europe | Europe / international | 2026-10-22 | VERIFY | CONDITIONAL | Performance, body-based research, movement | Verify applicant eligibility and whether individual artists can apply.
EVENT-018 | Multidisciplinary Design Open Call | UNKNOWN | 2026-10-26 | VERIFY | CONDITIONAL | Visual communication, design, interdisciplinary practice | Identify organizer and official application requirements.
EVENT-019 | Residencia La Nave | UNKNOWN | 2026-10-31 | VERIFY | CONDITIONAL | Material research, installation, interdisciplinary practice | Identify the institution, location, funding and eligibility.
EVENT-020 | Puertas Creativas — Portfolio Workshop | Online | 2026-11 (exact date unknown) | VERIFY | OPTIONAL | BIO, portfolio and opportunity strategy | Confirm schedule, fee, language and registration.
EVENT-021 | ART MATTERS 18 — Galerie Biesenbach | Cologne, Germany / online | 2026-10-31 | VERIFY | HIGH / CONDITIONAL | Contemporary visual art and interdisciplinary practice | Verify official call, fees, selection process and rights.
EVENT-022 | International Arts Competition 2026 | Sydney, Australia (final) | 2026-11-05 | VERIFY | CONDITIONAL | Experimental visual art | Verify age limits, entry fees, awards and travel obligations.
EVENT-023 | Otros Mundos Posibles — RamarRaíz Editora | UNKNOWN | 2026-12-10 | OPEN | VERY HIGH | Land Art, nature, territory, ecological and biokinetic research | Obtain full guidelines and develop a proposal about alternative ways of inhabiting the world.
EVENT-024 | CIFRA International Prize for Video Artists | UNKNOWN | 2026-11-01 | VERIFY | HIGH / CONDITIONAL | Video art, screen-native work, digital media | Verify official terms, submission rules, fees and rights.
EVENT-025 | The Bray — 2027 Residency | UNKNOWN | 2027-03-01 | OPEN | HIGH / CONDITIONAL | Sculpture, material research, artistic development | Verify location, international eligibility, costs and support.
EVENT-026 | Nexus Art — Open Call for Artists | UNKNOWN | UNKNOWN | VERIFY | CONDITIONAL | Multidisciplinary visual art | Confirm current opening, deadline, fees, exhibition location and rights.
EVENT-027 | Becas Leonardo — Fundación BBVA | Regional eligibility to verify | 2026-10-21 | VERIFY | CONDITIONAL | Research, technology and artistic development | Deadline is today according to supplied record; verify eligibility and submission cutoff immediately.
EVENT-028 | Code:ART Festival 2027 | Palo Alto, California, USA | 2026-11-16 | OPEN | HIGH | Interactive media art, software, sensors, movement | Develop a feasible interactive proposal; verify budget and production conditions.
EVENT-030 | apexart — Open Call | New York, USA | 2026-10-31 | VERIFY | HIGH / CONDITIONAL | Contemporary art, installation and media art | Confirm the exact call format, eligibility and official submission terms.
EVENT-031 | Art Explora — Artist Residency 2027 | Montmartre, Paris, France | 2026-10-30 | OPEN | HIGH | International artistic research | Verify residency duration, funding, requirements and eligibility.
EVENT-032 | Amsterdam Light Festival — Edition 16 | Amsterdam, Netherlands | 2026-12-07 | OPEN | VERY HIGH | Light, public space, interactive systems, biokinetic art | Download the official artist briefing and prepare a technically feasible proposal.
EVENT-033 | Salón de Artes Visuales BROU 2026 | Uruguay | 2026-10-22 | VERIFY | HIGH / CONDITIONAL | Contemporary visual art | Verify official rules, eligibility, awards and application channel.
EVENT-034 | artspace LAF — Exhibition Program 2027 | Seoul, South Korea | UNKNOWN | VERIFY | HIGH / CONDITIONAL | Experimental and contemporary art | Confirm application window, programme format and conditions.
EVENT-035 | Tokyo International Foto Awards | International | UNKNOWN | VERIFY | CONDITIONAL | Photography and visual documentation | Verify current deadline, categories, fees and image rights.
EVENT-036 | 101 Artbook — Texture Edition | UNKNOWN | UNKNOWN | VERIFY | MEDIUM / CONDITIONAL | Materiality, texture, visual documentation | Confirm deadline, publication terms, costs and rights.
EVENT-037 | EARTHBOUND — Art Inspired by Nature | International | UNKNOWN | VERIFY | HIGH / CONDITIONAL | Nature, landscape, Land Art, ecological research | Confirm current opening, deadline and official submission terms.
EVENT-040 | Medellin Street Art Festival 2027 | Medellin, Colombia | 2026-10-28 | OPEN | HIGH | Urban art and local visibility | Verify requirements and submit before the deadline.
EVENT-041 | Fiera — Arte no domesticato | Mexico City, Mexico | UNKNOWN | VERIFY | MEDIUM HIGH / CONDITIONAL | Contemporary art, graphics, installation, objects | Request full call; verify deadline and eligibility.
EVENT-043 | Chiasso Perduto — Artist Group Residency | Florence, Italy | 2026-10-30 | OPEN | HIGH | International residency and artistic research | Prepare portfolio and confirm official submission channel.
EVENT-044 | 2222 Main Street Mural Project | Columbia, South Carolina, USA | 2026-10-23 | OPEN | HIGH | Large-scale mural production and public art | Review official RFQ and submit before the deadline.
EVENT-045 | Waterford Walls Festival 2027 | Waterford, Ireland | 2026-12-31 | OPEN | HIGH | International mural practice and public art | Prepare mural portfolio; confirm official deadline and production support.
EVENT-046 | uyArtistas — International Call | Online / Uruguay | UNKNOWN | VERIFY | MEDIUM HIGH / CONDITIONAL | Exhibition, digital art, online visibility | Verify deadline, fees, eligibility and prize conditions.

STATUS RULES
OPEN = Published deadline has not passed and the call is advertised as open.
VERIFY = Deadline, eligibility, official source, terms or current availability requires confirmation.
CLOSED = Deadline has passed; closed events are excluded from this active registry.
CONDITIONAL = Pursue only after eligibility, thematic fit and feasibility are confirmed.

PRIORITY RULES
VERY HIGH = Strong conceptual alignment and substantial potential to advance JAKO research.
HIGH = Strong artistic, exhibition, production or commercial relevance.
MEDIUM HIGH = Useful visibility or development potential, subject to verification.
CONDITIONAL = Eligibility or work suitability must be confirmed.
OPTIONAL = Useful supporting resource rather than a direct artwork opportunity.

DATA INTEGRITY
- Preserve original IDs.
- Do not invent deadlines, URLs, funding, eligibility or official affiliations.
- UNKNOWN means the source does not provide sufficient information.
- VERIFY does not mean the opportunity is confirmed open.
- Recalculate status against the current date when refreshing the register.
- Exclude closed events from the active registry.
- Keep source facts separate from strategic assessments.
- Confirm all terms through official sources before applying.

JAKO STRATEGIC PRINCIPLE
Prioritize opportunities that advance the artistic investigation,
produce tangible work, strengthen documentation and create
realistic paths toward exhibitions, commissions and sustainable
artistic income.
'@

DATA RULES
- Preserve event IDs once assigned.
- Never invent deadlines, URLs, grants, eligibility conditions or official affiliations.
- Keep screenshot-derived information distinct from verified official information.
- Do not treat a social-media post as proof of an official institutional affiliation.
- Use UNKNOWN when a field is not present in the available source.
- Recalculate status against the snapshot date when refreshing the registry.
- Recover EVENT-011–037 from the original source before marking the registry complete.
- Keep the plaintext registry as the source record; tables B and C are its operational summaries.

#>

$ErrorActionPreference = 'Stop'
$ProjectRoot =$PSScriptRoot
$OutputPath = Join-Path $ProjectRoot 'index.html'
$CssPath = Join-Path $ProjectRoot 'src/global.css'
$JsPath = Join-Path $ProjectRoot 'src/main.js'

$css = @'
        /* =========================================================
           1. DESIGN TOKENS & GLOBAL RESETS (DEFAULT: DARK MODE)
           ========================================================= */
        :root {
            --jako-bg: #111315;
            --jako-text: #f4f5f7;
            --jako-border: rgba(255, 255, 255, 0.16);
            --jako-glass: rgba(25, 28, 31, 0.88);
            --gradient-start: rgba(255, 255, 255, 0.04);
            --gradient-mid: rgba(17, 19, 21, 0.86);
            --gradient-end: #111315;
            --icon-hover: #fff;
        }

        body.light-mode {
            --jako-bg: #f4f5f7;
            --jako-text: #0d0d0d;
            --jako-border: rgba(0, 0, 0, 0.12);
            --jako-glass: rgba(255, 255, 255, 0.88);
            --gradient-start: rgba(0, 0, 0, 0.02);
            --gradient-mid: rgba(244, 245, 247, 0.85);
            --gradient-end: #f4f5f7;
            --icon-hover: #000;
        }

        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: inherit;
        }

        html, body {
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
            justify-content: flex-start;
            align-items: center;
            user-select: none;
            position: relative;
            letter-spacing: 0.02em;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        ::selection {
            background-color: var(--jako-text);
            color: var(--jako-bg);
        }

        button, span, div {
            -webkit-tap-highlight-color: transparent;
        }

        /* Ambient Background Layers */
        #page-bg-overlay, .ambient-gradient {
            position: fixed;
            inset: 0;
        }

        #page-bg-overlay {
            background: radial-gradient(
                circle at 50% 30%,
                var(--gradient-start) 0%,
                var(--gradient-mid) 65%,
                var(--gradient-end) 100%
            );
            z-index: -1;
        }

        .ambient-gradient {
            background: linear-gradient(
                to bottom,
                rgba(0, 0, 0, 0.03),
                transparent,
                rgba(0, 0, 0, 0.03)
            );
            z-index: 0;
            pointer-events: none;
        }

        /* =========================================================
           2. MACRO-BLOCK 1: SUN — CONTINUOUS GLASS HEADER
           ========================================================= */
        .header-style-bar {
            flex-shrink: 0;
            display: flex;
            align-items: center;
            width: 100%;
            min-height: 42px;
            padding: 0 1rem;
            z-index: 100;
            background: var(--jako-glass);
            border-bottom: 1px solid var(--jako-border);
            backdrop-filter: blur(24px) saturate(125%);
            -webkit-backdrop-filter: blur(24px) saturate(125%);
        }

        .header-style-bar.site-header {
            justify-content: space-between;
            gap: 1rem;
            min-height: 46px;
            padding: 0 1rem;
            border-top: 0;
        }

        .site-brand-lockup {
            display: inline-flex;
            align-items: center;
            gap: 0.45rem;
            min-width: 0;
            color: var(--jako-text);
            text-decoration: none;
            white-space: nowrap;
        }

        .site-brand-mark {
            display: block;
            width: 21px;
            height: 21px;
            fill: currentColor;
            opacity: 0.92;
            flex: 0 0 auto;
        }

        .site-brand {
            font-family: 'Orbitron', sans-serif;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.2em;
        }

        .header-controls {
            display: flex;
            align-items: stretch;
            flex: 0 0 auto;
            min-height: 30px;
            overflow: hidden;
            color: var(--jako-text);
            background: var(--jako-glass);
            border: 1px solid var(--jako-border);
            border-radius: 3px;
            box-shadow:
                inset 0 1px 0 rgba(255, 255, 255, 0.08),
                0 2px 8px rgba(0, 0, 0, 0.035);
        }

        .header-control {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 38px;
            min-height: 30px;
            padding: 0;
            color: inherit;
            background: transparent;
            border: 0;
            border-radius: 0;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.2s ease, color 0.2s ease;
        }

        .header-control + .header-control {
            border-left: 1px solid var(--jako-border);
        }

        .header-control:hover {
            background: var(--jako-border);
        }

        .header-control:active {
            background: var(--jako-border);
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
        }

        .header-control:focus-visible,
        .site-brand-lockup:focus-visible {
            outline: 1px solid var(--jako-text);
            outline-offset: -3px;
        }

        .header-icon {
            display: block;
            width: 14px;
            height: 14px;
            color: currentColor;
            fill: currentColor;
            stroke: none;
            opacity: 0.76;
            transition: opacity 0.2s ease;
        }

        .icon-stroke {
            fill: none;
            stroke: currentColor;
            stroke-width: 1.8;
            stroke-linecap: round;
            stroke-linejoin: round;
        }

        .theme-icon {
            fill: none;
            stroke: currentColor;
            stroke-width: 1.35;
            stroke-linecap: round;
            stroke-linejoin: round;
        }

        .theme-icon-sun {
            fill: currentColor;
            stroke: none;
        }

        .header-control:hover .header-icon {
            opacity: 1;
        }

        /* =========================================================
           3. VIEWPORT & CARD SYSTEM
           ========================================================= */
        .vision-scroll-viewport {
            width: 100%;
            max-width: 580px;
            padding: 0.5rem 0.8rem 1rem 0.8rem;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            flex-grow: 1;
            overflow-y: auto;
            overflow-x: hidden;
            scrollbar-width: thin;
        }

        .vision-card {
            background: var(--jako-glass);
            border: 1px solid var(--jako-border);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            padding: 0.6rem 0.8rem;
            border-radius: 4px;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.05);
            width: 100%;
        }

        body.light-mode .vision-card {
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.02), inset 0 1px 0 rgba(255, 255, 255, 0.4);
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--jako-border);
            padding-bottom: 0.2rem;
            margin-bottom: 0.4rem;
        }

        .section-heading > span {
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.1em;
            opacity: 0.5;
            text-transform: uppercase;
            text-align: left;
        }

        .section-heading h2 {
            font-family: 'Orbitron', sans-serif;
            font-size: 8.5px;
            font-weight: 700;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            text-align: right;
        }

/* =========================================================
           4. MACRO-BLOCK 2: BODY (PROFILE, EDUCATION, EXPERIENCE)
           ========================================================= */
        .engine-box {
            display: flex;
            gap: 0.8rem;
            align-items: center;
        }

        .engine-avatar {
            width: 62px;
            height: 62px;
            border-radius: 4px;
            object-fit: cover;
            border: 1px solid var(--jako-border);
            flex-shrink: 0;
            cursor: pointer;
            transition: opacity 0.2s ease;
        }

        .engine-avatar:hover {
            opacity: 0.85;
        }

        /* Profile Title Block & Embedded SVG Button */
        .engine-title-block {
            font-family: 'Orbitron', sans-serif;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.15em;
            margin-bottom: 0.25rem;
            display: flex;
            align-items: center;
            gap: 0.4rem;
        }

        .profile-photo-btn {
            background: transparent;
            border: none;
            padding: 0;
            margin: 0;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            color: var(--jako-text);
            opacity: 0.6;
            transition: opacity 0.2s ease, transform 0.15s ease;
        }

        .profile-photo-btn:hover {
            opacity: 1;
            transform: scale(1.1);
        }

        .profile-photo-icon {
            width: 13px;
            height: 13px;
            fill: none;
            stroke: currentColor;
            stroke-width: 1.8;
            stroke-linecap: round;
            stroke-linejoin: round;
        }

        .engine-text {
            line-height: 1.35;
            font-size: 11px;
            font-weight: 500;
            opacity: 0.9;
        }

        /* Entity Row Styles */
        .dropSphere-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        .dropSphere-row {
            display: flex;
            flex-direction: column;
            width: 100%;
            cursor: pointer;
            transition: opacity 0.15s ease;
        }

        .dropSphere-row:hover {
            opacity: 0.85;
        }

        .dropSphere-value {
            display: flex;
            flex-direction: column;
            gap: 0.15rem;
            width: 100%;
            font-size: 11px;
            line-height: 1.3;
        }

        .dropSphere-line-primary {
            display: flex;
            align-items: baseline;
            gap: 0.4rem;
            width: 100%;
            flex-wrap: wrap;
        }

        .dropSphere-line-secondary {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            width: 100%;
            flex-wrap: wrap;
        }

        .dropSphere-label {
            flex-shrink: 0;
            font-family: monospace;
            font-size: 8px;
            font-weight: 500;
            letter-spacing: 0.02em;
            opacity: 0.55;
            line-height: 1;
            white-space: nowrap;
        }

        .experience-tools {
            display: inline-block;
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.08em;
            opacity: 0.6;
        }

        .metadata {
            opacity: 0.55;
            font-size: 8.5px;
        }

        /* =========================================================
           5. MEDIA GALLERY & PREVIEWS
           ========================================================= */
        .media-preview {
            display: none;
            width: 100%;
            padding: 0.4rem 0 0.2rem 0;
        }

        .media-preview.is-open {
            display: flex;
        }

        .media-gallery {
            flex-direction: row;
            gap: 0.4rem;
            overflow-x: auto;
            scrollbar-width: thin;
        }

        .media-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 0.2rem;
            cursor: pointer;
            flex: 0 0 88px;
            background: transparent;
            border: none;
        }

        .media-item img {
            width: 100%;
            height: 64px;
            object-fit: contain;
            border: 1px solid var(--jako-border);
            border-radius: 4px;
            background: rgba(255, 255, 255, 0.8);
            transition: border-color 0.2s ease, transform 0.15s ease;
        }

        .media-item:hover img {
            transform: scale(1.02);
        }

        .media-item.is-selected img {
            border-color: var(--jako-text);
            box-shadow: 0 0 0 1px var(--jako-text);
        }

        .media-item span {
            font-family: 'Orbitron', sans-serif;
            font-size: 6px;
            font-weight: 700;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            opacity: 0.6;
        }

        .selected-media-preview {
            width: 100%;
        }

        .selected-media-preview img {
            width: 100%;
            height: auto;
            max-height: 480px;
            object-fit: contain;
            border-radius: 4px;
            border: 1px solid var(--jako-border);
            margin-top: 0.3rem;
            background: rgba(0, 0, 0, 0.02);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
        }

        /* =========================================================
           6. PRINT / PDF STYLES
           ========================================================= */
        @media print {
            html, body {
                height: auto !important;
                max-height: none !important;
                overflow: visible !important;
                background: #fff !important;
                color: #000 !important;
            }

            #page-bg-overlay, .ambient-gradient, .header-style-bar {
                display: none !important;
            }

            .vision-scroll-viewport {
                overflow: visible !important;
                height: auto !important;
                max-height: none !important;
                padding: 0 !important;
                max-width: 100% !important;
            }

            .vision-card {
                box-shadow: none !important;
                border: 1px solid #ddd !important;
                background: #fff !important;
                backdrop-filter: none !important;
                margin-bottom: 0.5rem;
                page-break-inside: avoid;
            }

            .media-preview.is-open {
                display: flex !important;
            }

            .selected-media-preview img {
                max-height: none !important;
                page-break-inside: avoid;
            }

            * {
                -webkit-print-color-adjust: exact !important;
                print-color-adjust: exact !important;
            }
        }

        @media (max-width: 360px) {
            .site-header {
                min-height: 42px;
                padding-inline: 0.65rem;
                gap: 0.5rem;
            }

            .site-brand-mark {
                width: 19px;
                height: 19px;
            }

            .site-brand {
                font-size: 10px;
                letter-spacing: 0.16em;
            }

            .header-control {
                width: 34px;
                min-height: 28px;
            }

            .header-controls {
                min-height: 28px;
            }
        }
'@

$js = @'
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
'@

$html = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JAKO // Master Architecture Portfolio & CV</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;900&family=Rajdhani:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="src/global.css">
</head>
<body>

    <div id="page-bg-overlay"></div>
    <div class="ambient-gradient"></div>

    <!-- =========================================================
         MACRO-BLOCK 1: SUN
         ========================================================= -->
    <header class="header-style-bar site-header" id="top">
        <a class="site-brand-lockup" href="#top" aria-label="JAKO home">
            <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true">
                <g transform="rotate(180 50 50)">
                    <!-- Upper Trapezoid (Inverted Mirror) -->
                    <polygon points="80,20 20,20 30,35 70,35" />

                    <!-- Center Diamond -->
                    <polygon points="50,42 58,50 50,58 42,50" />

                    <!-- Lower Trapezoid -->
                    <polygon points="30,65 70,65 80,80 20,80" />
                </g>
            </svg>
            <span class="site-brand"></span>
        </a>

        <nav class="header-controls" aria-label="Global controls">
            <a class="header-control" href="https://github.com/jalkn" target="_blank" rel="noopener noreferrer" aria-label="GitHub profile" title="GitHub">
                <svg class="header-icon" viewBox="0 0 24 24" aria-hidden="true">
                    <path fill="currentColor" d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729 1.205.085 1.84 1.237 1.84 1.237 1.07 1.834 2.807 1.304 3.492.997.108-.775.418-1.305.762-1.605-2.665-.3-5.467-1.334-5.467-5.93 0-1.31.468-2.38 1.235-3.22-.124-.303-.535-1.523.117-3.176 0 0 1.008-.322 3.3 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.29-1.552 3.295-1.23 3.295-1.23.655 1.653.244 2.873.12 3.176.77.84 1.233 1.91 1.233 3.22 0 4.61-2.807 5.625-5.48 5.92.43.372.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.286 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/>
                </svg>
            </a>
            <button class="header-control" id="download-pdf" type="button" aria-label="Download PDF" title="Download PDF">
                <svg class="header-icon icon-stroke" viewBox="0 0 24 24" aria-hidden="true">
                    <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/>
                    <polyline points="7 10 12 15 17 10"/>
                    <line x1="12" y1="15" x2="12" y2="3"/>
                </svg>
            </button>
            <button class="header-control" id="theme-toggle" type="button" aria-label="Switch to light theme" aria-pressed="true" title="Toggle theme">
                <svg class="header-icon theme-icon" viewBox="0 0 24 24" aria-hidden="true">
                    <circle class="theme-icon-sun" cx="12" cy="12" r="3.5" />
                    <path class="theme-icon-rays" d="M12 2v2m0 16v2M4.93 4.93l1.42 1.42m11.3 11.3 1.42 1.42M2 12h2m16 0h2M4.93 19.07l1.42-1.42m11.3-11.3 1.42-1.42" />
                </svg>
            </button>
        </nav>
    </header>

    <!-- =========================================================
         MAIN VIEWPORT (CONTAINING BODY & SPIRIT)
         ========================================================= -->
    <main class="vision-scroll-viewport" id="main-viewport">

<!-- MACRO-BLOCK 2: BODY -->
        <section class="vision-card" id="card-profile">
            <!-- Profile Engine Box (Avatar is inserted/removed dynamically) -->
            <div class="engine-box" id="engine-box">
                <div>
                    <!-- Title Block with Default 'JAKO' Name and Embedded Toggle Button -->
                    <div class="engine-title-block">
                        
                        <button class="profile-photo-btn" id="avatar-toggle" type="button" aria-label="Toggle profile photo" title="Toggle photo">
                                    <svg class="site-brand-mark" viewBox="0 0 100 100" aria-hidden="true">
                                        <g transform="rotate(90 50 50)">
                                            <polygon points="50,42 58,50 50,58 42,50" />
                                            <polygon points="30,65 70,65 80,80 20,80" />
                                        </g>
                                    </svg>
                        </button>
                        <span id="profile-name">BIO</span>
                    </div>
                    <p class="engine-text">
                        Multidisciplinary artist and software developer working across plastic arts, digital interfaces, visual systems, and biokinetic research. Translating human movement, code, and physical traction into computational systems. Experienced in full stack development, signage fabrication, and movement research. I speak Spanish, English, and Italian.
                    </p>
                </div>
            </div>
        </section>

        <!-- EDUCATION -->
        <section class="vision-card" id="card-education">
            <div class="section-heading">
                <h2>Education</h2>
            </div>
            <div class="dropSphere-group" id="container-education"></div>
        </section>

        <!-- JOB EXPERIENCE -->
        <section class="vision-card" id="card-experience">
            <div class="section-heading">
                <h2>Job Experience</h2>
            </div>
            <div class="dropSphere-group" id="container-experience"></div>
        </section>

        <!-- MACRO-BLOCK 3: SPIRIT -->
        <!-- PROJECTS -->
        <section class="vision-card" id="card-projects">
            <div class="section-heading">
                <h2>Projects</h2>
            </div>
            <div class="dropSphere-group" id="container-projects"></div>
        </section>
        <!-- RESEARCH --> 
        <section class="vision-card" id="card-books">
            <div class="section-heading">
                <h2>Research</h2>
            </div>
            <div class="dropSphere-group" id="container-books"></div>
        </section> 

    </main>

    <script src="src/main.js" defer></script>
</body>
</html>
'@

try {
    if ([string]::IsNullOrWhiteSpace($ProjectRoot)) {
        throw 'Could not resolve the repository directory from the script location.'
    }

    if (-not $html.TrimStart().StartsWith('<!DOCTYPE html>', [System.StringComparison]::OrdinalIgnoreCase)) {
        throw 'The embedded HTML does not begin with a valid HTML doctype.'
    }

    $SourceDirectory = Join-Path $ProjectRoot 'src'
    if (-not (Test-Path -LiteralPath $SourceDirectory -PathType Container)) {
        New-Item -ItemType Directory -Path $SourceDirectory -Force | Out-Null
    }

    $Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($OutputPath, $html,$Utf8NoBom)
    [System.IO.File]::WriteAllText($CssPath, $css,$Utf8NoBom)
    [System.IO.File]::WriteAllText($JsPath, $js,$Utf8NoBom)

    Write-Host "JAKO portfolio generated successfully:" -ForegroundColor Green
    Write-Host "  HTML: $OutputPath"
    Write-Host "  CSS:  $CssPath"
    Write-Host "  JS:   $JsPath"
}
catch {
    Write-Error "JAKO generation failed: $($_.Exception.Message)"
    exit 1
}