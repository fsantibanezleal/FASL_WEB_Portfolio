---
title: "Dual Photography Lab"
titleEs: "Laboratorio de Fotografía Dual"
slug: dual-photography
date: 2020-06-01
category: computational-optics
excerpt: "An interactive application implementing the dual photography technique — reconstructing how a scene looks from a projector's point of view using light transport matrices, SVD decomposition, and Helmholtz reciprocity."
excerptEs: "Aplicación interactiva que implementa la técnica de fotografía dual — reconstruyendo cómo se ve una escena desde el punto de vista de un proyector usando matrices de transporte de luz, descomposición SVD y reciprocidad de Helmholtz."
icon: tabler:camera
tags: [computational-photography, linear-algebra, svd, compressed-sensing, dash, python]
proprietary: false
featured: false
assetPatterns: [dual]
github: "https://github.com/fsantibanezleal/FASL_Coding_DualFotography"
video: "https://www.youtube.com/watch?v=Ju5GQuowxaE"

challenge: "Dual photography involves recovering the view from a projector's perspective using only camera observations. The transport matrix T encodes how every projector pixel contributes to every camera pixel through scene geometry and materials — but working with it requires efficient decomposition and reconstruction methods."
challengeEs: "La fotografía dual implica recuperar la vista desde la perspectiva de un proyector usando solo observaciones de cámara. La matriz de transporte T codifica cómo cada píxel del proyector contribuye a cada píxel de cámara a través de geometría y materiales de la escena — pero trabajar con ella requiere métodos eficientes de descomposición y reconstrucción."

approach: "Ray-cast simulation with 6 scene types, SVD analysis (T = U·Σ·Vᵀ) to reveal optical complexity, 10 illumination patterns, optional webcam capture mode. Backend implements Lambertian BRDF models with NumPy/SciPy and Dash/Plotly visualization frontend."
approachEs: "Simulación ray-cast con 6 tipos de escena, análisis SVD (T = U·Σ·Vᵀ) para revelar complejidad óptica, 10 patrones de iluminación, modo opcional de captura por webcam. Backend implementa modelos BRDF Lambertianos con NumPy/SciPy y frontend de visualización Dash/Plotly."

kpis:
  - label: "Scene Types"
    labelEs: "Tipos de Escena"
    baseline: "Static images"
    baselineEs: "Imágenes estáticas"
    result: "6 interactive ray-cast scenes"
    resultEs: "6 escenas ray-cast interactivas"
    impact: "Interactive optical exploration"
    impactEs: "Exploración óptica interactiva"
  - label: "Illumination Patterns"
    labelEs: "Patrones de Iluminación"
    baseline: "Single lighting"
    baselineEs: "Iluminación única"
    result: "10 structured patterns"
    resultEs: "10 patrones estructurados"
    impact: "Complete transport characterization"
    impactEs: "Caracterización completa de transporte"

metrics:
  - label: "Technique"
    labelEs: "Técnica"
    value: "SVD light transport decomposition"
    valueEs: "Descomposición SVD de transporte de luz"
  - label: "Scenes"
    labelEs: "Escenas"
    value: "6 types"
    valueEs: "6 tipos"
  - label: "Capture"
    labelEs: "Captura"
    value: "Simulation + webcam"
    valueEs: "Simulación + webcam"

stack: [Python, NumPy, SciPy, Dash, Plotly, Lambertian BRDF, SVD]
---

## The Idea

The **transport matrix T** encodes how every projector pixel contributes to every camera pixel through scene geometry and materials. If we measure T by projecting structured patterns and recording what the camera sees, we can reconstruct the projector's view using **Helmholtz reciprocity**: the dual image is simply T transposed applied to a virtual illumination.

## What Makes This Interesting

### SVD Analysis
The decomposition **T = UΣVᵀ** reveals the scene's optical complexity. The singular value spectrum tells us how many independent optical "modes" the scene supports. A flat wall has a simple spectrum; a complex textured scene has many significant singular values.

### Compressed Sensing
With structured illumination patterns (Bernoulli or Hadamard matrices), we can recover the dual image with **far fewer measurements** than the full transport matrix requires. This connects dual photography to compressed sensing theory.

## Features

- **6 scene types** with ray-cast simulation (flat, textured, concave, convex, multi-object, occluding)
- **10 illumination patterns** (point, line, grid, random, Hadamard, etc.)
- **SVD decomposition** with interactive singular value exploration
- **Optional webcam capture mode** for real-world dual photography
