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
  - label: "Test Coverage"
    labelEs: "Cobertura de Tests"
    baseline: "Not applicable"
    baselineEs: "No aplica"
    result: "49 automated tests + browser smoke"
    resultEs: "49 tests automatizados + smoke de navegador"
    impact: "Verifiable reliability"
    impactEs: "Confiabilidad verificable"

metrics:
  - label: "Workspaces"
    labelEs: "Espacios de Trabajo"
    value: "4 integrated"
    valueEs: "4 integrados"
  - label: "Material Profiles"
    labelEs: "Perfiles de Material"
    value: "8 tactile profiles"
    valueEs: "8 perfiles táctiles"
  - label: "Tests"
    labelEs: "Tests"
    value: "49 automated"
    valueEs: "49 automatizados"
  - label: "Distribution"
    labelEs: "Distribución"
    value: "Web + Windows installer"
    valueEs: "Web + instalador Windows"

stack: [Python 3.12, FastAPI, Uvicorn, Three.js, Braille Engine, PyInstaller, Inno Setup]
---

## The Resurrection: From 2008 to 2026

The original FeelIT (2008–2012) was a pioneering attempt to create tactile accessibility using a physical pin-array display. It was frozen when hardware miniaturization made the electromagnetic pin array impractical at accessible cost. FeelIT 2.0 takes the original accessibility vision and rebuilds it entirely with modern web architecture.

| Aspect | Original (2008–2012) | FeelIT 2.0 (2026) |
|--------|---------------------|-------------------|
| Platform | Windows Forms | Web (FastAPI + Three.js) |
| Scope | Braille only | 4 workspaces |
| Haptic device | Novint Falcon-specific | Pluggable backend |
| Documents | Text files only | TXT, HTML, EPUB |
| Testing | None documented | 49 automated + browser smoke |

## Four Workspaces

### 3D Object Explorer
Load bundled OBJ models or upload custom files. **8 tactile material profiles** (polished metal, carved stone, unfinished wood, rubber, foam, textured polymer, coated paper, glazed ceramic) define how objects feel to the haptic stylus. Keyboard-driven stylus emulation enables exploration without physical hardware.

### Braille Reader
Scene-native 3D library with paged document targets. Loads bounded segments (1,200 chars) from TXT, HTML, or EPUB files. Standard 6-dot Braille encoding with full ASCII + accented character support. Each character maps to a 6-dot mask (0–63) → 3D positioned cell with orientation rail and origin marker.

### Haptic Desktop
Workspace-driven launcher providing a neutral hub with entry points for models, texts, audio, and file browser. Functions as the home screen for navigating between different content types.

### Workspace Manager
Create new workspaces from external folders with auto-population of models, documents, and audio content. Organizes the user's content library.

## Braille Encoding Engine

The custom Braille encoder (134 lines) transforms text into spatial 3D representations:

`Character → 6-dot mask (0-63) → 3D positioned cell`

Cells are arranged in rows × columns grid with consistent spacing, an orientation rail for navigation, and an origin marker for spatial reference.

## Methodological Honesty

The Implementation Gap Audit documents exactly what works today (Braille reading, 3D staging, workspace management) and what requires future work (native haptic hardware bridge, PDF/DOCX support, force-feedback material realization with the physical device).
