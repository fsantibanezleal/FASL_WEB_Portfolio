---
title: "Dynamic Holographic Optical Tweezers"
titleEs: "Pinzas Ópticas Holográficas Dinámicas"
slug: holographic-tweezers
date: 2010-04-01
category: computational-optics
excerpt: "Real-time computation and visualization of holographic phase masks for optical tweezers systems. Implements the weighted Gerchberg-Saxton algorithm for shaping laser beams into multiple focused traps to manipulate microscopic particles."
excerptEs: "Cálculo y visualización en tiempo real de máscaras de fase holográficas para sistemas de pinzas ópticas. Implementa el algoritmo de Gerchberg-Saxton ponderado para conformar haces láser en múltiples trampas focalizadas para manipular partículas microscópicas."
icon: tabler:focus-2
tags: [optics, holography, computational-physics, fastapi, python]
proprietary: false
featured: false
assetPatterns: [dinhot, gs_phase]
github: "https://github.com/fsantibanezleal/CEFOP_DinHot"

challenge: "Optical tweezers require precise phase masks computed in real-time to create multiple independently positioned laser traps. The Gerchberg-Saxton algorithm involves iterative Fourier transforms that must converge quickly for interactive manipulation of microscopic particles."
challengeEs: "Las pinzas ópticas requieren máscaras de fase precisas calculadas en tiempo real para crear múltiples trampas láser posicionadas independientemente. El algoritmo de Gerchberg-Saxton involucra transformadas de Fourier iterativas que deben converger rápidamente para manipulación interactiva de partículas microscópicas."

approach: "Weighted Gerchberg-Saxton iterative Fourier-transform method for multi-trap phase mask computation. Python/FastAPI backend with HTML5 Canvas visualization, REST API + WebSocket communication for real-time interaction. Originally developed at CEFOP, Universidad de Concepción."
approachEs: "Método de transformada de Fourier iterativa Gerchberg-Saxton ponderado para cálculo de máscaras de fase multi-trampa. Backend Python/FastAPI con visualización HTML5 Canvas, comunicación REST API + WebSocket para interacción en tiempo real. Desarrollado originalmente en CEFOP, Universidad de Concepción."

kpis:
  - label: "Phase Computation"
    labelEs: "Cálculo de Fase"
    baseline: "Offline computation"
    baselineEs: "Cálculo offline"
    result: "Real-time iterative GS algorithm"
    resultEs: "Algoritmo GS iterativo en tiempo real"
    impact: "Interactive trap positioning"
    impactEs: "Posicionamiento interactivo de trampas"
  - label: "Trap Configuration"
    labelEs: "Configuración de Trampas"
    baseline: "Single fixed trap"
    baselineEs: "Trampa fija única"
    result: "Multiple independently positioned traps"
    resultEs: "Múltiples trampas posicionadas independientemente"
    impact: "Flexible particle manipulation"
    impactEs: "Manipulación flexible de partículas"

metrics:
  - label: "Algorithm"
    labelEs: "Algoritmo"
    value: "Weighted Gerchberg-Saxton"
    valueEs: "Gerchberg-Saxton ponderado"
  - label: "Traps"
    labelEs: "Trampas"
    value: "Multiple independent"
    valueEs: "Múltiples independientes"
  - label: "Origin"
    labelEs: "Origen"
    value: "CEFOP, U. de Concepción"
    valueEs: "CEFOP, U. de Concepción"

stack: [Python, FastAPI, NumPy, FFT, HTML5 Canvas, WebSocket, Gerchberg-Saxton]
---

## How Optical Tweezers Work

Optical tweezers use a tightly focused laser beam to trap and manipulate microscopic particles — cells, beads, molecules. The **radiation pressure gradient** near the focal point creates a stable 3D potential well: the particle is pulled toward the highest intensity point. By moving the focus, you move the trapped object.

## The Challenge: Multiple Traps

A single focused beam creates one trap. To create **multiple independently positioned traps** from a single laser, the beam must be shaped using a **phase-only spatial light modulator (SLM)** — a device that modifies the wavefront without affecting amplitude. The SLM displays a computed phase mask that splits and redirects the beam into multiple focal points, each capable of trapping a particle.

Computing the right phase mask is the core computational challenge.

## The Gerchberg-Saxton Algorithm

The **weighted GS algorithm** computes phase masks through iterative Fourier transform cycling:

1. Start with desired trap positions and intensities in the focal plane
2. **Inverse FFT** to SLM plane → extract phase, replace amplitude with uniform beam profile
3. **Forward FFT** to focal plane → extract phase, replace amplitude with desired trap pattern
4. Repeat until convergence (typically 10–50 iterations)

The **weighting** adjusts trap intensities at each iteration to ensure uniform trapping force across all positions — without it, outer traps tend to be weaker.

## Features

- **Real-time** phase mask computation for interactive trap positioning
- **Multiple independent traps** from a single laser beam
- **WebSocket communication** for low-latency interaction between browser and computation engine
- **HTML5 Canvas** visualization of phase patterns, simulated focal plane, and trap quality metrics
- **6 Zernike aberration modes** for simulating optical system imperfections

Originally developed at **CEFOP** (Center for Optics and Photonics), Universidad de Concepción.