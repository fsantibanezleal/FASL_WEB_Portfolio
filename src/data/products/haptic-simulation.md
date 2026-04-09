---
title: "3D Haptic Simulation with Octree Collision Detection"
titleEs: "Simulación Háptica 3D con Detección de Colisiones Octree"
slug: haptic-simulation
date: 2009-06-01
category: accessibility
excerpt: "A 3D simulation system recreating haptic interaction with virtual objects. Uses octree spatial partitioning (O(N log N)) and Separating Axis Theorem for collision detection with spring-damper Kelvin-Voigt force model."
excerptEs: "Sistema de simulación 3D que recrea interacción háptica con objetos virtuales. Usa particionamiento espacial octree (O(N log N)) y Teorema del Eje Separador para detección de colisiones con modelo de fuerza Kelvin-Voigt resorte-amortiguador."
icon: tabler:hand-click
tags: [haptics, collision-detection, octree, three-js, fastapi, simulation, python]
proprietary: false
featured: false
assetPatterns: [haptic]
github: "https://github.com/fsantibanezleal/UDEC_Haptic_SIM"

challenge: "Real-time haptic rendering requires collision detection at >1 kHz update rates. Brute-force triangle-triangle testing is O(N²), far too slow for complex meshes. The force feedback must feel natural and physically plausible."
challengeEs: "El renderizado háptico en tiempo real requiere detección de colisiones a tasas de actualización >1 kHz. La prueba bruta triángulo-triángulo es O(N²), demasiado lenta para mallas complejas. La retroalimentación de fuerza debe sentirse natural y físicamente plausible."

approach: "Two-phase collision: octree spatial partitioning for broad-phase O(N log N), SAT (Separating Axis Theorem) for narrow-phase triangle-triangle intersection across 11 axes. Contact forces follow Kelvin-Voigt spring-damper: F = -k·(p_probe - p_contact) - b·v_probe. Modern web version with Three.js WebGL rendering."
approachEs: "Colisión en dos fases: particionamiento espacial octree para fase amplia O(N log N), SAT (Teorema del Eje Separador) para fase estrecha intersección triángulo-triángulo en 11 ejes. Fuerzas de contacto siguen Kelvin-Voigt resorte-amortiguador: F = -k·(p_sonda - p_contacto) - b·v_sonda. Versión web moderna con renderizado Three.js WebGL."

kpis:
  - label: "Collision Efficiency"
    labelEs: "Eficiencia de Colisión"
    baseline: "O(N²) brute force"
    baselineEs: "O(N²) fuerza bruta"
    result: "O(N log N) octree + SAT"
    resultEs: "O(N log N) octree + SAT"
    impact: "Real-time haptic rates"
    impactEs: "Tasas hápticas en tiempo real"
  - label: "Force Model"
    labelEs: "Modelo de Fuerza"
    baseline: "Simple contact detection"
    baselineEs: "Detección de contacto simple"
    result: "Kelvin-Voigt spring-damper"
    resultEs: "Resorte-amortiguador Kelvin-Voigt"
    impact: "Physically plausible feedback"
    impactEs: "Retroalimentación físicamente plausible"

metrics:
  - label: "Broad Phase"
    labelEs: "Fase Amplia"
    value: "Octree O(N log N)"
    valueEs: "Octree O(N log N)"
  - label: "Narrow Phase"
    labelEs: "Fase Estrecha"
    value: "SAT (11 axes)"
    valueEs: "SAT (11 ejes)"
  - label: "Force Model"
    labelEs: "Modelo de Fuerza"
    value: "Kelvin-Voigt spring-damper"
    valueEs: "Kelvin-Voigt resorte-amortiguador"
  - label: "Rendering"
    labelEs: "Renderizado"
    value: "Three.js WebGL"
    valueEs: "Three.js WebGL"

stack: [Python, FastAPI, Three.js, Octree, SAT, Kelvin-Voigt, OBJ Loader, WebGL]
---

## The Challenge

Real-time haptic rendering requires collision detection at **>1 kHz update rates** — the human sense of touch perceives delays of just 1 millisecond. Brute-force triangle-triangle testing is O(N²), far too slow for meshes with thousands of triangles. The force feedback must feel natural and physically plausible, not just detect contact.

## Collision Detection Pipeline

### Broad Phase: Octree Spatial Partitioning
The scene is recursively subdivided into octants, each containing a subset of triangles. For a probe query, only the traversed octant and its neighbors need pairwise testing — reducing complexity from **O(N²) to O(N log N)**. The octree is built once per mesh and supports fast updates for deformable objects.

### Narrow Phase: Separating Axis Theorem (SAT)
For each candidate triangle pair, SAT tests for intersection along **11 potential separating axes**:
- **2 triangle face normals** (one per triangle)
- **9 cross products** of edge pairs (3 edges × 3 edges)

If any axis separates the two triangles, they don't intersect. Only when all 11 axes fail to separate do we have a collision — mathematically complete and exact.

## Force Model: Kelvin-Voigt Spring-Damper

Contact forces follow the **Kelvin-Voigt** model:

`F = -k · (p_probe - p_contact) - b · v_probe`

Where:
- **k** = spring stiffness (surface hardness) — how strongly the surface resists penetration
- **b** = damping coefficient — energy dissipation that provides stability and prevents oscillation
- **p_probe** and **p_contact** = probe position and nearest contact point on the surface
- **v_probe** = probe velocity

The spring term resists penetration; the damping term absorbs energy. Together they produce physically plausible haptic feedback that feels like touching a real surface.

## Evolution

Originally developed in **2008 at Universidad de Concepción** using C++/CLI with a physical **PHANToM Omni** haptic device providing 3-DOF force feedback. The modern version recreates the full simulation as a **Python/FastAPI** backend with **Three.js** WebGL rendering in the browser, supporting keyboard-driven probe interaction without requiring physical hardware.