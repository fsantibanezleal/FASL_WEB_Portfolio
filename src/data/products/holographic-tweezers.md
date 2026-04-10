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
demo: "https://dinhot.fasl-work.com"

challenge: "Optical tweezers require precise phase masks computed in real-time to create multiple independently positioned laser traps. The Gerchberg-Saxton algorithm involves iterative Fourier transforms that must converge quickly for interactive manipulation of microscopic particles."
challengeEs: "Las pinzas ópticas requieren máscaras de fase precisas calculadas en tiempo real para crear múltiples trampas láser posicionadas independientemente. El algoritmo de Gerchberg-Saxton involucra transformadas de Fourier iterativas que deben converger rápidamente para manipulación interactiva de partículas microscópicas."

approach: "Weighted Gerchberg-Saxton iterative Fourier-transform method for multi-trap phase mask computation. Python/FastAPI backend with HTML5 Canvas visualization, REST API + WebSocket communication for real-time interaction. Originally developed at CEFOP, Universidad de Concepción."
approachEs: "Método de transformada de Fourier iterativa Gerchberg-Saxton ponderado para cálculo de máscaras de fase multi-trampa. Backend Python/FastAPI con visualización HTML5 Canvas, comunicación REST API + WebSocket para interacción en tiempo real. Desarrollado originalmente en CEFOP, Universidad de Concepción."

businessContext: "Optical tweezers use tightly focused laser beams to trap and manipulate microscopic particles — cells, beads, molecules. A single focused beam creates one trap. Creating multiple independently positioned traps from a single laser requires computing holographic phase masks that split and redirect the beam through a spatial light modulator. The computational challenge: finding the optimal phase distribution that produces uniform trapping force across all desired positions."
businessContextEs: "Las pinzas ópticas usan haces láser enfocados para atrapar y manipular partículas microscópicas — células, esferas, moléculas. Un solo haz enfocado crea una trampa. Crear múltiples trampas posicionadas independientemente desde un solo láser requiere calcular máscaras de fase holográficas que dividen y redirigen el haz a través de un modulador espacial de luz. El desafío computacional: encontrar la distribución de fase óptima que produce fuerza de trampa uniforme en todas las posiciones deseadas."
strategicValue: "The weighted Gerchberg-Saxton algorithm computes phase masks through iterative Fourier transform cycling, with intensity weighting ensuring uniform trapping force. Real-time computation enables interactive trap positioning via WebSocket communication. The application supports 6 Zernike aberration modes for simulating optical system imperfections. Originally developed at CEFOP (Center for Optics and Photonics), Universidad de Concepción. Modernized as Python/FastAPI with HTML5 Canvas visualization."
strategicValueEs: "El algoritmo de Gerchberg-Saxton ponderado calcula máscaras de fase mediante ciclado iterativo de transformada de Fourier, con ponderación de intensidad asegurando fuerza de trampa uniforme. El cálculo en tiempo real permite posicionamiento interactivo de trampas vía comunicación WebSocket. La aplicación soporta 6 modos de aberración de Zernike para simular imperfecciones del sistema óptico. Originalmente desarrollado en CEFOP (Centro de Óptica y Fotónica), Universidad de Concepción. Modernizado como Python/FastAPI con visualización HTML5 Canvas."

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

## Trapping Light

Optical tweezers use a tightly focused laser beam to trap microscopic particles — cells, beads, molecules. The radiation pressure gradient near the focus creates a stable 3D potential well that holds the particle in place. Moving the focus moves the trapped object. One beam, one trap.

The challenge: creating **multiple independently positioned traps** from a single laser. The solution is a spatial light modulator (SLM) — a device that reshapes the wavefront without changing amplitude. The SLM displays a computed phase mask that splits the beam into multiple focal points, each capable of trapping a particle independently.

## Computing the Phase Mask

The weighted **Gerchberg-Saxton algorithm** computes phase masks through iterative Fourier transform cycling: start with desired trap positions, inverse FFT to the SLM plane (extract phase, replace amplitude with uniform beam), forward FFT to focal plane (extract phase, replace amplitude with desired pattern), repeat. The weighting adjusts trap intensities at each iteration to ensure uniform trapping force — without it, outer traps tend to be weaker.

Convergence typically requires 10–50 iterations. The result: a phase pattern that, when displayed on the SLM, creates multiple laser foci at precisely specified positions in 3D space.

The application provides real-time phase mask computation with WebSocket communication for low-latency browser interaction, HTML5 Canvas visualization of phase patterns and simulated focal planes, and 6 Zernike aberration modes for simulating optical system imperfections. Originally developed at **CEFOP** (Center for Optics and Photonics), Universidad de Concepción.