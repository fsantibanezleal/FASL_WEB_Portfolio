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
  - label: "Tests"
    labelEs: "Tests"
    value: "23+ automated"
    valueEs: "23+ automatizados"

stack: [Python, FastAPI, WebSocket, Three.js, NumPy, AER Coordinates, Orbit Controls]
---

## Biological Context

During zebrafish gastrulation, the **Enveloping Layer (EVL)** expands to engulf the yolk cell in a process called **epiboly**. **Deep Forming Cells (DFCs)** migrate collectively on the embryo surface, guided by EVL expansion and cell-cell interactions.

## AER Coordinate System

The simulation uses **Azimuth-Elevation-Radius** coordinates, naturally suited to spherical geometry:

- **Azimuth** (φ): horizontal angle, -π to π, with **periodic wrapping**
- **Elevation** (θ): vertical angle, -π/2 to π/2, with **pole clamping**
- **Radius** (r): constant — cells remain on the embryo surface

### Velocity Model

Each cell's velocity combines:
- **Deterministic component** from EVL coupling: `base_velocity = [0, -(π/2)·evl_speed, 0]`
- **Gaussian stochastic term** adding biological variability

### Collision Detection

Pairwise collision detection in angular space with **symmetric push-apart resolution**: when two cells overlap, both are displaced equally in opposite directions, then projected back onto the sphere surface.

## Technical Highlights

- **Python/FastAPI** backend with **WebSocket streaming** for real-time simulation state
- **Three.js (r128)** visualization with orbit controls for 3D embryo exploration
- **Layer-based DFC management** with configurable cell properties
- **Play/Pause/Step controls** for detailed simulation inspection
- **23+ automated tests** covering coordinate transforms, collision physics, and API