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

## Business Impact

This platform replaced manual caliper measurements with automated 3D point cloud analysis, transforming liner wear assessment from imprecise periodic snapshots into continuous, data-driven forecasting. Maintenance scheduling shifted from fixed intervals to **remaining-useful-life predictions** — reducing both premature replacements and the risk of catastrophic failure.

## Strategic Context

Crusher liner replacement is one of the **highest-cost maintenance activities** in mineral processing — each change involves days of downtime and hundreds of thousands in parts and labor. Replacing liners too early wastes material; too late risks catastrophic failure that can shut down the entire crushing circuit. This system provides the quantitative basis to make that decision optimally.

## The Challenge

Gyratory and cone crushers are among the largest and most critical machines in a minerals processing plant. Their concave and mantle liners degrade continuously under extreme loads. Traditionally, wear is estimated with manual caliper measurements taken during maintenance windows — a slow, imprecise, and sometimes dangerous process. 3D laser scanning offers a far richer picture, but the raw point clouds (millions of points in DXF or PTS format) require significant processing before they become actionable.

## System Architecture

### 1. Point Cloud Ingestion & Parsing
Raw scan files (DXF, PTS — typically millions of points per scan) parsed and transformed into **cylindrical coordinate representations** (r, θ, z) aligned to the crusher axis via least-squares axis fitting. Aggregation routines bin points by angular sector and axial elevation, collapsing the dense point cloud into interpretable radial-axial wear profiles.

### 2. Campaign & Survey Management
Each crusher liner installation defines a **campaign**. Multiple surveys (scans) registered within a campaign enable wear progression tracking over time. The system manages metadata, alignment corrections, and reference geometries.

### 3. Wear Trend Modeling & Forecasting
Wear rates computed per profile zone using regression models. **Remaining useful life** projections with confidence bounds support maintenance planning — recommended change dates with quantified uncertainty.

### 4. Dual Deployment Architecture
- **Desktop application** (Streamlit/Dash packaged with PyInstaller) — for offline mine sites with no internet connectivity
- **Web platform** (Next.js frontend, FastAPI backend, PostgreSQL, Redis) — for centralized management across multi-site operations

### 5. Infrastructure
Docker Swarm orchestration with **Traefik** as reverse proxy and load balancer. **Ansible** playbooks automate provisioning and deployment across environments.
