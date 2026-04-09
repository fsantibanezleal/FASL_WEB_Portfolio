---
title: "FeelIT 2.0 — Haptic Accessibility Workbench"
titleEs: "FeelIT 2.0 — Banco de Trabajo Háptico de Accesibilidad"
slug: feelit-2
date: 2026-03-01
category: accessibility
excerpt: "A web-based haptic accessibility workbench enabling visually impaired users to explore 3D objects through touch, read Braille text in immersive 3D environments, and navigate a haptic desktop. The modern realization of a vision begun in 2008."
excerptEs: "Banco de trabajo háptico web de accesibilidad que permite a usuarios con discapacidad visual explorar objetos 3D mediante tacto, leer texto Braille en entornos 3D inmersivos y navegar un escritorio háptico. La realización moderna de una visión iniciada en 2008."
icon: tabler:accessible
tags: [accessibility, haptics, braille, three-js, fastapi, assistive-technology, python]
proprietary: false
featured: true
assetPatterns: [feelit2]
github: "https://github.com/fsantibanezleal/UDEC_FEELIT"

challenge: "Tactile accessibility remains underserved. Screen readers and audio descriptions dominate assistive technology, but audio alone cannot convey spatial relationships, 3D shapes, or physical texture of objects. The original FeelIT (2008-2012) was frozen when hardware miniaturization made the pin-array display impractical."
challengeEs: "La accesibilidad táctil sigue desatendida. Los lectores de pantalla y descripciones de audio dominan la tecnología asistiva, pero el audio solo no puede transmitir relaciones espaciales, formas 3D o textura física de objetos. El FeelIT original (2008-2012) fue congelado cuando la miniaturización del hardware hizo impracticable la pantalla de pin-array."

approach: "Four integrated workspaces: 3D Object Explorer (8 tactile material profiles, keyboard-driven stylus), Braille Reader (scene-native 3D library with full ASCII + accented character support), Haptic Desktop (workspace launcher for models, texts, audio), and Workspace Manager (auto-population from external folders). Pluggable haptic backend abstraction supports null backend for visual-only and hardware-ready interface."
approachEs: "Cuatro espacios de trabajo integrados: Explorador de Objetos 3D (8 perfiles de material táctil, stylus controlado por teclado), Lector Braille (biblioteca 3D nativa con soporte ASCII completo + caracteres acentuados), Escritorio Háptico (lanzador de espacios de trabajo para modelos, textos, audio), y Gestor de Espacios (auto-poblado desde carpetas externas). Abstracción de backend háptico conectable que soporta backend nulo para solo visual e interfaz lista para hardware."

kpis:
  - label: "Spatial Information Access"
    labelEs: "Acceso a Información Espacial"
    baseline: "Verbal descriptions only"
    baselineEs: "Solo descripciones verbales"
    result: "Direct tactile 3D exploration"
    resultEs: "Exploración 3D táctil directa"
    impact: "Shape understanding without vision"
    impactEs: "Comprensión de formas sin visión"
  - label: "Braille Reading"
    labelEs: "Lectura Braille"
    baseline: "Linear text, no spatial context"
    baselineEs: "Texto lineal, sin contexto espacial"
    result: "3D scene-native Braille with navigation"
    resultEs: "Braille nativo en escena 3D con navegación"
    impact: "Immersive reading experience"
    impactEs: "Experiencia de lectura inmersiva"
  - label: "Hardware Dependency"
    labelEs: "Dependencia de Hardware"
    baseline: "Specific device required"
    baselineEs: "Dispositivo específico requerido"
    result: "Null backend — works without haptic device"
    resultEs: "Backend nulo — funciona sin dispositivo háptico"
    impact: "Immediate usability"
    impactEs: "Usabilidad inmediata"

metrics:
  - label: "Workspaces"
    labelEs: "Espacios de Trabajo"
    value: "4 integrated"
    valueEs: "4 integrados"
  - label: "Material Profiles"
    labelEs: "Perfiles de Material"
    value: "8 tactile profiles"
    valueEs: "8 perfiles táctiles"
  - label: "Distribution"
    labelEs: "Distribución"
    value: "Web + Windows installer"
    valueEs: "Web + instalador Windows"

stack: [Python 3.12, FastAPI, Uvicorn, Three.js, Braille Engine, PyInstaller, Inno Setup]
---

## The Resurrection — From 2008 to 2026

The [original FeelIT](/portfolio/feelit-original) (2008–2012) was frozen when hardware miniaturization and costs made the pin-array display impractical. Fourteen years later, the landscape changed: web technologies enable cross-platform deployment, Three.js provides hardware-accelerated 3D in any browser, and the haptic device ecosystem has expanded beyond proprietary solutions.

FeelIT 2.0 takes the original accessibility vision and rebuilds it from scratch with modern architecture — Python/FastAPI backend + Three.js frontend instead of Windows Forms + OpenGL.

## Business Context

Tactile accessibility remains an underserved space. Screen readers and audio descriptions dominate assistive technology, but audio alone cannot convey spatial relationships, 3D shapes, or the physical texture of objects. FeelIT 2.0 addresses this gap with a structured, multi-workspace approach to tactile interaction.

## Four Workspaces

### 1. 3D Object Explorer
Load bundled OBJ models or upload custom files. Select from **8 tactile material profiles** — polished metal, carved stone, unfinished wood, rubber, foam, textured polymer, coated paper, glazed ceramic — each defining how the object feels to the haptic stylus. Navigate with keyboard-driven stylus emulation (WASD/QE movement, Space/Enter activate).

### 2. Braille Reader
Scene-native 3D library launcher with paged document targets. Load bounded segments (configurable 1,200 chars) from TXT, HTML, or EPUB files. Navigate with in-scene Previous/Next controls. Companion audio catalog pairs readings with narration.

**Braille encoding**: Each character → 6-dot mask (0–63) → 3D positioned cell. Layout: cells arranged in rows × columns grid with orientation rail and origin marker. Standard 6-dot Braille with full ASCII + accented character support.

### 3. Haptic Desktop
Workspace-driven launcher providing a neutral hub with entry points for models, texts, audio, and file browser. Typed file entries have distinct tactile shapes (folders, models, documents, audio, unsupported). Detail plaques show names before opening. Scene-persistent camera viewpoint survives transitions.

### 4. Workspace Manager
Create new workspaces from external folders with auto-population of models, documents, and audio. Register existing `.haptic_workspace.json` descriptors. Review catalog with registry diagnostics.

## From 2008 to 2026

| Aspect | Original (2008–2012) | FeelIT 2.0 (2026) |
|--------|---------------------|-------------------|
| Platform | Windows Forms | Web (FastAPI + Three.js) |
| Scope | Braille only | 4 workspaces (Explorer, Braille, Desktop, Manager) |
| Haptic device | Novint Falcon-specific | Pluggable backend (works without hardware) |
| Documents | Text files only | TXT, HTML, EPUB with segmented loading |
| Documentation | Minimal | 12 docs + 5 SVGs + snapshot archive |

## Technical Architecture

- **Backend**: Python 3.12+, FastAPI, Uvicorn (port 8101)
- **Frontend**: Three.js (bundled locally), vanilla JavaScript, dark theme
- **Braille**: Custom 6-dot encoder with layout engine (134 lines)
- **Materials**: 8 frozen dataclass profiles with stiffness, friction, texture, vibration parameters
- **Haptics**: Pluggable backend abstraction — null backend for visual-only mode, hardware-ready interface for physical devices
- **Content**: 10 bundled OBJ models, 5 public-domain documents (Gutenberg), 4 audio tracks (LibriVox)
- **Distribution**: PyInstaller + Inno Setup for standalone Windows installer

## Methodological Honesty

This project explicitly separates what is **shipped and tested** from what is **planned**. The Implementation Gap Audit documents exactly what works today (Braille reading, 3D staging, workspace management) and what requires future work (native haptic hardware bridge, PDF/DOCX support, force-feedback material realization).

## Recent Updates

**v2.18.000 (April 2026)**: First bounded native haptic pilot — real force feedback through physical device. The pluggable backend abstraction allowed hardware integration with zero changes to workspaces, Braille engine, or material profiles. Haptic configuration review flow added for safe parameter adjustment before sessions.
