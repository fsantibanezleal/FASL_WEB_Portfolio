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

challenge: "Understanding how cells collectively migrate during embryonic development requires models that capture deformable cell shapes, contact interactions, and directed motility — not just point-particle dynamics."
challengeEs: "Entender cómo las células migran colectivamente durante el desarrollo embrionario requiere modelos que capturen formas celulares deformables, interacciones de contacto y motilidad dirigida — no solo dinámica de partículas puntuales."

approach: "Hamiltonian minimization balancing area constraints, perimeter constraints, adhesion energy, and Gaussian filopodia motility. Two-pass collision resolution, per-cell color coding, tissue boundary dynamics, cell proliferation. REST API with 30+ automated tests."
approachEs: "Minimización de Hamiltoniano balanceando restricciones de área, restricciones de perímetro, energía de adhesión y motilidad por filopodios Gaussianos. Resolución de colisiones en dos pasadas, codificación de color por célula, dinámica de bordes tisulares, proliferación celular. API REST con 30+ tests automatizados."

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
  - label: "Tests"
    labelEs: "Tests"
    value: "30+ automated"
    valueEs: "30+ automatizados"

stack: [Python, FastAPI, HTML5 Canvas, NumPy, Hamiltonian Minimization, Metropolis Algorithm]
---

## Why a Cellular Potts Model?

Unlike point-particle models, the CPM represents cells as **deformable bodies** on a lattice. Each cell occupies multiple lattice sites and can change shape through stochastic site-copy events. The system evolves by minimizing a **Hamiltonian** that balances:

- **Area constraint** — cells resist compression and expansion
- **Perimeter constraint** — cells resist excessive deformation
- **Adhesion energy** — type-dependent contact interactions between cells
- **Motility** — directed forces from Gaussian filopodia

## Gaussian Filopodia Model

Cell motility is driven by filopodia — probing extensions that generate directed forces:

`R(θ) = max_j { R₀ + Aⱼ · exp(-(θ - θ₀ⱼ)² / (2·Wⱼ²)) }`

Each filopodium `j` has amplitude `Aⱼ`, preferred direction `θ₀ⱼ`, and angular width `Wⱼ`. The maximum over all filopodia determines the cell's effective reach in each direction.

## Key Features

- **Deformable cell model** with area and perimeter constraints
- **Durotaxis mechanics** — cells respond to substrate stiffness gradients
- **Real-time 2D Canvas visualization** at 10–50 FPS
- **Per-cell color coding** for tracking individual cells
- **Tissue boundary dynamics** and cell proliferation
- **Two-pass collision resolution** preventing cell overlap
- **REST API** with Swagger/ReDoc documentation
- **30+ automated tests** covering simulation physics and API

Developed at **SCIAN-Lab** and **BNI**, Universidad de Chile, supporting developmental biology research on zebrafish Kupffer's vesicle formation.