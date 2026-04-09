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

stack: [Next.js 16, React 19, TypeScript 5, React Three Fiber, Three.js, "@xyflow/react", dagre, Apache Arrow, Zod 4, Vitest, Playwright]
---

## Business Context

Mineral tracking systems generate vast amounts of operational data — belt block compositions, stockpile voxel states, quality distributions, temporal evolution. The raw data exists, but operators and process engineers need structured, route-specific views to answer operational questions: *What is the current state of each stockpile? How has the feed quality evolved over the last shift? Where in the circuit are quality deviations occurring?*

Mine Pile Visualizer bridges this gap — a local-first web application that consumes cached simulation outputs and presents them through four dedicated operator workspaces, each designed to answer a specific class of operational question.

## Four Operator Workspaces

### Circuit Workspace
Structural reading of the modeled mining area. Interactive 2D/3D circuit topology diagram showing stages, nodes, edges, flow roles, and anchor inventory. Built with `@xyflow/react` and `dagre` for automatic graph layout. Answers: *What is the circuit structure and how are processing stages connected?*

### Live Workspace
Dense current-state inspection. Belt block compositions displayed as color-coded strips; stockpile voxel states rendered in real-time 3D using React Three Fiber with `instancedMesh` for performance. Mass histograms, quality distributions, and per-voxel inspection. Answers: *What is happening right now?*

### Profiler Workspace
Historical summarized reading. Snapshot navigation through time, quality time-series charts, delta comparisons between snapshots. Shift-to-shift trend analysis helps identify gradual drift in stockpile composition. Answers: *How has this evolved over the shift/day/week?*

### Simulator Workspace
Pile-centered discharge reading. Visualizes the central pile structure, discharge routes, and grouped reclaim sequences. Answers: *Where does the material go when we extract?*

## Data Contract — Apache Arrow IPC

The system consumes **Apache Arrow IPC** cached outputs from an upstream mineral tracking simulation engine. Two primary data structures:

- **Pile cells**: `(ix, iy, iz, massTon, timestamps, quality columns)` — voxelized stockpile state with spatial coordinates and multi-quality attributes
- **Belt blocks**: `(position, massTon, timestampOldest, timestampNewest, qualities)` — conveyor material composition with temporal bounds

The dense binary format enables sub-second loading of voxel datasets with thousands of cells. This local-first architecture means the visualizer operates without external services — all data is pre-computed and cached locally.

## Technical Architecture

- **Framework**: Next.js 16 (App Router) with React 19 and TypeScript 5
- **2D Circuit Diagrams**: `@xyflow/react` + `dagre` for automatic graph layout of circuit topology
- **3D Voxel Rendering**: `@react-three/fiber` + Three.js + `drei` — hardware-accelerated WebGL with instanced mesh for stockpile voxels
- **Data Format**: Apache Arrow IPC for dense block/cell datasets
- **Validation**: Zod 4 for runtime contract enforcement
- **Local-first**: No external services — reads app-ready cache from local filesystem

## Recent Updates

**v1.00.001 (April 2026)**: Folded the Stockpiles workspace into Live (Piles/VPiles). Resolved 3D voxel rendering issue — moved from fragile instance-color to explicit merged visible-geometry approach.
