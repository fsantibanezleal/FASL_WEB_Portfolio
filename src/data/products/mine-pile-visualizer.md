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

## Why This Exists

Mineral tracking simulation engines generate massive operational datasets — belt block compositions, stockpile voxel states, quality distributions over time. The data is there, but it's trapped in raw format. Operators need to answer questions in real time: *What's the current state of each stockpile? How has feed quality evolved over the last shift? Where are quality deviations occurring in the circuit?*

Mine Pile Visualizer was built to bridge that gap. Rather than building a generic dashboard, the approach was to design four dedicated workspaces — each answering a specific class of operational question through purpose-built visualizations.

## Operator Workspaces

The **Circuit** workspace provides a structural map of the processing circuit. An interactive 2D/3D topology diagram — built with `@xyflow/react` and automatic `dagre` layout — shows stages, nodes, edges, flow roles, and anchor inventory. Operators can see how the circuit is connected and where each processing stage sits.

The **Live** workspace is the real-time pulse of the operation. Belt block compositions appear as color-coded strips; stockpile voxel states render in 3D using React Three Fiber with `instancedMesh` for performance. Mass histograms, quality distributions, and per-voxel inspection give operators a dense, spatial picture of what is happening *right now*.

The **Profiler** workspace handles the historical dimension. Snapshot navigation allows stepping through past states, quality time-series reveal shift-to-shift trends, and delta comparisons between snapshots help identify gradual drift in stockpile composition that operators might not notice day-to-day.

The **Simulator** workspace focuses on discharge. It visualizes the central pile structure, active discharge routes, and grouped reclaim sequences — answering the question operators care about during extraction: *where does the material actually go?*

## Data Architecture

The system consumes **Apache Arrow IPC** cached outputs from an upstream mineral tracking engine. Two primary structures carry the data:

**Pile cells** — `(ix, iy, iz, massTon, timestamps, quality columns)` — represent the voxelized stockpile state. Each cell has spatial coordinates, mass, temporal metadata, and multiple quality attributes.

**Belt blocks** — `(position, massTon, timestampOldest, timestampNewest, qualities)` — carry conveyor material composition with temporal bounds showing when the material entered and when it was last updated.

The dense binary Arrow format enables sub-second loading of voxel datasets with thousands of cells. The entire architecture is local-first — no external services, no database, no network dependencies. The visualizer reads pre-computed cache from the local filesystem.

## Technical Foundation

The application runs on **Next.js 16** (App Router) with **React 19** and **TypeScript 5**. Circuit diagrams use `@xyflow/react` with `dagre` for automatic graph layout. 3D stockpile rendering uses `@react-three/fiber` with Three.js and `drei`, leveraging WebGL instanced mesh for efficient voxel visualization. **Zod 4** validates data contracts at runtime, catching schema mismatches before they reach the rendering layer.
