---
title: "Cellular Potts Model Simulator"
titleEs: "Simulador de Modelo de Potts Celular"
slug: cellular-potts-model
date: 2013-06-01
category: biophysics
excerpt: "A CPM simulator for modeling collective migration of Dorsal Forerunner Cells during zebrafish development. Cells as deformable bodies on a lattice with Gaussian filopodia, durotaxis, and contact interactions at 10-50 FPS."
excerptEs: "Simulador CPM para modelar migración colectiva de Células Precursoras Dorsales durante el desarrollo del pez cebra. Células como cuerpos deformables en una red con filopodios Gaussianos, durotaxis e interacciones de contacto a 10-50 FPS."
icon: tabler:cell
tags: [biophysics, cellular-potts-model, simulation, computational-biology, fastapi, python]
proprietary: false
featured: false
assetPatterns: [cpm]
github: "https://github.com/fsantibanezleal/SCIAN_LEO_CPM"

challenge: "Understanding how cells collectively migrate during embryonic development requires models that capture deformable cell shapes, contact interactions, and directed motility — not just point-particle dynamics."
challengeEs: "Entender cómo las células migran colectivamente durante el desarrollo embrionario requiere modelos que capturen formas celulares deformables, interacciones de contacto y motilidad dirigida — no solo dinámica de partículas puntuales."

approach: "Hamiltonian minimization balancing area constraints, perimeter constraints, adhesion energy, and Gaussian filopodia motility. Two-pass collision resolution, per-cell color coding, tissue boundary dynamics, cell proliferation."
approachEs: "Minimización de Hamiltoniano balanceando restricciones de área, restricciones de perímetro, energía de adhesión y motilidad por filopodios Gaussianos. Resolución de colisiones en dos pasadas, codificación de color por célula, dinámica de bordes tisulares, proliferación celular."

kpis:
  - label: "Cell Model"
    labelEs: "Modelo Celular"
    baseline: "Point particles"
    baselineEs: "Partículas puntuales"
    result: "Deformable bodies on lattice"
    resultEs: "Cuerpos deformables en red"
    impact: "Realistic shape dynamics"
    impactEs: "Dinámica de formas realista"
  - label: "Visualization"
    labelEs: "Visualización"
    baseline: "Post-processing only"
    baselineEs: "Solo post-procesamiento"
    result: "Real-time 2D Canvas at 10-50 FPS"
    resultEs: "Canvas 2D en tiempo real a 10-50 FPS"
    impact: "Interactive parameter exploration"
    impactEs: "Exploración interactiva de parámetros"

metrics:
  - label: "Cell Model"
    labelEs: "Modelo"
    value: "Deformable Potts lattice"
    valueEs: "Red de Potts deformable"
  - label: "Motility"
    labelEs: "Motilidad"
    value: "Gaussian filopodia"
    valueEs: "Filopodios Gaussianos"
  - label: "Frame Rate"
    labelEs: "Tasa de Cuadros"
    value: "10-50 FPS"
    valueEs: "10-50 FPS"

stack: [Python, FastAPI, HTML5 Canvas, NumPy, Hamiltonian Minimization, Metropolis Algorithm]
---

## The Biology

During zebrafish embryonic development, Dorsal Forerunner Cells (DFCs) migrate collectively to form the Kupffer's vesicle — the organ that establishes left-right body asymmetry. Understanding this process requires a model that captures what actually matters: cells aren't points or rigid circles. They deform. They stick to each other. They extend probing filopodia that pull them in specific directions.

## The Model

The Cellular Potts Model represents each cell as a **deformable body** occupying multiple lattice sites. The system evolves through Metropolis-style Monte Carlo sampling — proposing site-copy events and accepting or rejecting them based on a **Hamiltonian** energy function that balances four competing forces:

Area and perimeter constraints keep cells from growing or shrinking unrealistically. Adhesion energy governs how strongly different cell types stick to each other. And the **Gaussian filopodia model** drives migration:

`R(θ) = max_j { R₀ + Aⱼ · exp(-(θ - θ₀ⱼ)² / (2·Wⱼ²)) }`

Each filopodium creates a directional protrusion bias — amplitude Aⱼ, preferred direction θ₀ⱼ, angular width Wⱼ. The maximum over all filopodia determines the cell's effective reach, creating the crawling behavior observed in real DFC migration.

The simulation runs at 10–50 FPS with real-time 2D Canvas visualization, two-pass collision resolution, and tissue boundary dynamics (EVL and DEB layers). Developed at **SCIAN-Lab** and **BNI**, Universidad de Chile, supporting developmental biology research.