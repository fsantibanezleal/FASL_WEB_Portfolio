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

## System Architecture

The platform implements a five-stage pipeline from raw spectral data to mineral maps:

### 1. Data Ingestion
Accepts hyperspectral rasters from VNIR/SWIR cameras alongside laboratory reference measurements (XRD/XRF). Supports standard formats including HDF5 and GeoTIFF.

### 2. Spectral Patch Database
ROI-aligned spectral patches extracted and organized with augmentation and normalization pipelines. Training data curated from laboratory-verified samples.

### 3. Multi-Model Training
XGBoost, ExtraTrees, Ridge regression, PLSR, and 1D/2D CNNs trained in parallel. Each model captures different aspects of the spectral-mineralogical relationship.

### 4. Compositional Constraints
Post-processing enforces physically meaningful results: predicted mineral abundances must sum to 100% (closure constraint) and remain non-negative. This is critical for geological validity.

### 5. Output Products
Mineral classification maps with per-pixel abundance estimates and confidence intervals. Supports clays (kaolinite, chlorite, smectite, muscovite), sulfates (alunite), iron oxides (limonite), and phyllosilicates.

## Strategic Value

Laboratory mineral analysis (XRD/XRF) takes **days** and requires sample preparation. This platform provides estimates in **minutes** directly from spectral data. For geometallurgical applications, faster mineralogical characterization means tighter feedback loops between ore properties and processing parameters — enabling real-time ore routing decisions at conveyor-mounted sensors or same-day results from drone flights.
