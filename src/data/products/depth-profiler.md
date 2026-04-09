---
title: "3D Distance Profiler — Depth Maps for Surface Analysis"
titleEs: "Perfilador de Distancia 3D — Mapas de Profundidad para Análisis de Superficies"
slug: depth-profiler
date: 2017-08-01
category: 3d-visualization
excerpt: "An RGB-D depth profiling system for analyzing mineral sample surfaces. Creates 3D reconstructions via pinhole camera model with bilateral filtering, normal estimation, curvature computation, and ISO 4287 roughness metrics."
excerptEs: "Sistema de perfilado de profundidad RGB-D para analizar superficies de muestras minerales. Crea reconstrucciones 3D mediante modelo de cámara pinhole con filtrado bilateral, estimación de normales, cálculo de curvatura y métricas de rugosidad ISO 4287."
icon: tabler:ruler-3
tags: [depth-profiling, 3d-reconstruction, surface-analysis, granulometry, fastapi, three-js, python]
proprietary: false
featured: false
assetPatterns: [depth_profiler]
github: "https://github.com/fsantibanezleal/FASL_3D_Distance_Profiler"

challenge: "Characterizing mineral sample surface topography requires expensive laboratory equipment. Depth cameras provide affordable alternatives but raw depth data needs sophisticated processing for meaningful surface analysis — noise removal, 3D reconstruction, and standardized roughness metrics."
challengeEs: "Caracterizar la topografía superficial de muestras minerales requiere equipamiento de laboratorio costoso. Las cámaras de profundidad proveen alternativas accesibles pero los datos brutos de profundidad necesitan procesamiento sofisticado para análisis de superficies significativo — eliminación de ruido, reconstrucción 3D y métricas de rugosidad estandarizadas."

approach: "Complete pipeline: synthetic or real RGB-D input, bilateral filtering preprocessing, 3D reconstruction via pinhole camera model, surface analysis (normal estimation, curvature computation), profile extraction along arbitrary paths, and ISO 4287 roughness metrics (Ra, Rq, Rz). Exports to PLY/PCD/OBJ formats."
approachEs: "Pipeline completo: entrada RGB-D sintética o real, preprocesamiento con filtrado bilateral, reconstrucción 3D vía modelo de cámara pinhole, análisis de superficie (estimación de normales, cálculo de curvatura), extracción de perfiles a lo largo de trayectorias arbitrarias, y métricas de rugosidad ISO 4287 (Ra, Rq, Rz). Exporta a formatos PLY/PCD/OBJ."

kpis:
  - label: "Surface Analysis"
    labelEs: "Análisis de Superficie"
    baseline: "Contact profilometry"
    baselineEs: "Perfilometría de contacto"
    result: "Non-contact 3D depth profiling"
    resultEs: "Perfilado de profundidad 3D sin contacto"
    impact: "Accessible surface characterization"
    impactEs: "Caracterización superficial accesible"
  - label: "Roughness Metrics"
    labelEs: "Métricas de Rugosidad"
    baseline: "Manual measurement"
    baselineEs: "Medición manual"
    result: "ISO 4287 automated (Ra, Rq, Rz)"
    resultEs: "ISO 4287 automatizado (Ra, Rq, Rz)"
    impact: "Standardized surface quality assessment"
    impactEs: "Evaluación estandarizada de calidad superficial"

metrics:
  - label: "Reconstruction"
    labelEs: "Reconstrucción"
    value: "Pinhole camera model"
    valueEs: "Modelo de cámara pinhole"
  - label: "Roughness"
    labelEs: "Rugosidad"
    value: "ISO 4287 (Ra, Rq, Rz)"
    valueEs: "ISO 4287 (Ra, Rq, Rz)"
  - label: "Export"
    labelEs: "Exportación"
    value: "PLY, PCD, OBJ"
    valueEs: "PLY, PCD, OBJ"
  - label: "Visualization"
    labelEs: "Visualización"
    value: "Three.js WebGL"
    valueEs: "Three.js WebGL"

stack: [Python, FastAPI, Three.js, NumPy, SciPy, Bilateral Filtering, ISO 4287]
---

## The Challenge

Characterizing mineral sample surface topography traditionally requires expensive laboratory profilometry equipment. RGB-D depth cameras provide an affordable alternative, but raw depth data needs sophisticated processing: noise removal that preserves edges, accurate 3D reconstruction, and standardized roughness metrics that engineers can compare across samples.

## Processing Pipeline

### 1. Input
Synthetic RGB-D scene generation (5 configurable scene types for validation) or real depth camera data. Supports standard depth formats for practical laboratory use.

### 2. Preprocessing
**Bilateral filtering** — the critical first step. Unlike Gaussian blur, bilateral filtering removes depth noise **while preserving edges**. This is essential for surface analysis where sharp transitions between mineral grains must be maintained, not smoothed away.

### 3. 3D Reconstruction
**Pinhole camera model** transforms depth pixels into 3D point clouds. Each pixel `(u, v, d)` maps to world coordinates `(X, Y, Z)` using camera intrinsic parameters (focal length, principal point). The result is a dense 3D surface mesh.

### 4. Surface Analysis
Differential geometry computed from the reconstructed surface:
- **Normal estimation**: `n = (-∂z/∂x, -∂z/∂y, 1) / ‖(-∂z/∂x, -∂z/∂y, 1)‖` — surface orientation at each point
- **Gaussian curvature**: `K = (f_xx · f_yy - f_xy²) / (1 + f_x² + f_y²)²` — intrinsic surface bending
- **Mean curvature**: average bending in principal directions

These reveal surface features invisible in the raw depth map — convex grain peaks, concave grain boundaries, and flat regions.

### 5. Profile Extraction
Extract surface profiles along arbitrary user-defined paths for cross-sectional analysis — equivalent to running a physical stylus across the surface.

### 6. ISO 4287 Roughness Metrics
Standardized surface roughness parameters:
- **Ra** — arithmetic mean roughness: `Ra = (1/N) Σ|zᵢ - z̄|`
- **Rq** — root mean square roughness (more sensitive to peaks/valleys)
- **Rz** — maximum peak-to-valley height within the evaluation length
- **Rsk** — skewness (asymmetry of the height distribution)
- **Rku** — kurtosis (peakedness of the height distribution)

## Export Formats

Full 3D reconstructions export to **PLY**, **PCD**, and **OBJ** formats for use in external analysis tools, CAD software, or further processing pipelines.
