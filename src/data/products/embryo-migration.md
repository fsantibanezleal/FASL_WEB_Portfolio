---
title: "3D Embryo Cell Migration Simulator"
titleEs: "Simulador 3D de Migración Celular Embrionaria"
slug: embryo-migration
date: 2011-09-01
category: biophysics
excerpt: "A 3D simulation of Deep Forming Cell collective migration on the surface of a spherical zebrafish embryo during epiboly. Uses AER coordinate system with WebSocket streaming and Three.js visualization."
excerptEs: "Simulación 3D de migración colectiva de Células de Formación Profunda sobre la superficie de un embrión esférico de pez cebra durante la epibolía. Usa sistema de coordenadas AER con streaming WebSocket y visualización Three.js."
icon: tabler:dna-2
tags: [biophysics, simulation, three-js, fastapi, developmental-biology, python]
proprietary: false
featured: false
assetPatterns: [sphersim, evl_spring]
github: "https://github.com/fsantibanezleal/SCIAN_EVL_SpherSIM"

challenge: "Simulating collective cell migration on a curved embryonic surface requires coordinate systems that handle spherical geometry — pole singularities, periodic wrapping — while maintaining physically meaningful collision detection and force resolution."
challengeEs: "Simular migración celular colectiva en una superficie embrionaria curva requiere sistemas de coordenadas que manejen geometría esférica — singularidades polares, wrapping periódico — manteniendo detección de colisiones y resolución de fuerzas físicamente significativas."

approach: "AER (Azimuth-Elevation-Radius) coordinate system with automatic wrapping at poles. EVL coupling provides deterministic base velocity; Gaussian stochastic term adds biological noise. Pairwise collision detection in angular space with symmetric push-apart resolution and sphere projection. WebSocket streaming for real-time 3D visualization."
approachEs: "Sistema de coordenadas AER (Azimut-Elevación-Radio) con wrapping automático en los polos. El acoplamiento EVL provee velocidad base determinística; término estocástico Gaussiano agrega ruido biológico. Detección de colisiones por pares en espacio angular con resolución simétrica push-apart y proyección esférica. Streaming WebSocket para visualización 3D en tiempo real."

businessContext: "During zebrafish gastrulation, the Enveloping Layer expands to engulf the yolk cell in a process called epiboly — one of the fundamental morphogenetic movements in vertebrate development. Deep Forming Cells ride this expansion, migrating collectively on the curved embryo surface. Simulating this process on a flat 2D plane introduces geometric distortions that compromise biological accuracy — the spherical geometry of the embryo is essential to understanding the migration dynamics."
businessContextEs: "Durante la gastrulación del pez cebra, la Capa Envolvente se expande para envolver la célula de yema en un proceso llamado epibolía — uno de los movimientos morfogenéticos fundamentales en el desarrollo vertebrado. Las Células de Formación Profunda se desplazan con esta expansión, migrando colectivamente sobre la superficie curva del embrión. Simular este proceso en un plano 2D plano introduce distorsiones geométricas que comprometen la precisión biológica — la geometría esférica del embrión es esencial para entender la dinámica de migración."
strategicValue: "The simulation uses an AER (Azimuth-Elevation-Radius) coordinate system naturally suited to spherical geometry, with periodic wrapping at the azimuth and pole clamping at elevation. Cell velocity combines deterministic EVL coupling with Gaussian stochastic biological variability. Pairwise collision detection in angular space with symmetric push-apart resolution preserves momentum balance. Three.js visualization with orbit controls enables 3D embryo exploration. WebSocket streaming provides real-time simulation state. Developed at SCIAN-Lab, Universidad de Chile."
strategicValueEs: "La simulación usa un sistema de coordenadas AER (Azimut-Elevación-Radio) naturalmente adecuado para geometría esférica, con wrapping periódico en azimut y clamping polar en elevación. La velocidad celular combina acoplamiento determinístico EVL con variabilidad biológica estocástica Gaussiana. Detección de colisiones por pares en espacio angular con resolución simétrica push-apart preserva el balance de momentum. Visualización Three.js con controles de órbita permite exploración 3D del embrión. Streaming WebSocket provee estado de simulación en tiempo real. Desarrollado en SCIAN-Lab, Universidad de Chile."

kpis:
  - label: "Geometry"
    labelEs: "Geometría"
    baseline: "2D flat simulations"
    baselineEs: "Simulaciones 2D planas"
    result: "3D spherical embryo surface"
    resultEs: "Superficie 3D esférica de embrión"
    impact: "Biologically accurate geometry"
    impactEs: "Geometría biológicamente precisa"
  - label: "Visualization"
    labelEs: "Visualización"
    baseline: "Offline rendering"
    baselineEs: "Renderizado offline"
    result: "Real-time Three.js WebGL"
    resultEs: "Three.js WebGL en tiempo real"
    impact: "Interactive 3D exploration"
    impactEs: "Exploración 3D interactiva"

metrics:
  - label: "Coordinate System"
    labelEs: "Sistema de Coordenadas"
    value: "AER (spherical)"
    valueEs: "AER (esférico)"
  - label: "Streaming"
    labelEs: "Streaming"
    value: "WebSocket real-time"
    valueEs: "WebSocket tiempo real"
  - label: "Rendering"
    labelEs: "Renderizado"
    value: "Three.js r128"
    valueEs: "Three.js r128"

stack: [Python, FastAPI, WebSocket, Three.js, NumPy, AER Coordinates, Orbit Controls]
---

## The Process

During zebrafish gastrulation, the Enveloping Layer (EVL) expands to engulf the yolk cell in a process called **epiboly**. Deep Forming Cells (DFCs) ride this expansion, migrating collectively on the curved embryo surface. This simulation captures that process on the actual spherical geometry of the embryo — not a flat approximation.

## Spherical Coordinates

The AER (Azimuth-Elevation-Radius) coordinate system handles the geometry naturally. Azimuth wraps periodically (-π to π) — moving past one side means appearing on the other. Elevation clamps at the poles (-π/2 to π/2). Radius stays constant — cells are confined to the embryo surface.

Each cell's velocity combines a **deterministic component** from EVL coupling (`base_velocity = [0, -(π/2)·evl_speed, 0]` — the expanding EVL drags cells vegetally) with a **Gaussian stochastic term** adding biological variability. Collision detection operates in angular space with symmetric push-apart resolution: overlapping cells are displaced equally in opposite directions, then projected back onto the sphere.

Three.js visualization with orbit controls lets researchers rotate, zoom, and inspect the 3D embryo from any angle. WebSocket streaming provides real-time simulation state. Play/Pause/Step controls enable frame-by-frame inspection of migration dynamics.
