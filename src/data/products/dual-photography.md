---
title: 'Dual Photography Lab'
titleEs: 'Laboratorio de Fotografía Dual'
slug: dual-photography
date: 2020-06-01
category: computational-optics
excerpt: "An interactive application implementing the dual photography technique — reconstructing how a scene looks from a projector's point of view using light transport matrices, SVD decomposition, and Helmholtz reciprocity."
excerptEs: 'Aplicación interactiva que implementa la técnica de fotografía dual — reconstruyendo cómo se ve una escena desde el punto de vista de un proyector usando matrices de transporte de luz, descomposición SVD y reciprocidad de Helmholtz.'
icon: tabler:camera
tags: [computational-photography, linear-algebra, svd, compressed-sensing, dash, python]
proprietary: false
featured: false
assetPatterns: [dual_photography, dual_helmholtz, dual_frontend]
github: 'https://github.com/fsantibanezleal/FASL_Coding_DualFotography'
video: 'https://www.youtube.com/watch?v=Ju5GQuowxaE'
demo: 'https://dual.fasl-work.com'

challenge: "Dual photography involves recovering the view from a projector's perspective using only camera observations. The transport matrix T encodes how every projector pixel contributes to every camera pixel through scene geometry and materials — but working with it requires efficient decomposition and reconstruction methods."
challengeEs: 'La fotografía dual implica recuperar la vista desde la perspectiva de un proyector usando solo observaciones de cámara. La matriz de transporte T codifica cómo cada píxel del proyector contribuye a cada píxel de cámara a través de geometría y materiales de la escena — pero trabajar con ella requiere métodos eficientes de descomposición y reconstrucción.'

approach: 'Ray-cast simulation with 6 scene types, SVD analysis (T = U·Σ·Vᵀ) to reveal optical complexity, 10 illumination patterns, optional webcam capture mode. Backend implements Lambertian BRDF models with NumPy/SciPy and Dash/Plotly visualization frontend.'
approachEs: 'Simulación ray-cast con 6 tipos de escena, análisis SVD (T = U·Σ·Vᵀ) para revelar complejidad óptica, 10 patrones de iluminación, modo opcional de captura por webcam. Backend implementa modelos BRDF Lambertianos con NumPy/SciPy y frontend de visualización Dash/Plotly.'
businessContext: "Dual photography is a computational imaging technique that reconstructs how a scene looks from a projector's point of view using only camera observations. The transport matrix T encodes every light interaction between projector and camera through scene geometry, reflectance, and occlusion. By measuring T with structured illumination patterns and applying Helmholtz reciprocity, we can computationally reconstruct viewpoints that were never physically occupied — seeing from where we illuminate."
businessContextEs: 'La fotografía dual es una técnica de imagen computacional que reconstruye cómo se ve una escena desde el punto de vista de un proyector usando solo observaciones de cámara. La matriz de transporte T codifica cada interacción de luz entre proyector y cámara a través de la geometría de la escena, reflectancia y oclusión. Al medir T con patrones de iluminación estructurada y aplicar reciprocidad de Helmholtz, podemos reconstruir computacionalmente puntos de vista que nunca fueron físicamente ocupados — viendo desde donde iluminamos.'
strategicValue: 'The application provides a complete interactive environment for exploring dual photography: 6 ray-cast scene types (flat, textured, concave, convex, multi-object, occluding), 10 illumination patterns, SVD decomposition with interactive singular value exploration revealing optical complexity, compressed sensing with Bernoulli/Hadamard matrices for efficient acquisition, and an optional webcam capture mode for real-world experiments. The SVD analysis T = UΣVᵀ connects imaging to linear algebra in a tangible way — the singular value spectrum reveals how many independent optical modes a scene supports.'
strategicValueEs: 'La aplicación provee un entorno interactivo completo para explorar fotografía dual: 6 tipos de escena ray-cast (plana, texturizada, cóncava, convexa, multi-objeto, con oclusión), 10 patrones de iluminación, descomposición SVD con exploración interactiva de valores singulares revelando complejidad óptica, compressed sensing con matrices de Bernoulli/Hadamard para adquisición eficiente, y modo opcional de captura por webcam para experimentos reales. El análisis SVD T = UΣVᵀ conecta imágenes con álgebra lineal de forma tangible — el espectro de valores singulares revela cuántos modos ópticos independientes soporta una escena.'

kpis:
  - label: 'Scene Types'
    labelEs: 'Tipos de Escena'
    baseline: 'Static images'
    baselineEs: 'Imágenes estáticas'
    result: '6 interactive ray-cast scenes'
    resultEs: '6 escenas ray-cast interactivas'
    impact: 'Interactive optical exploration'
    impactEs: 'Exploración óptica interactiva'
  - label: 'Illumination Patterns'
    labelEs: 'Patrones de Iluminación'
    baseline: 'Single lighting'
    baselineEs: 'Iluminación única'
    result: '10 structured patterns'
    resultEs: '10 patrones estructurados'
    impact: 'Complete transport characterization'
    impactEs: 'Caracterización completa de transporte'

metrics:
  - label: 'Technique'
    labelEs: 'Técnica'
    value: 'SVD light transport decomposition'
    valueEs: 'Descomposición SVD de transporte de luz'
  - label: 'Scenes'
    labelEs: 'Escenas'
    value: '6 types'
    valueEs: '6 tipos'
  - label: 'Capture'
    labelEs: 'Captura'
    value: 'Simulation + webcam'
    valueEs: 'Simulación + webcam'

stack: [Python, NumPy, SciPy, Dash, Plotly, Lambertian BRDF, SVD]
---

## Seeing from Where You Illuminate

Imagine reversing the roles of projector and camera. A projector sends structured light into a scene; a camera records what bounces back. The **transport matrix T** encodes every interaction — how each projector pixel contributes to each camera pixel through scene geometry, reflectance, and occlusion. If you can measure T, you can reconstruct what the scene looks like _from the projector's perspective_ — using Helmholtz reciprocity, the dual image is simply Tᵀ applied to a virtual illumination.

This is dual photography: computational reconstruction of a viewpoint you never physically occupied.

## Why It's Interesting

The SVD decomposition **T = UΣVᵀ** reveals the scene's optical complexity. A flat white wall produces a simple singular value spectrum with rapid decay — one dominant mode. A complex textured scene with occlusions has many significant singular values — rich optical structure. This connects imaging to linear algebra in a way that makes abstract mathematical concepts tangible.

With structured illumination patterns (Bernoulli or Hadamard matrices), compressed sensing theory applies: the dual image can be recovered with **far fewer measurements** than the full transport matrix requires. And the condition number of T determines reconstruction quality — ill-conditioned matrices from complex scenes need regularization (Tikhonov or truncated SVD) to produce stable results.

The application implements 6 ray-cast scene types (flat, textured, concave, convex, multi-object, occluding), 10 illumination patterns, interactive SVD exploration, and an optional webcam capture mode for real-world experiments.
