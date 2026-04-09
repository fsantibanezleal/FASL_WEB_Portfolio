---
title: "HyClus Viz — Hyperspectral Clustering Visualization"
titleEs: "HyClus Viz — Visualización de Clustering Hiperespectral"
slug: hyclus-viz
date: 2019-08-08
category: spectral-analysis
excerpt: "Deep autoencoders combined with t-SNE for transforming raw hyperspectral data into interpretable visualizations. Achieved 95-97% accuracy for grain size classification from mining comminution feeders."
excerptEs: "Autoencoders profundos combinados con t-SNE para transformar datos hiperespectrales brutos en visualizaciones interpretables. Logró 95-97% de precisión en clasificación de tamaño de grano desde alimentadores de conminución minera."
icon: tabler:chart-scatter
tags: [hyperspectral, deep-learning, dimensionality-reduction, t-sne, autoencoders, clustering]
proprietary: true
featured: false
assetPatterns: [hyclusvi]

challenge: "Hyperspectral imaging captures hundreds of spectral bands per pixel. Compressing this high-dimensional data into compact, interpretable representations for mineral identification requires nonlinear dimensionality reduction that preserves meaningful spectral structure."
challengeEs: "Las imágenes hiperespectrales capturan cientos de bandas espectrales por píxel. Comprimir estos datos de alta dimensionalidad en representaciones compactas e interpretables para identificación mineral requiere reducción de dimensionalidad no lineal que preserve estructura espectral significativa."

approach: "Symmetric deep autoencoder (input→128→64→32→16→4 bottleneck→decoder) with tanh activation for spectral compression, followed by t-SNE for 2D embedding and K-means clustering with elbow method. Evaluated on real mining data: 72 monthly composites across 3 plants, 2 granulometry levels, 12 months."
approachEs: "Autoencoder profundo simétrico (entrada→128→64→32→16→4 cuello de botella→decoder) con activación tanh para compresión espectral, seguido de t-SNE para embedding 2D y clustering K-means con método del codo. Evaluado en datos mineros reales: 72 compuestos mensuales de 3 plantas, 2 niveles de granulometría, 12 meses."

kpis:
  - label: "Grain Size Classification"
    labelEs: "Clasificación Tamaño de Grano"
    baseline: "Manual spectral analysis"
    baselineEs: "Análisis espectral manual"
    result: "95-97% accuracy"
    resultEs: "95-97% precisión"
    impact: "Automated grain characterization"
    impactEs: "Caracterización automática de grano"
  - label: "Dimensionality"
    labelEs: "Dimensionalidad"
    baseline: "Hundreds of spectral bands"
    baselineEs: "Cientos de bandas espectrales"
    result: "4-dimensional bottleneck"
    resultEs: "Cuello de botella 4-dimensional"
    impact: "Interpretable compact representation"
    impactEs: "Representación compacta interpretable"

metrics:
  - label: "Grain Size Accuracy"
    labelEs: "Precisión Tamaño Grano"
    value: "95-97%"
    valueEs: "95-97%"
  - label: "Plant Origin Accuracy"
    labelEs: "Precisión Planta Origen"
    value: "57-65%"
    valueEs: "57-65%"
  - label: "Bottleneck"
    labelEs: "Cuello de Botella"
    value: "4 dimensions"
    valueEs: "4 dimensiones"
  - label: "Samples"
    labelEs: "Muestras"
    value: "72 monthly composites"
    valueEs: "72 compuestos mensuales"

stack: [Python, TensorFlow, Keras, scikit-learn, t-SNE, K-means, MinMaxScaler]
---

## The Dimensionality Problem

A hyperspectral camera captures hundreds of spectral bands per pixel — a data point living in hundreds of dimensions. The challenge: compress this into something a human can interpret without losing the mineralogically meaningful structure. Linear methods (PCA) miss the nonlinear relationships in spectral data. Simply picking a few bands throws away information that might matter.

## Deep Compression

A **symmetric deep autoencoder** (Input → 128 → 64 → 32 → 16 → **4** → 16 → 32 → 64 → 128 → Output) with tanh activation compresses hundreds of spectral bands into a 4-dimensional bottleneck representation. The network learns to discard noise and redundancy while preserving the spectral features that distinguish different mineral compositions.

After compression, **t-SNE** provides a nonlinear 2D embedding for visualization — preserving local neighborhood structure so spectrally similar samples remain close in the map. K-means clustering with the elbow method identifies natural groupings.

## What the Data Reveals

Evaluated on real mining data — 72 monthly composites from 3 processing plants, 2 granulometry levels, 12 months:

| Task | Accuracy |
|------|----------|
| **Grain size classification** | **95–97%** |
| Plant origin | 57–65% |
| Month prediction | 24–33% |

The grain size result is striking: spectral data encodes meaningful physical properties related to particle size with near-perfect classification accuracy. Plant origin and temporal patterns are harder to distinguish — which is itself a useful finding, suggesting relatively homogeneous processing across sites and stable spectral signatures over time.
