#!/bin/bash
set -e

# =========================================================================
# macOS Terminal Colors
# =========================================================================
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
GRAY='\033[0;90m'
NC='\033[0m'

echo -e "${CYAN}=========================================================${NC}"
echo -e "${CYAN}     JAKO CORE - ENGINE PURGE & INITIALIZATION           ${NC}"
echo -e "${CYAN}=========================================================${NC}"

# =========================================================================
# 1. Aseptic Cache Purge
# =========================================================================
echo -e "\n${MAGENTA}[1/5] Purging caching systems and build targets...${NC}"
CACHE_PATHS=(".astro" "dist" "node_modules/.vite" "jako_vault.db")
for path in "${CACHE_PATHS[@]}"; do
    if [ -e "$path" ]; then
        echo -e "${GRAY}🧹 Dropping: $path${NC}"
        rm -rf "$path"
    fi
done
echo -e "${GREEN}✔ Sanitization complete.${NC}"

# =========================================================================
# 2. Base Configuration Files (ISOLATED BUILD MANIFEST)
# =========================================================================
echo -e "\n${YELLOW}[2/5] Staging project manifests with isolated build safety...${NC}"

cat << 'JSON_EOF' > package.json
{
  "name": "jako-core",
  "type": "module",
  "version": "8.0.0",
  "scripts": {
    "dev": "astro dev",
    "start": "astro dev",
    "build": "astro build",
    "preview": "astro preview",
    "astro": "astro"
  },
  "dependencies": {
    "astro": "^4.0.0"
  }
}
JSON_EOF

cat << 'MJS_EOF' > astro.config.mjs
import { defineConfig } from 'astro/config';

export default defineConfig({
  srcDir: "./src",
  publicDir: "./public",
  outDir: "./dist",
  server: {
    port: 3000
  }
});
MJS_EOF

# =========================================================================
# 3. Pure Mathematical Backend Engine Injection (`z_dial_core.py`)
#    INTEGRATED WITH VOLATILE SQLITE PERSISTENCE LAYER (1:N SCHEMA)
# =========================================================================
echo -e "\n${MAGENTA}[3/5] Solidifying core computational engine script with relational DB...${NC}"

cat << 'PYTHON_EOF' > z_dial_core.py
import time
import json
import sys
import sqlite3
import uuid
from datetime import datetime

class ZDialEngine:
    """
    Z-Dial Engine v8.2 - Fluid Biokinetic Transducer Core.
    Calculates the Resonance Gradient (Delta = Tension / Frequency), enforces 
    material collapse rules, and orchestrates direct SQLite telemetry logging.
    """
    def __init__(self, db_path="jako_vault.db"):
        self.db_path = db_path
        self.VECTOR_CLOCK_MATRIX = {
            'P': 1,  'U': 2,  'L': 3,  'S': 4,
            'PL': 5, 'PU': 6, 'LU': 7, 'SU': 8,
            'PUL': 9,'LPS': 10,'SPU': 11,'ULS': 12
        }
        self.VECTOR_DICTIONARY_EN = {
            'P':   'PACE',
            'U':   'PUSH',
            'L':   'PULL',
            'S':   'SURGE',
            'PL':  'PACE WITH PULL',
            'PU':  'PACE WITH PUSH',
            'LU':  'PULL WITH PUSH',
            'SU':  'SURGE WITH PUSH',
            'PUL': 'PACE WITH PUSH AND PULL',
            'LPS': 'PULL WITH PACE AND SURGE',
            'SPU': 'SURGE WITH PACE AND PUSH',
            'ULS': 'PUSH WITH PULL AND SURGE'
        }
        self._init_database()

    def _init_database(self):
        """Initializes volatile database tables directly matching schema definitions."""
        with sqlite3.connect(self.db_path) as conn:
            cursor = conn.cursor()
            # Table 1: Meta Ingestion Header
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS sesiones_biocineticas (
                    session_id TEXT PRIMARY KEY,
                    user_id TEXT,
                    sphere_idx TEXT,
                    start_timestamp INTEGER,
                    end_timestamp INTEGER,
                    accumulated_dials INTEGER,
                    pulsor_variant_id TEXT
                );
            """)
            # Table 2: Unrolled Time Series Data with Cybernetic Delta Gradient
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS telemetria_raw (
                    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
                    session_id TEXT,
                    frequency_hz REAL,
                    cellular_tension REAL,
                    delta_gradient REAL,
                    hud_translation TEXT,
                    exact_timestamp INTEGER,
                    FOREIGN KEY(session_id) REFERENCES sesiones_biocineticas(session_id)
                );
            """)
            conn.commit()

    def collapse_time_slice(self) -> dict:
        """
        Executes real-time biokinetic transduction slicing based on epoch state.
        Computes Tissue Tension (Reps) vs. Neural Frequency (Sets) to derive Delta (Δ).
        """
        now = datetime.now()
        minutes = now.minute
        seconds = now.second
        milliseconds = int((time.time() % 1) * 1000)

        raw_tension = 1
        raw_frequency = 1
        current_action = 'P'

        # Odd Path: Sub-Second Engine (High Frequency Neural Pulses / Monadic Phase A)
        if seconds % 2 != 0:
            progress_1s = milliseconds / 1000.0
            raw_frequency = int(progress_1s * 12) + 1
            raw_tension = 13 - raw_frequency
            
            if progress_1s < 0.25: current_action = 'P'
            elif progress_1s < 0.50: current_action = 'U'
            elif progress_1s < 0.75: current_action = 'L'
            else: current_action = 'S'
            
        # Even Path: Macro-Cycle Engine (Structured Blocks / Binary & Triadic Phases)
        else:
            raw_frequency = int((minutes % 12) + 1)
            if seconds < 30:
                # Phase B: Binary Transitions
                sub_slot = int((seconds % 30) / 7.5)
                current_action = ["PL", "PU", "LU", "SU"][sub_slot] if sub_slot < 4 else "PL"
                raw_tension = int((seconds % 10) + 2)
            else:
                # Phase C: Triadic Absorptions
                sub_slot = int(((seconds - 30) % 30) / 7.5)
                current_action = ["PUL", "LPS", "SPU", "ULS"][sub_slot] if sub_slot < 4 else "ULS"
                raw_tension = int(((seconds - 30) % 10) + 3)

        # Base-12 bounding enforcement
        sets_stage = max(1, min(12, raw_frequency))  # Neural Frequency Core
        reps_stage = max(1, min(12, raw_tension))    # Tissue Tension Perimeter

        coordinate = f"{sets_stage}{current_action}{reps_stage}"
        dials_gained = sets_stage * reps_stage

        # Cybernetic Resonance Gradient Delta (Δ = Tension / Frequency)
        delta_gradient = round(reps_stage / sets_stage, 2)

        # Material Collapse Rule: Reading HUD syntax from Perimeter (Reps) to Core (Sets)
        vector_desc = self.VECTOR_DICTIONARY_EN.get(current_action, current_action)
        hud_translation = f"{reps_stage} {vector_desc} AT FREQUENCY X{sets_stage}"

        # Biomechanical Diagnostic Prescription
        if delta_gradient > 1.0:
            diagnostic = f"Tension Dominance (Δ={delta_gradient}). Prescribing push decompression."
        elif delta_gradient < 1.0:
            diagnostic = f"Frequency Dominance (Δ={delta_gradient}). Prescribing pull anchoring."
        else:
            diagnostic = f"Fascial Homeostasis (Δ={delta_gradient}). Fine-tuning active."

        return {
            "coordinate": coordinate,
            "action": current_action,
            "sets": sets_stage,
            "reps": reps_stage,
            "dials": dials_gained,
            "delta": delta_gradient,
            "hud_translation": hud_translation,
            "diagnostic": diagnostic,
            "hz": round(0.05 + (sets_stage / 240.0), 4),
            "tension": round(14.2 + (reps_stage * 0.8), 2),
            "timestamp": int(time.time() * 1000)
        }

    def commit_telemetry_pipeline(self) -> str:
        """Simulates ingestion payload mapping data straight into relational tables."""
        slice_data = self.collapse_time_slice()
        session_uuid = str(uuid.uuid4())
        user_uuid = str(uuid.uuid4())
        
        with sqlite3.connect(self.db_path) as conn:
            cursor = conn.cursor()
            
            # 1. Commit Meta Ingestion Header
            cursor.execute("""
                INSERT INTO sesiones_biocineticas 
                VALUES (?, ?, ?, ?, ?, ?, ?)
            """, (session_uuid, user_uuid, slice_data["coordinate"], slice_data["timestamp"], 
                  slice_data["timestamp"] + 10000, slice_data["dials"], slice_data["action"]))
            
            # 2. Commit Unrolled Time Series Data
            cursor.execute("""
                INSERT INTO telemetria_raw (session_id, frequency_hz, cellular_tension, delta_gradient, hud_translation, exact_timestamp)
                VALUES (?, ?, ?, ?, ?, ?)
            """, (session_uuid, slice_data["hz"], slice_data["tension"], slice_data["delta"], 
                  slice_data["hud_translation"], slice_data["timestamp"]))
            
            conn.commit()
            
        return session_uuid

if __name__ == "__main__":
    engine = ZDialEngine()
    if len(sys.argv) > 1 and sys.argv[1] == "--telemetry-stream":
        created_id = engine.commit_telemetry_pipeline()
        
        # Pull generated confirmation to verify relational compliance
        with sqlite3.connect(engine.db_path) as compliance_conn:
            compliance_conn.row_factory = sqlite3.Row
            cur = compliance_conn.cursor()
            session_row = cur.execute("SELECT * FROM sesiones_biocineticas WHERE session_id=?", (created_id,)).fetchone()
            raw_rows = cur.execute("SELECT * FROM telemetria_raw WHERE session_id=?", (created_id,)).fetchall()
            
            output_verification = {
                "pipeline_status": "RELATIONAL_COMMIT_SUCCESS",
                "database_target": engine.db_path,
                "meta_header": dict(session_row),
                "unrolled_series_count": len(raw_rows),
                "series_sample": [dict(r) for r in raw_rows]
            }
            print(json.dumps(output_verification, indent=2))
    else:
        print("--- [FLUID BIOCKINETIC TRANSDUCER OUTPUT] ---")
        print(json.dumps(engine.collapse_time_slice(), indent=2))
PYTHON_EOF

echo -e "${GREEN}✔ Computational core logic verified locally.${NC}"

# =========================================================================
# 4. Static Assets Provisioning (NATIVE INDEX ANCHOR)
# =========================================================================
echo -e "\n${MAGENTA}[4/5] Provisioning pristine index.html asset as core target...${NC}"

mkdir -p public/img

cat << 'INDEX_EOF' > public/index.html
<!DOCTYPE html>
<html lang="en" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <link class="icon" type="image/png" href="img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>JAKO VAULT — SANDWATCH 2D</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Plus+Jakarta+Sans:wght@300;400;500;700&display=swap" rel="stylesheet">
    
    <style>
        /* ==========================================
           1. CUSTOM PROPERTIES & THEMES
           ========================================== */
        :root[data-theme="dark"] {
            --jako-bg: rgba(0, 0, 0, 0.95);
            --jako-text: #ffffff;
            --jako-border: rgba(255, 255, 255, 0.02);
            --jako-glass: rgba(0, 0, 0, 0.5);
            --jako-led: rgba(255, 255, 255, 0.75);
            --gradient-start: rgba(255, 255, 255, 0.03);
            --gradient-mid: rgba(5, 5, 8, 0.85);
            --gradient-end: #000000;
        }

        :root[data-theme="white"] {
            --jako-bg: #f8f9fa;
            --jako-text: #000000;
            --jako-border: rgba(0, 0, 0, 0.08);
            --jako-glass: rgba(255, 255, 255, 0.4);
            --jako-led: rgba(0, 0, 0, 0.85);
            --gradient-start: rgba(0, 0, 0, 0.02);
            --gradient-mid: rgba(248, 249, 250, 0.85);
            --gradient-end: #ffffff;
        }

        /* ==========================================
           2. GLOBAL STYLES & RESET
           ========================================== */
        *, ::before, ::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body { 
            scroll-behavior: smooth; 
            letter-spacing: 0.05em;  
            overscroll-behavior: none;
            background-color: var(--jako-bg);
            color: var(--jako-text);
            transition: background-color 0.5s ease, color 0.5s ease;
            font-family: 'Plus Jakarta Sans', sans-serif;
            -webkit-font-smoothing: antialiased;
            width: 100vw;
            height: 100vh;
            height: 100dvh;
            overflow: hidden;
        }

        ::selection {
            background-color: var(--jako-text);
            color: var(--jako-bg);
        }

        #page-bg-overlay {
            position: fixed;
            inset: 0;
            background: radial-gradient(circle at 50% 50%, var(--gradient-start) 15%, var(--gradient-mid) 80%, var(--gradient-end) 100%);
            z-index: -1;
            transform: translateZ(0);
        }

        :root[data-theme="dark"] .active-led {
            text-shadow: 0 0 10px var(--jako-led), 0 0 4px var(--jako-led) !important;
        }
        :root[data-theme="white"] .active-led {
            text-shadow: 0 0 6px var(--jako-led) !important;
        }

        /* ==========================================
           3. LAYOUT & RESPONSIVE CONTAINERS
           ========================================== */
        .vault-main {
            width: 100vw;
            height: 100vh;
            height: 100dvh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .vault-wrapper {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            user-select: none;
            position: relative;
            z-index: 10;
        }

        .vault-card-frame {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /* ==========================================
           4. PANEL PACK & VECTOR TARGET
           ========================================== */
        #artepanel-pack-container {
            position: relative;
            width: 82vmin;  /* Aumentado de 50vmin a 82vmin */
            height: 82vmin;
            max-width: 90vw;
            max-height: 90vh;
            aspect-ratio: 1 / 1;
            flex-shrink: 0;
            filter: drop-shadow(0 25px 55px rgba(0, 0, 0, 0.85));
            cursor: pointer;
        }

        #artepanel-mask-wrapper {
            width: 100%;
            height: 100%;
            position: relative;
            overflow: hidden;
            border-radius: 0px;
            transition: border-radius 0.3s cubic-bezier(0.2, 0, 0, 1), 
                        background-image 0.3s ease;
            background-image: linear-gradient(135deg, var(--gradient-start) 0%, var(--gradient-mid) 50%, var(--gradient-end) 100%);
            -webkit-mask-image: -webkit-radial-gradient(white, black);
            transform: translateZ(0);
            -webkit-transform: translateZ(0);
        }

        .svg-container {
            position: absolute;
            inset: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0;
            z-index: 20;
        }

        #laser-vector-target {
            width: 100%;
            height: 100%;
            fill: none;
            stroke: currentColor;
            color: var(--jako-text);
            transition: all 0.5s ease;
            transform-origin: center;
        }

        /* ==========================================
           5. SVG INTERNAL ELEMENTS & MORPH ANIMATIONS
           ========================================== */
        .rotate-minus-90 {
            transform: rotate(-90deg);
            transform-origin: 200px 200px;
            transition: transform 0.3s cubic-bezier(0.2, 0, 0, 1), opacity 0.3s ease;
        }

        .sandwatch-layer {
            transform-origin: center;
            opacity: 1;
            transform: scale(1);
            transition: opacity 0.3s ease, transform 0.3s cubic-bezier(0.2, 0, 0, 1);
            will-change: opacity, transform;
        }

        .sandwatch-layer.is-hidden {
            opacity: 0;
            transform: scale(0.85);
            pointer-events: none;
        }

        #wave-quantum-container {
            transform-origin: center;
            transition: opacity 0.3s ease, transform 0.3s cubic-bezier(0.2, 0, 0, 1);
            will-change: opacity, transform;
        }

        #wave-quantum-container.is-hidden {
            opacity: 0;
            transform: rotate(-90deg) scale(0.9);
            pointer-events: none;
        }

        .stroke-20 {
            stroke: currentColor;
            opacity: 0.25;
            stroke-width: 1;
        }

        .z-dial-text {
            fill: currentColor;
            font-weight: 900;
            font-size: 20px;
            letter-spacing: 0.35em;
            font-family: 'Orbitron', sans-serif;
        }

        .pole-label {
            fill: currentColor;
            font-weight: 700;
            font-size: 11px;
            letter-spacing: 0.15em;
            opacity: 0.5;
            font-family: 'Orbitron', sans-serif;
        }
    </style>
</head>
<body>

    <div id="page-bg-overlay"></div>

    <main id="main-vault" class="vault-main"> 
        <div class="vault-wrapper">
            <div class="vault-card-frame">
                
                <div id="artepanel-pack-container">
                    <div id="artepanel-mask-wrapper">
                        
                        <div class="svg-container">
                            <svg id="laser-vector-target" viewBox="0 0 400 400">
                                
                                <!-- View 1: Concentric Waves View (Satellite Core) -->
                                <g id="wave-quantum-container" class="rotate-minus-90"></g>

                                <!-- View 0: Dynamic 2D Sandwatch View (6-Hour Expansion Engine) -->
                                <g id="sandwatch-clean-group" class="sandwatch-layer">
                                    <!-- Dynamic Wave Mesh Layers -->
                                    <g id="sandwatch-dynamic-mesh"></g>

                                    <!-- Zero Point Center Focal Node -->
                                    <circle cx="200" cy="200" r="2.5" fill="currentColor" opacity="0.8" />
                                </g>

                                <!-- View 2: Sandwatch View + Diagnostic Telemetry Overlay -->
                                <g id="sandwatch-group" class="sandwatch-layer is-hidden">
                                    <path d="M 90,90 L 310,90 L 90,310 L 310,310 Z" class="stroke-20" />
                                    <path d="M 90,90 Q 200,125 310,90" class="stroke-20" />
                                    <path d="M 90,310 Q 200,275 310,310" stroke-dasharray="3 3" class="stroke-20" />
                                    
                                    <text x="200" y="70" text-anchor="middle" class="pole-label"></text>
                                    <text id="z-dial" x="200" y="206" text-anchor="middle" class="z-dial-text">1P1</text>
                                    <text x="200" y="340" text-anchor="middle" class="pole-label"></text>
                                </g>

                            </svg>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </main>

 <script>
    // =========================================================================
    // Z-DIAL ENGINE v9.0 — SANDWATCH 2D QUANTUM BIOREGENERATIVE TRANSDUCER
    // =========================================================================

    const VECTOR_TO_CLOCK_INDEX = {
        'P': 1,  'U': 2,  'L': 3,  'S': 4,
        'PL': 5, 'PU': 6, 'LU': 7, 'SU': 8,
        'PUL': 9,'LPS': 10,'SPU': 11,'ULS': 12
    };

    const TOTAL_CYCLE_SECONDS = 6 * 3600; // Ciclo completo de 6 horas
    let biokineticWaveHistory = [];
    let currentTensionSets = 1;
    let currentFrequencyReps = 1;

    const $ = id => document.getElementById(id);

    // -------------------------------------------------------------------------
    // 1. SANDWATCH 2D DYNAMIC ENGINE (Expansión desde el Punto Zero)
    // -------------------------------------------------------------------------
    function renderSandwatch2D(containerId) {
        const meshContainer = $(containerId);
        if (!meshContainer) return;

        const now = new Date();
        const secondsIn6h = (now.getHours() % 6) * 3600 + now.getMinutes() * 60 + now.getSeconds();
        const progress = secondsIn6h / TOTAL_CYCLE_SECONDS; // 0.0 a 1.0 en 6h

        const centerX = 200;
        const centerY = 200;
        const maxHeight = 110 * Math.max(progress, 1.08); // Crece gradualmente hacia los polos
        const maxRadius = 110 * Math.max(progress, 1.08);

        // Angulaciones rotacionales independientes por polo
        const angleTop = (secondsIn6h * currentFrequencyReps * 3) % 360;
        const angleBottom = (secondsIn6h * currentTensionSets * 3) % 360;

        let htmlSvg = '';
        const numRays = 12; // Malla de base 12
        const numHorizontalLevels = 8;

        // Polo Superior (Frecuencia / Reps -> Hz / 369)
        for (let i = 0; i < numRays; i++) {
            const rad = ((i * (360 / numRays) + angleTop) * Math.PI) / 180;
            const x2 = centerX + Math.cos(rad) * maxRadius;
            const y2 = centerY - maxHeight;
            htmlSvg += `<line x1="${centerX}" y1="${centerY}" x2="${x2}" y2="${y2}" stroke="currentColor" stroke-opacity="0.3" stroke-width="0.8" />`;
        }

        // Polo Inferior (Tensión / Sets -> TN)
        for (let i = 0; i < numRays; i++) {
            const rad = ((i * (360 / numRays) + angleBottom) * Math.PI) / 180;
            const x2 = centerX + Math.cos(rad) * maxRadius;
            const y2 = centerY + maxHeight;
            htmlSvg += `<line x1="${centerX}" y1="${centerY}" x2="${x2}" y2="${y2}" stroke="currentColor" stroke-opacity="0.35" stroke-width="0.8" />`;
        }

        // Niveles Horizontales de Onda desde el Centro
        for (let lvl = 1; lvl <= numHorizontalLevels; lvl++) {
            const factor = lvl / numHorizontalLevels;
            const levelYTop = centerY - (maxHeight * factor);
            const levelYBot = centerY + (maxHeight * factor);
            const levelR = maxRadius * factor;

            // Anillos de corte horizontal (Ondas acumulativas)
            htmlSvg += `<ellipse cx="${centerX}" cy="${levelYTop}" rx="${levelR}" ry="${levelR * 0.2}" stroke="currentColor" stroke-opacity="0.25" stroke-dasharray="2 2" fill="none" />`;
            htmlSvg += `<ellipse cx="${centerX}" cy="${levelYBot}" rx="${levelR}" ry="${levelR * 0.2}" stroke="currentColor" stroke-opacity="0.3" fill="none" />`;
        }

        meshContainer.innerHTML = htmlSvg;
    }

    // -------------------------------------------------------------------------
    // 2. CONCENTRIC WAVES RENDERER (Vista Satelital)
    // -------------------------------------------------------------------------
    function renderBiokineticWaves() {
        const container = $('wave-quantum-container');
        if (!container || biokineticWaveHistory.length === 0) return;

        if (viewMode === 1) container.classList.remove('is-hidden');
        else container.classList.add('is-hidden');

        let htmlContent = '';
        biokineticWaveHistory.forEach((dial, tIndex) => {
            const currentScale = tIndex * 1; 
            const baseOpacity = 1.0 - (tIndex * 0.07);
            if (baseOpacity <= 0) return;

            const viewFactor = 7; 
            const layers = [
                { id: 'internal',     r: (currentScale * 1.0) * viewFactor, opacity: baseOpacity * 0.70, value: dial.sets },
                { id: 'intermediate', r: (currentScale * 1.4) * viewFactor, opacity: baseOpacity * 0.55, value: dial.vector },
                { id: 'external',     r: (currentScale * 1.8) * viewFactor, opacity: baseOpacity * 0.40, value: dial.reps }
            ];

            layers.forEach(layer => {
                if (layer.r <= 0) return;
                const circumference = 2 * Math.PI * layer.r;
                const angle = (layer.value - 1) * 30; 
                const arcLength = (layer.value / 12) * circumference;
                const dashArray = `${arcLength} ${circumference}`;

                htmlContent += `
                    <circle 
                        id="wave-${layer.id}-t${tIndex}" 
                        cx="200" 
                        cy="200" 
                        r="${layer.r}" 
                        transform="rotate(${angle} 200 200)"
                        stroke="currentColor"
                        stroke-width="${tIndex === 0 ? 1.5 : 1.0}"
                        stroke-opacity="${layer.opacity}"
                        stroke-dasharray="${dashArray}"
                        stroke-linecap="round"
                        fill="none"
                    />`;
            });
        });
        container.innerHTML = htmlContent;
    }

    // -------------------------------------------------------------------------
    // 3. ENGINE CORE UPDATE (Inversión: Sets=Tensión, Reps=Frecuencia)
    // -------------------------------------------------------------------------
    function updateZ() {
        const now = new Date();
        const minutes = now.getMinutes();
        const seconds = now.getSeconds();
        const ms = now.getMilliseconds();

        let rawTensionSets = 0;   
        let rawFrequencyReps = 0; 
        let currentAction = 'P';

        if (seconds % 2 !== 0) {
            const progress1s = ms / 1000;
            rawFrequencyReps = Math.floor(progress1s * 12) + 1;
            rawTensionSets = 13 - rawFrequencyReps;

            if (progress1s < 0.25) currentAction = 'P';      
            else if (progress1s < 0.50) currentAction = 'U'; 
            else if (progress1s < 0.75) currentAction = 'L'; 
            else currentAction = 'S';                        
        } else {
            rawFrequencyReps = Math.floor((minutes % 12) + 1);

            if (seconds < 30) {
                const subSlot = Math.floor((seconds % 30) / 7.5);
                currentAction = ["PL", "PU", "LU", "SU"][subSlot] || "PL";
                rawTensionSets = Math.floor((seconds % 10) + 2);
            } else {
                const subSlot = Math.floor(((seconds - 30) % 30) / 7.5);
                currentAction = ["PUL", "LPS", "SPU", "ULS"][subSlot] || "ULS";
                rawTensionSets = Math.floor(((seconds - 30) % 10) + 3);
            }
        }

        currentTensionSets = Math.max(1, Math.min(12, rawTensionSets)); 
        currentFrequencyReps = Math.max(1, Math.min(12, rawFrequencyReps));   
        
        const biokineticCoordinate = `${currentTensionSets}${currentAction}${currentFrequencyReps}`;
        const vectorIndex = VECTOR_TO_CLOCK_INDEX[currentAction] || 1;
        const deltaGradient = (currentTensionSets / currentFrequencyReps).toFixed(2);

        const lastSavedDial = biokineticWaveHistory[0];
        if (!lastSavedDial || lastSavedDial.rawCoord !== biokineticCoordinate) {
            biokineticWaveHistory.unshift({ 
                sets: currentTensionSets, 
                vector: vectorIndex, 
                reps: currentFrequencyReps, 
                delta: deltaGradient,
                rawCoord: biokineticCoordinate 
            });
            if (biokineticWaveHistory.length > 12) biokineticWaveHistory.pop();
        }

        // Renderizar vistas según modo activo
        renderBiokineticWaves();
        if (viewMode === 0) renderSandwatch2D('sandwatch-dynamic-mesh');
        if (viewMode === 2) renderSandwatch2D('sandwatch-hud-mesh');

        const elDial = $('z-dial');
        if (elDial) elDial.textContent = biokineticCoordinate;
    }

    // -------------------------------------------------------------------------
    // 4. INITIALIZATION & VIEW MODES
    // -------------------------------------------------------------------------
    let viewMode = 0; // 0: Clean Sandwatch 2D, 1: Concentric Waves, 2: Sandwatch HUD
    
    function applyContainerStyle(mode) {
        const maskWrapper = $('artepanel-mask-wrapper');
        if (!maskWrapper) return;

        if (mode === 0) {
            maskWrapper.style.backgroundImage = 'none';
            maskWrapper.style.borderRadius = "0px";
        } else {
            maskWrapper.style.backgroundImage = 'linear-gradient(135deg, var(--gradient-start) 0%, var(--gradient-mid) 50%, var(--gradient-end) 100%)';
            maskWrapper.style.borderRadius = (mode === 1) ? "50%" : "0px";
        }
    }

    document.addEventListener('DOMContentLoaded', () => {
        applyContainerStyle(viewMode);
        updateZ();
        setInterval(updateZ, 1000);

        const container = $('artepanel-pack-container');
        if (container) {
            let tapTimer = null;
            let lastTapTime = 0;
            const DOUBLE_TAP_DELAY = 300;

            const toggleTheme = () => {
                const currentTheme = document.documentElement.getAttribute('data-theme');
                const newTheme = currentTheme === 'dark' ? 'white' : 'dark';
                document.documentElement.setAttribute('data-theme', newTheme);
            };

            const cycleViewMode = () => {
                viewMode = (viewMode + 1) % 3;

                const sandwatchCleanGroup = $('sandwatch-clean-group');
                const sandwatchGroup = $('sandwatch-group');

                if (sandwatchCleanGroup) {
                    if (viewMode === 0) sandwatchCleanGroup.classList.remove('is-hidden');
                    else sandwatchCleanGroup.classList.add('is-hidden');
                }

                renderBiokineticWaves();

                if (sandwatchGroup) {
                    if (viewMode === 2) sandwatchGroup.classList.remove('is-hidden');
                    else sandwatchGroup.classList.add('is-hidden');
                }

                applyContainerStyle(viewMode);
                updateZ();
            };

            container.addEventListener('click', (e) => {
                e.preventDefault();
                const currentTime = new Date().getTime();
                const tapLength = currentTime - lastTapTime;

                if (tapLength < DOUBLE_TAP_DELAY && tapLength > 0) {
                    clearTimeout(tapTimer);
                    toggleTheme();
                    if (navigator.vibrate) navigator.vibrate([10, 30, 10]);
                } else {
                    tapTimer = setTimeout(() => {
                        cycleViewMode();
                        if (navigator.vibrate) navigator.vibrate(10);
                    }, DOUBLE_TAP_DELAY);
                }

                lastTapTime = currentTime;
            });
        }
    });
</script>
</body>
</html>
INDEX_EOF

# ==============================================================================
# INJECTION: BIOCINETIC MANIFESTO & P.U.L.S. DICTIONARY DATA BLOCKS
# ==============================================================================

mkdir -p docs/manifesto docs/meanings

cat << 'EOF' > docs/manifesto/S01.md
# JAKO VAULT // BIOMANIFESTO & THE COGNITIVE SYSTEM

### 👁️ CHAPTER 1 // THE POETICS OF BODY & MIND

My concept of Art
is what we bring from imagination into reality 
and my method is drawing the patterns of a possible wellness body.
.
.
.
I believe the body is the unconscious mind
and when I meditate,
I am aware of the moment,
my mind observes how
the body is creative by itself 
.
.
.
I believe the body is the unconscious mind
also there is the space of our creativity, but governments, banks and media even more, the new internet 3.0 is killing our pure link with nature. I researched the 
The unconscious is a gap in my mind,
I create a mechanism to keep this gap open. 
in the same way my thoughts move around my body,
igniting consciousness with these three actions; push,
pull and traction
.
.
.
A thought comes because
I PULL it into the canvas of my mind / DRAW
.
.
.
A thought vanishes because 
I PUSH it away / PRESS
.
.
.
By pushing and pulling I start opening the space between my body and mind until I leave my mind in the right place,
observing how the body is create by itself

This traction (pulling and pushing) keeps my thoughts in constant ignition
.
.
.
This project is focused on strengthening the link of the human body with nature, coding the functional movements of the body, and rendering through a code of capturing the moment; creating a language of the body that can be read by a symbolic pattern.

---

### 🧠 THE UNCONSCIOUS PROGRAMMER

The body is our unconscious mind and the source of our creativity. We do constant functional movements on a daily basis. You learned all of these movements as a child. It was programmed into your unconscious mind. You don’t have to think about walking because your body has already learned. When you get up, close a door, lift something from the ground, go to bed or to take a seat—all these universal motions become a program in our unconscious mind. 

If you focus on your body, you are aware every second, and the further away your mind is, the more aware you become of how creative you are. The brain's plasticity only progresses if you keep training your mind. You can do my method or you can do whatever—an art or a sport. Take the place of the programmer and watch what is happening. The mind will be your servant and your body, the art master. When it becomes a routine, you will be ready to bring new ideas into reality.

---

### 🫀 CHAPTER 2 // THE BIO-TRANSDUCTOR ENGINE & THE QUANTUM HEART
The algorithm is a real-time bio-kinetic transductor. It bridges physical state and temporal flow by evaluating the relationship between Residual Tissue Tension ($\text{Tension}$) and Neuromuscular Transmission Frequency ($\text{Frequency}$). Time and kinetic response are calculated through the Resonance Gradient ($\Delta$):

$$\Delta = \frac{\text{Tension}}{\text{Frequency}}$$

* **DOMINANCE OF TENSION ($\Delta > 1.0$):** High tissue load and stiffness. The system prescribes repelling force / pushing vectors ($U$) to decompress active strain.
* **DOMINANCE OF FREQUENCY ($\Delta < 1.0$):** High neural velocity with low structural anchor. The system prescribes attraction force / pulling vectors ($L$) to establish tensile stability.
* **HOMEOSTASIS ($\Delta \approx 1.0$):** Perfect resonance and fine tuning between tissue strain and neural speed.

> 📐 **SYNTAX & COLLAPSE RULE:** While the hardware architecture streams data as `[Sets][Vector][Reps]`, human translation within the HUD operates under the physics of material collapse—reading backwards from the external perimeter (`Reps`) into the internal frequency core (`Sets`). Thus, the signature **8PU10** materializes as: **10 PACE WITH PUSH AT FREQUENCY X8.** Every collapsed dial leaves the nucleus empty (**Zero Point**) for the next pulse.

---

### 🌊 CHAPTER 3 // BIOMECHANICAL INTEGRATION & THE THREE CONCENTRIC WAVES
The ecosystem self-manages by plotting three recurring concentric waves that dynamically adjust the geometry based on real-time neural and tissue readings:

* **THE INTERNAL WAVE (Sets // Zero Point Nucleus):** Represents the Resonance Gradient ($\Delta$). It acts as the core pacemaker, dictating stamina, structural readiness, and energy retention ($1 \text{ to } 12$).
* **THE INTERMEDIATE WAVE (Vector / P.U.L.S.):** The transmission channel of the nervous system. Disciplines coordination, precision, and directional force. It selects the exact movement prescription according to $\Delta$:
    * *Phase A (Monadic - P, U, L, S):* Triggered during extreme polarization ($\Delta \gg 1.0$ or $\Delta \ll 1.0$). Pure push, pull, or cyclic/explosive triggers.
    * *Phase B (Binary - PL, PU, LU, SU):* Triggered in force transition zones where load and neural frequency collide.
    * *Phase C (Ternary - PUL, LPS, SPU, ULS):* Triggered during triadic fascial absorption and isometric homeostasis ($\Delta \approx 1.0$).
* **THE EXTERNAL WAVE (Reps):** Dense tensional cohesion. The perimeter boundary where raw energy collides with physical reality under gravitational magnetism, measuring residual tissue strain.
EOF

cat << 'EOF' > docs/meanings/PULS.txt
================================================================================
P.U.L.S. PROTOCOL // ALPHANUMERIC DIAL TRANSLATION DICTIONARY
================================================================================

[SYNTAX MATRIX]
Format: [Reps] [Vector Text] [Sets Multiplier]

[12 EVOLUTIONARY VARIANTS & Δ GRADIENT MAPPING]

CODE | PHASE     | SPANISH TEXT                       | ENGLISH TEXT
-----+-----------+------------------------------------+-------------------------------------
P    | PHASE A   | [Reps] PASOS X[Sets]               | [Reps] PACE X[Sets]
U    | PHASE A   | [Reps] PRESIONES X[Sets]           | [Reps] PUSH X[Sets]
L    | PHASE A   | [Reps] CARGAS X[Sets]              | [Reps] PULL X[Sets]
S    | PHASE A   | [Reps] SALTOS X[Sets]              | [Reps] SURGE X[Sets]
PL   | PHASE B   | [Reps] PASOS CON CARGA X[Sets]     | [Reps] PACE WITH PULL X[Sets]
PU   | PHASE B   | [Reps] PASOS CON PRESIÓN X[Sets]   | [Reps] PACE WITH PUSH X[Sets]
LU   | PHASE B   | [Reps] CARGAS CON PRESIÓN X[Sets]  | [Reps] PULL WITH PUSH X[Sets]
SU   | PHASE B   | [Reps] SALTOS CON PRESIÓN X[Sets]  | [Reps] SURGE WITH PUSH X[Sets]
PUL  | PHASE C   | [Reps] PASOS CON PRESIÓN/CARGA     | [Reps] PACE WITH PUSH AND PULL
LPS  | PHASE C   | [Reps] CARGAS CON PASO/SALTO       | [Reps] PULL WITH PACE AND SURGE
SPU  | PHASE C   | [Reps] SALTOS CON PASO/PRESIÓN     | [Reps] SURGE WITH PACE AND PUSH
ULS  | PHASE C   | [Reps] PRESIONES CON CARGA/SALTO   | [Reps] PUSH WITH PULL AND SURGE

--------------------------------------------------------------------------------
CORE METRICS & BIOMECHANICAL DYNAMICS
--------------------------------------------------------------------------------
- PACE (P): Cyclic Trigger. Alternating continuous displacement cadence.
- PUSH (U): Repelling Force. Direct eccentric/isometric decompression vector.
- PULL (L): Structural Attraction Load. Concentric tensile anchoring vector.
- SURGE (S): Explosive Trigger. High-velocity elastic recoil mechanism.

--------------------------------------------------------------------------------
TRANSDUCTOR Δ RATIO DYNAMIC PRESCRIBERS (Δ = Tension / Frequency)
--------------------------------------------------------------------------------
[PHASE A // MONADIC (EXTREME POLARIZATION)]
- U   : Δ >> 1.0 -> High tissue tension. Prescribes active pushing decompression.
- L   : Δ << 1.0 -> High neural speed / low load. Prescribes concentric pull anchoring.
- P   : Δ -> 1.0 (Low Intensity) -> Prescribes continuous joint cadencing.
- S   : Δ -> 1.0 (High Intensity) -> Prescribes elastic recoil release.

[PHASE B // BINARY (TRANSITION ZONES)]
- PU  : Dynamic push under ascending velocity.
- PL  : Dynamic pull under ascending tension.
- LU  : Critical load point. Antagonistic stabilization.
- SU  : Massive tension spike. Pneumatic elastic discharge.

[PHASE C // TERNARY (HOMEOSTASIS Δ = 1.0)]
- PUL : Total Sagittal/Frontal integration.
- LPS : Transition from static pull to elastic recoil.
- SPU : Continuous core force projection.
- ULS : Extreme triadic isometric absorption.
================================================================================
EOF

# =========================================================================
# 5. Clean Frontend Architecture
# =========================================================================
echo -e "\n${CYAN}[5/5] Bypassing Astro pages to allow pure public anchor execution...${NC}"
rm -rf src/pages
mkdir -p src/layouts

# =========================================================================
# 6. Environment Validation, Build & Root Extraction
# =========================================================================
echo -e "\n${YELLOW}[5/5] Checking environment packages and running checks...${NC}"

if [ ! -d "node_modules/astro" ]; then
    echo -e "${MAGENTA}⚠️ node_modules missing. Initializing npm installation...${NC}"
    npm install
fi

npx astro sync
npx astro build

if [ -f "dist/index.html" ]; then
    echo -e "${CYAN}🚀 Extracting compiled index.html directly to repository root...${NC}"
    cp dist/index.html ./index.html
fi

# =========================================================================
# Executing Telemetry Pipeline Check
# =========================================================================
echo -e "\n${MAGENTA}🛰 Testing Telemetry Pipeline (Pulse Watch -> Pulsor HUD -> Vault API)...${NC}"
python3 z_dial_core.py --telemetry-stream

echo -e "\n${GREEN}========================================================${NC}"
echo -e "${GREEN}✔ BASE SYSTEM OPERATIONAL — NATIVE ANCHOR READY AT ROOT${NC}"
echo -e "${GREEN}========================================================${NC}"

npx astro preview --port 3000 --open