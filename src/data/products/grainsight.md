---
title: "GrainSight — Particle Size Distribution from RGB-D Data"
titleEs: "GrainSight — Distribución de Tamaño de Partícula desde Datos RGB-D"
slug: grainsight
date: 2018-06-01
category: 3d-visualization
excerpt: "A 3D particle size and granulometry analyzer using marker-based watershed segmentation on RGB-D data. Extracts 18 geometric properties per grain and fits Rosin-Rammler PSD distributions with ISO 565 sieve simulation."
excerptEs: "Analizador 3D de tamaño de partícula y granulometría usando segmentación watershed basada en marcadores sobre datos RGB-D. Extrae 18 propiedades geométricas por grano y ajusta distribuciones PSD Rosin-Rammler con simulación de tamices ISO 565."
icon: tabler:grain
tags: [granulometry, particle-size, watershed, depth-profiling, rosin-rammler, fastapi, python]
proprietary: false
featured: false
assetPatterns: [grainsize]

challenge: "Traditional particle size analysis requires physical sieve testing — slow, destructive, and impractical for continuous monitoring. Estimating grain size distributions non-invasively from camera data requires robust segmentation of touching and overlapping particles."
challengeEs: "El análisis tradicional de tamaño de partícula requiere tamizado físico — lento, destructivo e impracticable para monitoreo continuo. Estimar distribuciones de tamaño de grano de forma no invasiva desde datos de cámara requiere segmentación robusta de partículas en contacto y superpuestas."

approach: "Complete pipeline: RGB-D input, marker-based watershed segmentation for grain identification, extraction of 18 geometric properties per grain (equivalent diameter, aspect ratio, circularity, volume), Rosin-Rammler PSD fitting, D-values extraction (D10, D25, D50), and ISO 565 sieve simulation. Compliant with ISO 13322-1."
approachEs: "Pipeline completo: entrada RGB-D, segmentación watershed basada en marcadores para identificación de granos, extracción de 18 propiedades geométricas por grano (diámetro equivalente, relación de aspecto, circularidad, volumen), ajuste PSD Rosin-Rammler, extracción de valores D (D10, D25, D50), y simulación de tamices ISO 565. Cumple ISO 13322-1."

kpis:
  - label: "Measurement Method"
    labelEs: "Método de Medición"
    baseline: "Physical sieve testing"
    baselineEs: "Tamizado físico"
    result: "Non-contact RGB-D analysis"
    resultEs: "Análisis RGB-D sin contacto"
    impact: "Non-destructive, continuous capable"
    impactEs: "No destructivo, capacidad continua"
  - label: "Properties per Grain"
    labelEs: "Propiedades por Grano"
    baseline: "Sieve fraction only"
    baselineEs: "Solo fracción de tamiz"
    result: "18 geometric properties"
    resultEs: "18 propiedades geométricas"
    impact: "Rich morphological characterization"
    impactEs: "Caracterización morfológica rica"

metrics:
  - label: "Properties"
    labelEs: "Propiedades"
    value: "18 per grain"
    valueEs: "18 por grano"
  - label: "PSD Model"
    labelEs: "Modelo PSD"
    value: "Rosin-Rammler"
    valueEs: "Rosin-Rammler"
  - label: "Standards"
    labelEs: "Estándares"
    value: "ISO 13322-1, ISO 565"
    valueEs: "ISO 13322-1, ISO 565"
  - label: "Segmentation"
    labelEs: "Segmentación"
    value: "Marker-based watershed"
    valueEs: "Watershed basado en marcadores"

stack: [Python, FastAPI, scikit-image, NumPy, HTML5 Canvas, Rosin-Rammler, ISO 13322-1]
---

## The Characterization Trio

GrainSight is the third component of a mineral characterization trio developed at ALGES:
1. **HSI Classification** — spectral mineral identification
2. **Depth Profiler** — 3D surface reconstruction
3. **GrainSight** — particle size distribution from the reconstructed depth data

## Grain Segmentation

**Marker-based watershed segmentation** identifies individual grains from the depth map:
1. Local minima in the depth field serve as seed markers
2. The watershed algorithm floods from these seeds
3. Basin boundaries define grain edges
4. Post-processing merges over-segmented fragments

## Per-Grain Measurements (18 Properties)

Each segmented grain is characterized with:
- `d_eq = √(4A/π)` — equivalent diameter
- `AR = d_major / d_minor` — aspect ratio  
- `C = 4πA / P²` — circularity
- `V = Σ(zᵢ - z_base) · Δx · Δy` — volume from depth integration
- Plus 14 additional shape, texture, and orientation descriptors

## Rosin-Rammler PSD Fitting

The grain size distribution is fitted to the **Rosin-Rammler model**:

`R(d) = 100 × exp(-(d/d')ⁿ)`

Where `d'` is the characteristic size (63.2% passing) and `n` is the uniformity coefficient. **D-values** (D10, D25, D50, D75, D90) are extracted from the cumulative curve with **ISO 565 sieve simulation**.

Compliant with **ISO 13322-1** for particle size analysis from images.
