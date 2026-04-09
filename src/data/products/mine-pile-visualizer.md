---
title: "Mine Pile Visualizer — Stockpile & Circuit Topology Explorer"
titleEs: "Mine Pile Visualizer — Explorador de Acopios y Topología de Circuitos"
slug: mine-pile-visualizer
date: 2026-04-01
category: 3d-visualization
excerpt: "A local-first web app for exploring mining circuit topology, live material state, stockpile 3D structure, and historical profiler data. Built on Next.js 16 with React Three Fiber."
excerptEs: "Aplicación web local-first para explorar topología de circuitos mineros, estado de material en tiempo real, estructura 3D de acopios y datos históricos. Construida sobre Next.js 16 con React Three Fiber."
icon: tabler:cube-3d-sphere
tags: [mining, visualization, nextjs, react, three-js, typescript, stockpile, circuit-topology]
proprietary: false
featured: true
assetPatterns: [minepile, material_tracking]
github: "https://github.com/fsantibanezleal/MINE_PILE_VIZ_TS"

challenge: "Mineral tracking systems generate vast amounts of operational data — belt block compositions, stockpile voxel states, quality distributions. The raw data exists, but operators and process engineers need structured, route-specific views to answer operational questions about current stockpile state, feed quality evolution, and circuit understanding."
challengeEs: "Los sistemas de seguimiento de mineral generan enormes cantidades de datos operacionales — composiciones de bloques en correas, estados voxel de acopios, distribuciones de calidad. Los datos existen, pero operadores e ingenieros de proceso necesitan vistas estructuradas y específicas por ruta para responder preguntas operacionales."

approach: "Four dedicated operator workspaces consuming Apache Arrow IPC cached outputs: Circuit (interactive 2D/3D topology diagrams), Live (dense current-state inspection with voxel rendering), Profiler (historical snapshot navigation and quality time-series), and Simulator (pile-centered discharge reading with route visualization)."
approachEs: "Cuatro espacios de trabajo dedicados para operadores consumiendo datos cacheados en Apache Arrow IPC: Circuito (diagramas de topología 2D/3D interactivos), En Vivo (inspección densa del estado actual con renderizado voxel), Perfilador (navegación de snapshots históricos y series de calidad), y Simulador (lectura de descarga centrada en acopio con visualización de rutas)."

kpis:
  - label: "State Visibility"
    labelEs: "Visibilidad de Estado"
    baseline: "Tabular reports, delayed"
    baselineEs: "Reportes tabulares, diferidos"
    result: "Interactive 2D/3D views, real-time cache"
    resultEs: "Vistas 2D/3D interactivas, cache en tiempo real"
    impact: "Spatial understanding of material state"
    impactEs: "Comprensión espacial del estado del material"
  - label: "Decision Context"
    labelEs: "Contexto de Decisión"
    baseline: "Fragmented data sources"
    baselineEs: "Fuentes de datos fragmentadas"
    result: "Four dedicated workspaces"
    resultEs: "Cuatro espacios de trabajo dedicados"
    impact: "Focused operator workflows"
    impactEs: "Flujos de trabajo enfocados para operadores"
  - label: "Historical Review"
    labelEs: "Revisión Histórica"
    baseline: "Manual data extraction"
    baselineEs: "Extracción manual de datos"
    result: "Profiler with snapshot navigation"
    resultEs: "Perfilador con navegación de snapshots"
    impact: "Shift-to-shift trend analysis"
    impactEs: "Análisis de tendencias turno a turno"

metrics:
  - label: "Framework"
    labelEs: "Framework"
    value: "Next.js 16 + React 19"
    valueEs: "Next.js 16 + React 19"
  - label: "3D Engine"
    labelEs: "Motor 3D"
    value: "React Three Fiber + Three.js"
    valueEs: "React Three Fiber + Three.js"
  - label: "Data Format"
    labelEs: "Formato de Datos"
    value: "Apache Arrow IPC"
    valueEs: "Apache Arrow IPC"
  - label: "Workspaces"
    labelEs: "Espacios de Trabajo"
    value: "4 dedicated views"
    valueEs: "4 vistas dedicadas"

stack: [Next.js 16, React 19, TypeScript 5, React Three Fiber, Three.js, "@xyflow/react", dagre, Apache Arrow, Zod 4]
---

## Four Operator Workspaces

The platform is organized into four dedicated operator workspaces, each designed to answer a specific class of operational question:

### Circuit Workspace
Structural reading of the modeled mining area. Interactive 2D/3D circuit topology diagram built with @xyflow/react and dagre layout engine. Shows flow roles, anchors, and belt connections across the entire processing circuit.

### Live Workspace
Dense current-state inspection. Belt block compositions displayed as color-coded strips; stockpile voxel states rendered in real-time 3D using React Three Fiber. Operators can inspect individual voxel quality, tonnage, and age.

### Profiler Workspace
Historical summarized reading. Snapshot navigation allows stepping through past states. Quality time-series charts reveal shift-to-shift trends and help identify gradual drift in stockpile composition.

### Simulator Workspace
Pile-centered discharge reading. Visualizes the central pile structure and active discharge routes, helping operators understand how material flows out of stockpiles during extraction.

## Data Contract

The system consumes **Apache Arrow IPC** cached outputs from an upstream mineral tracking simulation engine. Two primary data structures:

- **Pile cells**: `(ix, iy, iz, massTon, timestamps, quality columns)` — voxelized stockpile state
- **Belt blocks**: `(position, massTon, timestampOldest, timestampNewest, qualities)` — conveyor material composition

This local-first architecture means the visualizer operates without external services — all data is pre-computed and cached locally.

## Technical Highlights

- **Next.js 16** App Router with React 19 and TypeScript 5
- **React Three Fiber** + Three.js for hardware-accelerated 3D voxel rendering
- **@xyflow/react** with dagre for automatic 2D circuit layout
- **Zod 4** for runtime data validation
