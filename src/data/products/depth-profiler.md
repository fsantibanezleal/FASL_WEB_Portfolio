---
title: '3D Distance Profiler — Depth Maps for Surface Analysis'
titleEs: 'Perfilador de Distancia 3D — Mapas de Profundidad para Análisis de Superficies'
slug: depth-profiler
date: 2017-08-01
category: 3d-visualization
excerpt: 'An RGB-D depth profiling system for analyzing mineral sample surfaces. Creates 3D reconstructions via pinhole camera model with bilateral filtering, normal estimation, curvature computation, and ISO 4287 roughness metrics.'
excerptEs: 'Sistema de perfilado de profundidad RGB-D para analizar superficies de muestras minerales. Crea reconstrucciones 3D mediante modelo de cámara pinhole con filtrado bilateral, estimación de normales, cálculo de curvatura y métricas de rugosidad ISO 4287.'
icon: tabler:ruler-3
tags: [depth-profiling, 3d-reconstruction, surface-analysis, granulometry, fastapi, three-js, python]
proprietary: false
featured: false
assetPatterns: [depth_profiler]
github: 'https://github.com/fsantibanezleal/FASL_3D_Distance_Profiler'
demo: 'https://profiler.fasl-work.com'

challenge: 'Characterizing mineral sample surface topography requires expensive laboratory equipment. Depth cameras provide affordable alternatives but raw depth data needs sophisticated processing for meaningful surface analysis — noise removal, 3D reconstruction, and standardized roughness metrics.'
challengeEs: 'Caracterizar la topografía superficial de muestras minerales requiere equipamiento de laboratorio costoso. Las cámaras de profundidad proveen alternativas accesibles pero los datos brutos de profundidad necesitan procesamiento sofisticado para análisis de superficies significativo — eliminación de ruido, reconstrucción 3D y métricas de rugosidad estandarizadas.'

approach: 'Complete pipeline: synthetic or real RGB-D input, bilateral filtering preprocessing, 3D reconstruction via pinhole camera model, surface analysis (normal estimation, curvature computation), profile extraction along arbitrary paths, and ISO 4287 roughness metrics (Ra, Rq, Rz). Exports to PLY/PCD/OBJ formats.'
approachEs: 'Pipeline completo: entrada RGB-D sintética o real, preprocesamiento con filtrado bilateral, reconstrucción 3D vía modelo de cámara pinhole, análisis de superficie (estimación de normales, cálculo de curvatura), extracción de perfiles a lo largo de trayectorias arbitrarias, y métricas de rugosidad ISO 4287 (Ra, Rq, Rz). Exporta a formatos PLY/PCD/OBJ.'

businessContext: 'Characterizing mineral sample surface topography traditionally requires expensive contact profilometry equipment. RGB-D depth cameras provide an affordable alternative, but raw depth data is noisy, distorted, and meaningless without a processing pipeline that transforms those pixels into standardized engineering measurements comparable to laboratory instruments.'
businessContextEs: 'Caracterizar la topografía superficial de muestras minerales tradicionalmente requiere equipamiento de perfilometría de contacto costoso. Las cámaras de profundidad RGB-D proveen una alternativa accesible, pero los datos brutos de profundidad son ruidosos, distorsionados y sin significado sin un pipeline de procesamiento que transforme esos píxeles en mediciones de ingeniería estandarizadas comparables a instrumentos de laboratorio.'
strategicValue: 'The system implements a complete surface analysis pipeline: bilateral filtering preserving edges, pinhole camera model 3D reconstruction, differential geometry computation (surface normals, Gaussian and mean curvature), arbitrary-path profile extraction, and ISO 4287 roughness metrics (Ra, Rq, Rz, Rsk, Rku). Five synthetic scene generators enable validation. Export to PLY/PCD/OBJ formats enables integration with external CAD and analysis tools. Part of the ALGES mineral characterization trio alongside HSI Classification and GrainSight.'
strategicValueEs: 'El sistema implementa un pipeline completo de análisis de superficie: filtrado bilateral preservando bordes, reconstrucción 3D con modelo de cámara pinhole, cálculo de geometría diferencial (normales de superficie, curvatura Gaussiana y media), extracción de perfiles en trayectorias arbitrarias, y métricas de rugosidad ISO 4287 (Ra, Rq, Rz, Rsk, Rku). Cinco generadores de escenas sintéticas permiten validación. Exportación a formatos PLY/PCD/OBJ permite integración con herramientas externas de CAD y análisis. Parte del trío de caracterización mineral ALGES junto con Clasificación HSI y GrainSight.'

kpis:
  - label: 'Surface Analysis'
    labelEs: 'Análisis de Superficie'
    baseline: 'Contact profilometry'
    baselineEs: 'Perfilometría de contacto'
    result: 'Non-contact 3D depth profiling'
    resultEs: 'Perfilado de profundidad 3D sin contacto'
    impact: 'Accessible surface characterization'
    impactEs: 'Caracterización superficial accesible'
  - label: 'Roughness Metrics'
    labelEs: 'Métricas de Rugosidad'
    baseline: 'Manual measurement'
    baselineEs: 'Medición manual'
    result: 'ISO 4287 automated (Ra, Rq, Rz)'
    resultEs: 'ISO 4287 automatizado (Ra, Rq, Rz)'
    impact: 'Standardized surface quality assessment'
    impactEs: 'Evaluación estandarizada de calidad superficial'

metrics:
  - label: 'Reconstruction'
    labelEs: 'Reconstrucción'
    value: 'Pinhole camera model'
    valueEs: 'Modelo de cámara pinhole'
  - label: 'Roughness'
    labelEs: 'Rugosidad'
    value: 'ISO 4287 (Ra, Rq, Rz)'
    valueEs: 'ISO 4287 (Ra, Rq, Rz)'
  - label: 'Export'
    labelEs: 'Exportación'
    value: 'PLY, PCD, OBJ'
    valueEs: 'PLY, PCD, OBJ'
  - label: 'Visualization'
    labelEs: 'Visualización'
    value: 'Three.js WebGL'
    valueEs: 'Three.js WebGL'

stack: [Python, FastAPI, Three.js, NumPy, SciPy, Bilateral Filtering, ISO 4287]
---

## Non-Contact Surface Analysis

Characterizing mineral sample surfaces traditionally requires expensive contact profilometry — a physical stylus dragged across the sample. RGB-D depth cameras offer an affordable alternative, but raw depth data is noisy, distorted, and meaningless without processing. The value is in the pipeline that transforms those raw pixels into standardized engineering measurements.

## The Pipeline

**Bilateral filtering** is the critical first step. Unlike Gaussian blur, it removes depth noise while preserving edges — essential where sharp transitions between mineral grains must survive the preprocessing, not be smoothed away.

The **pinhole camera model** transforms depth pixels into 3D point clouds: each `(u, v, d)` maps to `(X, Y, Z)` using camera intrinsic parameters. Differential geometry computed on the reconstructed surface reveals features invisible in raw depth: surface normals `n = (-∂z/∂x, -∂z/∂y, 1) / ‖...‖`, Gaussian curvature `K = (f_xx·f_yy - f_xy²) / (1 + f_x² + f_y²)²`, and mean curvature. Convex grain peaks, concave boundaries, and flat regions become distinguishable.

**ISO 4287 roughness metrics** provide the engineering output: Ra (arithmetic mean roughness), Rq (RMS roughness), Rz (maximum peak-to-valley), Rsk (skewness), and Rku (kurtosis). Profile extraction along arbitrary paths produces the equivalent of a physical stylus measurement. Full 3D reconstructions export to PLY, PCD, and OBJ formats.
