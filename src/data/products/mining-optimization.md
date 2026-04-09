---
title: "Mining Process Optimization Platform"
titleEs: "Plataforma de Optimización de Procesos Mineros"
slug: mining-optimization
date: 2022-01-01
category: mining-optimization
excerpt: "An end-to-end ML platform for optimizing mineral processing — SAG milling, flotation, thickening — deployed across multiple mining divisions. Delivered +100 TPH throughput uplift and measurable copper recovery improvements."
excerptEs: "Plataforma ML end-to-end para optimizar procesamiento mineral — molienda SAG, flotación, espesamiento — desplegada en múltiples divisiones mineras. Entregó +100 TPH de aumento de throughput y mejoras medibles en recuperación de cobre."
icon: tabler:chart-bar
tags: [machine-learning, mining, optimization, kedro, azure, mlops]
proprietary: true
featured: true
assetPatterns: [mining_optimization]

challenge: "Large-scale mining operations involve complex, interconnected processes. SAG mills, flotation banks, and thickeners each have dozens of controllable variables and hundreds of sensor readings, creating a high-dimensional optimization problem that evolves with ore characteristics. A 1% recovery improvement translates to tens of millions USD annually."
challengeEs: "Las operaciones mineras a gran escala involucran procesos complejos e interconectados. Molinos SAG, bancos de flotación y espesadores tienen docenas de variables controlables y cientos de lecturas de sensores, creando un problema de optimización de alta dimensionalidad que evoluciona con las características del mineral. Una mejora de 1% en recuperación se traduce en decenas de millones USD anuales."

approach: "Modular Kedro pipeline: (1) Data ingestion from SCADA via Azure Data Factory, (2) Domain-informed feature engineering — rolling statistics, lag variables, regime detection, (3) Ensemble model training — XGBoost, gradient boosting, neural networks on historical windows, (4) Scenario simulation generating setpoint recommendations with confidence intervals, (5) Operational dashboard with KPI tracking and expert feedback loops."
approachEs: "Pipeline modular Kedro: (1) Ingesta de datos desde SCADA vía Azure Data Factory, (2) Ingeniería de características informada por dominio — estadísticas rodantes, variables de rezago, detección de régimen, (3) Entrenamiento de modelo ensemble — XGBoost, gradient boosting, redes neuronales en ventanas históricas, (4) Simulación de escenarios generando recomendaciones de setpoint con intervalos de confianza, (5) Dashboard operacional con seguimiento de KPIs y ciclos de retroalimentación experta."

kpis:
  - label: "Decision Basis"
    labelEs: "Base de Decisión"
    baseline: "Operator experience, shift variability"
    baselineEs: "Experiencia del operador, variabilidad por turno"
    result: "Data-driven recommendations every 4h"
    resultEs: "Recomendaciones basadas en datos cada 4h"
    impact: "Consistent, auditable decisions"
    impactEs: "Decisiones consistentes y auditables"
  - label: "Value Realization"
    labelEs: "Realización de Valor"
    baseline: "Unknown improvement potential"
    baselineEs: "Potencial de mejora desconocido"
    result: "+100 TPH throughput, recovery gains"
    resultEs: "+100 TPH throughput, ganancias de recuperación"
    impact: "Quantifiable annual production value"
    impactEs: "Valor anual de producción cuantificable"
  - label: "Multi-division Scalability"
    labelEs: "Escalabilidad Multi-división"
    baseline: "Site-specific solutions"
    baselineEs: "Soluciones específicas por sitio"
    result: "Configurable shared platform"
    resultEs: "Plataforma compartida configurable"
    impact: "Reduced per-site implementation cost"
    impactEs: "Costo de implementación por sitio reducido"

metrics:
  - label: "Throughput"
    labelEs: "Throughput"
    value: "+100 TPH in SAG milling"
    valueEs: "+100 TPH en molienda SAG"
  - label: "Recovery"
    labelEs: "Recuperación"
    value: "Measurable improvement"
    valueEs: "Mejora medible"
  - label: "Optimization Cycle"
    labelEs: "Ciclo de Optimización"
    value: "Hourly tracking, 4h recommendations"
    valueEs: "Seguimiento horario, recomendaciones cada 4h"
  - label: "Deployment"
    labelEs: "Despliegue"
    value: "Multiple mining divisions"
    valueEs: "Múltiples divisiones mineras"

stack: [Kedro, Azure Databricks, PySpark, Delta Lake, XGBoost, scikit-learn, MLflow, Docker, Azure Pipelines, Power BI, Streamlit]
---

## System Architecture

The platform is built as a modular Kedro pipeline deployed on Azure Databricks:

### 1. Data Ingestion
Streaming and batch pipelines pulling from **SCADA systems**, lab analyses, and operational databases via Azure Data Factory. Real-time sensor data from hundreds of instruments across the processing plant.

### 2. Feature Engineering
Domain-informed features capturing process dynamics:
- **Rolling statistics** — mean, variance, percentiles over configurable windows
- **Lag variables** — capturing process inertia and response delays
- **Ore property indicators** — from assay data reflecting feed composition
- **Regime detection** — HMMs and change-point algorithms identifying operational states

### 3. Model Training
Ensemble of **XGBoost**, gradient-boosted trees, and neural networks trained on historical operational windows. MLflow tracks experiments, enabling reproducible model selection.

### 4. Recommendation Engine
Scenario simulation generating **actionable setpoint recommendations** with confidence intervals. Operators see not just what to change, but how confident the model is and what range of outcomes to expect.

### 5. Operational Dashboard
Real-time monitoring of recommendation adherence, KPI tracking, and expert feedback loops. Power BI dashboards for management, Streamlit prototypes for engineering deep-dives.

## Impact at Scale

In large-scale copper mining, a **1% recovery improvement** or **100 TPH throughput gain** translates to **tens of millions USD annually**. This platform moved operational decisions from experience-based to data-driven, embedding analytics into the daily 4-hourly production cadence across multiple mining divisions.

The multi-division deployment required balancing **standardized methodology** with **division-specific calibration** — the same pipeline framework serves each site, but models and thresholds are tuned to local ore characteristics and equipment configurations.
