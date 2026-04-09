---
title: "Hyperspectral Mineral Classification Platform"
titleEs: "Plataforma de Clasificación Mineral Hiperespectral"
slug: hsi-mineral-classification
date: 2025-11-01
category: spectral-analysis
excerpt: "A machine learning platform for classifying minerals and estimating abundances from hyperspectral imagery (VNIR/SWIR). Compresses turnaround from days to minutes for routine mineralogical characterization."
excerptEs: "Plataforma de machine learning para clasificar minerales y estimar abundancias desde imágenes hiperespectrales (VNIR/SWIR). Comprime tiempos de respuesta de días a minutos para caracterización mineralógica rutinaria."
icon: tabler:prism
tags: [hyperspectral, machine-learning, mineral-classification, cnn, fastapi, dash]
proprietary: true
featured: true
assetPatterns: [hsi_mineral]

challenge: "Laboratory mineral analysis (XRD/XRF) takes days and requires sample preparation. For geometallurgical applications, faster characterization means tighter feedback loops between ore properties and processing parameters. The key constraint: predicted mineral abundances must sum to 100%."
challengeEs: "El análisis mineral de laboratorio (XRD/XRF) toma días y requiere preparación de muestras. Para aplicaciones geometalúrgicas, una caracterización más rápida permite ciclos de retroalimentación más ajustados entre propiedades del mineral y parámetros de procesamiento. La restricción clave: las abundancias predichas deben sumar 100%."

approach: "Five-stage pipeline: (1) Data ingestion from VNIR/SWIR cameras with lab references, (2) ROI-aligned spectral patch database with augmentation, (3) Multi-model parallel training — XGBoost, ExtraTrees, Ridge, PLSR, 1D/2D CNNs, (4) Compositional constraints enforcing closure and non-negativity, (5) Mineral maps with per-pixel abundance and confidence intervals."
approachEs: "Pipeline de cinco etapas: (1) Ingesta de datos desde cámaras VNIR/SWIR con referencias de laboratorio, (2) Base de datos de parches espectrales alineados por ROI con aumentación, (3) Entrenamiento multi-modelo en paralelo — XGBoost, ExtraTrees, Ridge, PLSR, CNNs 1D/2D, (4) Restricciones composicionales que aseguran cierre y no-negatividad, (5) Mapas minerales con abundancia por píxel e intervalos de confianza."

kpis:
  - label: "Characterization Turnaround"
    labelEs: "Tiempo de Caracterización"
    baseline: "Days (lab XRD/XRF)"
    baselineEs: "Días (laboratorio XRD/XRF)"
    result: "Hours (conveyor), same-day (drone)"
    resultEs: "Horas (correa), mismo día (dron)"
    impact: "Tight process control feedback"
    impactEs: "Retroalimentación ajustada de control de proceso"
  - label: "Estimation Error"
    labelEs: "Error de Estimación"
    baseline: "N/A (lab is ground truth)"
    baselineEs: "N/A (laboratorio es verdad terreno)"
    result: "3-5% deviation vs lab"
    resultEs: "3-5% desviación vs laboratorio"
    impact: "Maintains analytical confidence"
    impactEs: "Mantiene confianza analítica"
  - label: "In-line Capability"
    labelEs: "Capacidad en Línea"
    baseline: "Not possible"
    baselineEs: "No posible"
    result: "Conveyor-mounted VNIR/SWIR scanning"
    resultEs: "Escaneo VNIR/SWIR montado en correa"
    impact: "Real-time ore routing"
    impactEs: "Enrutamiento de mineral en tiempo real"

metrics:
  - label: "Models"
    labelEs: "Modelos"
    value: "XGBoost, ExtraTrees, CNN 1D/2D, ensemble"
    valueEs: "XGBoost, ExtraTrees, CNN 1D/2D, ensamble"
  - label: "Constraint"
    labelEs: "Restricción"
    value: "Abundances sum to 100%"
    valueEs: "Abundancias suman 100%"
  - label: "Minerals"
    labelEs: "Minerales"
    value: "Clays, sulfates, iron oxides, phyllosilicates"
    valueEs: "Arcillas, sulfatos, óxidos de hierro, filosilicatos"
  - label: "Deployment"
    labelEs: "Despliegue"
    value: "Desktop application for field use"
    valueEs: "Aplicación de escritorio para uso en terreno"

stack: [XGBoost, ExtraTrees, scikit-learn, TensorFlow, Keras, FastAPI, Dash, NumPy, SciPy, HDF5, GeoTIFF]
---

## The Laboratory Bottleneck

Traditional mineral characterization relies on laboratory analysis — XRD for crystal structure identification, XRF for elemental composition. These methods are accurate but slow: sample preparation, instrument time, and expert interpretation add up to **days of turnaround** per batch. In a mine where ore characteristics change daily, this means process decisions are always based on stale information.

This platform closes that gap. It takes hyperspectral imagery — hundreds of narrow spectral bands captured by VNIR/SWIR cameras — and produces mineral classification maps with abundance estimates in **minutes**, not days. Fast enough for the same shift that extracted the ore.

## The Compositional Constraint

The key technical challenge isn't just classification — it's the physical requirement that **predicted mineral abundances at each pixel must sum to 100%**. Geological samples are mixtures: a pixel might be 40% kaolinite, 30% chlorite, 20% muscovite, and 10% quartz. If your model predicts 45% + 35% + 25% + 15% = 120%, the result is geologically meaningless.

The system enforces this through a constrained optimization post-processing step:

`min ‖a - a_pred‖² subject to Σaᵢ = 1 and aᵢ ≥ 0`

Solved via quadratic programming or simplex projection, this ensures every pixel's abundance estimate is physically valid without manual correction.

## The Pipeline

**Data ingestion** accepts hyperspectral rasters alongside laboratory reference measurements (XRD/XRF). Regions of interest link spectral patches with ground-truth mineral labels from verified samples.

**Multi-model training** runs several architectures in parallel — XGBoost, ExtraTrees, Ridge regression, PLSR (Partial Least Squares Regression), and 1D/2D CNNs. Each model captures different aspects of the spectral-mineralogical relationship. An ensemble layer combines predictions through meta-learning.

**Output products** include mineral classification maps, per-pixel abundance estimates with confidence intervals, and summary statistics. The system handles clays (kaolinite, chlorite, smectite, muscovite), sulfates (alunite), iron oxides (limonite), and phyllosilicates — adapted per mineral system.

## Deployment Contexts

The platform has been deployed in two contexts: **conveyor-mounted sensors** for in-line characterization (hours turnaround, continuous monitoring) and **drone-based hyperspectral flights** for spatial coverage across exploration sites (same-day results, orders of magnitude more spatial coverage than manual sampling campaigns). Both cases deliver the same fundamental value: mineralogical information fast enough to inform process decisions while the ore is still being processed.
