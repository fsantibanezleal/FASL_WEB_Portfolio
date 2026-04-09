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

businessContext: "In large-scale copper mining, the economics are stark: a 1% improvement in copper recovery or a 100 TPH throughput gain in SAG milling translates to tens of millions of dollars in additional annual revenue. Yet operational decisions — mill speed, flotation reagent dosing, thickener settings — were traditionally made by operators based on personal experience and shift-to-shift knowledge transfer, with no systematic mechanism to capture, scale, or optimize this expertise across sites."
businessContextEs: "En la minería de cobre a gran escala, la economía es contundente: una mejora de 1% en recuperación de cobre o un aumento de 100 TPH en throughput de molienda SAG se traduce en decenas de millones de dólares en ingresos anuales adicionales. Sin embargo, las decisiones operacionales — velocidad de molino, dosificación de reactivos de flotación, configuraciones de espesadores — eran tradicionalmente tomadas por operadores basándose en experiencia personal y transferencia de conocimiento turno a turno, sin mecanismo sistemático para capturar, escalar u optimizar esta expertise entre sitios."
strategicValue: "The platform delivered measurable results at industrial scale: throughput uplift exceeding +100 TPH in SAG milling and measurable copper recovery improvements across flotation circuits. Built on Kedro pipelines deployed on Azure Databricks, it embeds data-driven recommendations into the 4-hourly production cadence across multiple mining divisions. The ensemble approach (XGBoost, gradient boosting, neural networks) with MLflow experiment tracking enables reproducible model selection, while the recommendation engine generates setpoint recommendations with confidence intervals — so operators see not just what to change, but how confident the model is. Multi-division deployment required balancing standardized methodology with division-specific calibration, a dual requirement that shaped the entire platform architecture."
strategicValueEs: "La plataforma entregó resultados medibles a escala industrial: aumento de throughput superior a +100 TPH en molienda SAG y mejoras medibles en recuperación de cobre en circuitos de flotación. Construida sobre pipelines Kedro desplegados en Azure Databricks, incorpora recomendaciones basadas en datos en la cadencia productiva de 4 horas a través de múltiples divisiones mineras. El enfoque ensemble (XGBoost, gradient boosting, redes neuronales) con seguimiento de experimentos MLflow permite selección reproducible de modelos, mientras el motor de recomendaciones genera recomendaciones de setpoint con intervalos de confianza — para que los operadores vean no solo qué cambiar, sino cuán confiado está el modelo. El despliegue multi-división requirió balancear metodología estandarizada con calibración específica por división, un requisito dual que moldeó toda la arquitectura de la plataforma."

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

## The Scale of Impact

In large-scale copper mining, the economics are unforgiving. A 1% improvement in copper recovery or a 100 TPH throughput gain in SAG milling translates to **tens of millions of dollars annually**. These aren't theoretical numbers — they're the operating reality that justified building this platform and deploying it across multiple mining divisions.

The platform delivered measurable results: throughput uplift exceeding **+100 TPH** in SAG milling and measurable copper recovery improvements across flotation circuits. Optimization recommendations run on a 4-hourly production cadence, embedded directly into the daily operational workflow.

## The Problem

SAG mills, flotation banks, and thickeners each have dozens of controllable variables and hundreds of sensor readings. Ore characteristics change continuously — different pits, different benches, different geological zones feed material with varying hardness, mineralogy, and grade. What worked yesterday may not work today.

Operators traditionally adjusted setpoints based on experience and shift-to-shift knowledge transfer. The result: inconsistent decisions, missed optimization opportunities, and no systematic way to capture or scale operational expertise across sites.

## Architecture

The platform is built on **Kedro** pipelines deployed on **Azure Databricks**, designed for reproducibility and MLOps rigor:

**Data ingestion** pulls from SCADA systems, laboratory analyses, and operational databases through Azure Data Factory — both streaming and batch. Hundreds of sensor readings per processing plant feed the system continuously.

**Feature engineering** transforms raw signals into domain-informed features: rolling statistics over configurable windows (mean, variance, percentiles), lag variables that capture process inertia, ore property indicators derived from assay data, and operational regime detection using hidden Markov models and change-point algorithms. This is where domain expertise becomes computational — each feature encodes something a process engineer knows matters.

**Model training** uses an ensemble approach — XGBoost, gradient-boosted trees, and neural networks trained on historical operational windows. **MLflow** tracks experiments across divisions, enabling reproducible model selection and comparison.

The **recommendation engine** doesn't just predict — it simulates scenarios. It generates actionable setpoint recommendations with confidence intervals, so operators see not just *what* to change, but *how confident* the model is and *what range of outcomes* to expect.

**Operational dashboards** close the feedback loop. Power BI for management visibility, Streamlit prototypes for engineering deep-dives, and adherence tracking to measure whether recommendations are being followed and whether they're delivering value.

## Multi-Division Deployment

The hardest part wasn't the ML — it was the organizational challenge. Each mining division has different ore, different equipment, different operators, and different operational culture. The platform architecture had to balance **standardized methodology** (same pipeline framework, same model types, same recommendation logic) with **division-specific calibration** (local thresholds, site-specific features, equipment-specific constraints). This dual requirement shaped every architectural decision.
