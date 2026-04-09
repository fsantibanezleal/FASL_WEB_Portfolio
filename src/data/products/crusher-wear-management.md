---
title: "Crusher Liner Wear Management System"
titleEs: "Sistema de Gestión de Desgaste de Revestimientos de Chancador"
slug: crusher-wear-management
date: 2025-09-01
category: 3d-visualization
excerpt: "A full-stack platform for tracking and forecasting crusher liner wear from raw 3D laser scan data through to production deployment. Replaced manual caliper measurements with automated 3D point cloud analysis."
excerptEs: "Plataforma full-stack para seguimiento y pronóstico de desgaste de revestimientos de chancador desde datos brutos de escaneo láser 3D hasta despliegue en producción. Reemplazó mediciones manuales con calibrador por análisis automatizado de nubes de puntos 3D."
icon: tabler:3d-cube-sphere
tags: [point-cloud, 3d-analysis, wear-forecasting, fastapi, nextjs, python]
proprietary: true
featured: true
assetPatterns: [crusher_wear]

challenge: "Crusher liner replacement is one of the highest-cost maintenance activities. Replacing liners too early wastes material; too late risks catastrophic failure. Traditional wear estimation relied on manual calipers — slow, imprecise, and dangerous in the crushing environment."
challengeEs: "El reemplazo de revestimientos de chancador es una de las actividades de mantenimiento más costosas. Reemplazar muy temprano desperdicia material; muy tarde arriesga falla catastrófica. La estimación tradicional de desgaste dependía de calibradores manuales — lenta, imprecisa y peligrosa en el entorno de chancado."

approach: "Five-stage architecture: (1) Point cloud ingestion from DXF/PTS to cylindrical coordinates, (2) Campaign and survey management for wear progression tracking, (3) Wear trend modeling with remaining useful life forecasting, (4) Dual deployment — desktop for offline mine sites, web platform for centralized management, (5) Docker Swarm orchestration with Traefik and Ansible automation."
approachEs: "Arquitectura de cinco etapas: (1) Ingesta de nubes de puntos desde DXF/PTS a coordenadas cilíndricas, (2) Gestión de campañas y surveys para seguimiento de progresión de desgaste, (3) Modelado de tendencias de desgaste con pronóstico de vida útil remanente, (4) Despliegue dual — escritorio para minas sin conexión, plataforma web para gestión centralizada, (5) Orquestación Docker Swarm con Traefik y automatización Ansible."

businessContext: "Crusher liner replacement is one of the highest-cost maintenance activities in mineral processing. A single gyratory crusher liner set costs hundreds of thousands of dollars, and each change requires days of production downtime. The stakes are asymmetric — replacing too early wastes material and production time, but replacing too late risks catastrophic failure that can shut down the entire crushing circuit for weeks. The previous approach relied on manual caliper measurements taken by personnel inside the crusher during maintenance windows: slow, imprecise, dangerous, and fundamentally limited to a few cross-section points on a surface that degrades non-uniformly."
businessContextEs: "El reemplazo de revestimientos de chancador es una de las actividades de mantenimiento más costosas en procesamiento mineral. Un juego de revestimientos de chancador giratorio cuesta cientos de miles de dólares, y cada cambio requiere días de detención productiva. Las consecuencias son asimétricas — reemplazar muy temprano desperdicia material y tiempo de producción, pero reemplazar muy tarde arriesga una falla catastrófica que puede detener el circuito completo de chancado por semanas. El enfoque anterior dependía de mediciones manuales con calibrador realizadas por personal dentro del chancador durante ventanas de mantenimiento: lento, impreciso, peligroso, y fundamentalmente limitado a algunos puntos de sección transversal en una superficie que se degrada de forma no uniforme."
strategicValue: "The platform replaces manual caliper measurements with automated 3D point cloud analysis from laser scans (millions of points per scan), transforming wear assessment from imprecise periodic snapshots into continuous data-driven forecasting. Cylindrical coordinate transformation, campaign-based survey management, and per-zone regression models generate remaining useful life projections with confidence bounds — turning a high-stakes judgment call into a quantitative planning activity. Dual deployment (desktop via PyInstaller for offline sites, web via Next.js/FastAPI/PostgreSQL for centralized management) ensures adoption across the full spectrum of mine site connectivity."
strategicValueEs: "La plataforma reemplaza mediciones manuales con calibrador por análisis automatizado de nubes de puntos 3D desde escaneos láser (millones de puntos por escaneo), transformando la evaluación de desgaste de snapshots periódicos imprecisos a pronóstico continuo basado en datos. La transformación a coordenadas cilíndricas, gestión de campañas de surveys, y modelos de regresión por zona generan proyecciones de vida útil remanente con intervalos de confianza — convirtiendo una decisión de alto riesgo basada en juicio en una actividad de planificación cuantitativa. Despliegue dual (escritorio vía PyInstaller para sitios sin conexión, web vía Next.js/FastAPI/PostgreSQL para gestión centralizada) asegura adopción en todo el espectro de conectividad de sitios mineros."

kpis:
  - label: "Processing Time"
    labelEs: "Tiempo de Procesamiento"
    baseline: "Hours (manual caliper measurements)"
    baselineEs: "Horas (mediciones manuales con calibrador)"
    result: "~80% reduction (automated 3D scan)"
    resultEs: "~80% reducción (escaneo 3D automatizado)"
    impact: "Expert time redirected to analysis"
    impactEs: "Tiempo experto redirigido al análisis"
  - label: "Profile Coverage"
    labelEs: "Cobertura de Perfil"
    baseline: "Specific cross-section cuts"
    baselineEs: "Cortes de sección específicos"
    result: "Full point cloud: max/mean/min profiles"
    resultEs: "Nube de puntos completa: perfiles max/mean/min"
    impact: "Complete wear characterization"
    impactEs: "Caracterización completa del desgaste"
  - label: "Wear Projection"
    labelEs: "Proyección de Desgaste"
    baseline: "Experience-based estimates"
    baselineEs: "Estimaciones basadas en experiencia"
    result: "Data-driven remaining-life forecasting"
    resultEs: "Pronóstico de vida útil basado en datos"
    impact: "Optimal replacement timing"
    impactEs: "Timing óptimo de reemplazo"

metrics:
  - label: "Measurement"
    labelEs: "Medición"
    value: "3D point cloud vs. manual calipers"
    valueEs: "Nube de puntos 3D vs. calibradores manuales"
  - label: "Prediction"
    labelEs: "Predicción"
    value: "Remaining useful life forecasting"
    valueEs: "Pronóstico de vida útil remanente"
  - label: "Deployment"
    labelEs: "Despliegue"
    value: "Desktop (offline) + Web (centralized)"
    valueEs: "Escritorio (offline) + Web (centralizado)"
  - label: "Coverage"
    labelEs: "Cobertura"
    value: "Concave and mantle wear profiles"
    valueEs: "Perfiles de desgaste cóncavo y manto"

stack: [FastAPI, PostgreSQL, Redis, Celery, Next.js, React, TypeScript, Streamlit, Dash, PyInstaller, NumPy, SciPy, Open3D, Docker Swarm, Traefik, Ansible]
---

## The Cost of Getting It Wrong

A single gyratory crusher liner set costs hundreds of thousands of dollars. Replacement requires days of downtime and a full maintenance mobilization. Replace too early, and you've wasted material and production time. Replace too late, and you risk catastrophic failure — a damaged crusher can shut down the entire processing circuit for weeks.

The previous approach: send personnel into the crusher during maintenance windows to take manual caliper measurements at specific cross-sections. Slow. Imprecise. Dangerous. And fundamentally limited — calipers measure a few points on a surface that degrades non-uniformly across millions of square millimeters.

This platform replaces that entire process with automated 3D point cloud analysis.

## From Point Cloud to Prediction

### Ingestion
Raw 3D laser scan files arrive as DXF or PTS — typically millions of points per scan, an unstructured cloud of spatial data. The first processing step transforms these into **cylindrical coordinates** (r, θ, z) aligned to the crusher's rotational axis via least-squares fitting. Points are binned by angular sector and axial elevation, collapsing the dense cloud into interpretable **radial-axial wear profiles** that capture the geometry of concave and mantle surfaces.

### Campaign Management
Each liner installation defines a **campaign**. Multiple surveys (scans) are registered within a campaign, building a time-series of wear progression. The system manages alignment corrections between scans (the scanner position isn't identical each time), reference geometries (the original liner profile), and metadata for traceability.

### Forecasting
Wear rates are computed per profile zone using regression models. The system projects **remaining useful life** with confidence bounds, generating recommended change dates that maintenance planners can use for scheduling — transforming a judgment call into a data-backed planning activity.

### Deployment
The platform operates in two modes to cover the full spectrum of mining site connectivity:

A **desktop application** (Streamlit/Dash packaged with PyInstaller) serves offline mine sites where internet is unreliable or nonexistent — the geologist processes scans on a local laptop.

A **web platform** (Next.js frontend, FastAPI backend, PostgreSQL, Redis) provides centralized management for multi-site operations, with Docker Swarm orchestration, Traefik load balancing, and Ansible-automated provisioning.
