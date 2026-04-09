---
title: "Geotechnical Risk Prediction System"
titleEs: "Sistema de Predicción de Riesgo Geotécnico"
slug: geotechnical-risk
date: 2023-06-01
category: geotechnical
excerpt: "A machine learning system for predicting geotechnical hazards — rockburst and slope instability — in underground and open-pit mining. Provides weekly systematic risk assessment with SHAP-based explainability."
excerptEs: "Sistema de machine learning para predecir peligros geotécnicos — estallido de roca e inestabilidad de talud — en minería subterránea y a cielo abierto. Provee evaluación de riesgo sistemática semanal con explicabilidad basada en SHAP."
icon: tabler:chart-dots-3
tags: [machine-learning, geotechnical, mining, seismic, risk-prediction, xgboost]
proprietary: true
featured: false
assetPatterns: [geotechnical_risk, rockburst]

challenge: "Underground mining safety decisions traditionally depend on individual expert judgment, which varies in consistency. Rock mass under stress can fail suddenly. Assessment relies on manual surveys and rule-of-thumb thresholds applied to seismic monitoring data, missing complex multivariate patterns."
challengeEs: "Las decisiones de seguridad en minería subterránea dependen tradicionalmente del juicio experto individual, que varía en consistencia. La masa rocosa bajo estrés puede fallar repentinamente. La evaluación depende de inspecciones manuales y umbrales empíricos aplicados a datos de monitoreo sísmico, perdiendo patrones multivariados complejos."

approach: "Feature engineering from raw seismic catalogs (energy indices, DBSCAN spatial clustering, migration velocity, Gutenberg-Richter b-values) combined with 3D block model properties. XGBoost ensemble classification into Green/Amber/Red risk levels with SHAP feature importance. Predictions feed operational planning for access restrictions, blasting optimization, and support design."
approachEs: "Ingeniería de características desde catálogos sísmicos brutos (índices de energía, clustering espacial DBSCAN, velocidad de migración, valores b de Gutenberg-Richter) combinados con propiedades de modelos de bloques 3D. Clasificación ensemble XGBoost en niveles de riesgo Verde/Ámbar/Rojo con importancia de características SHAP. Las predicciones alimentan planificación operacional para restricciones de acceso, optimización de tronaduras y diseño de fortificación."

kpis:
  - label: "Detection Capability"
    labelEs: "Capacidad de Detección"
    baseline: "Expert-dependent, inconsistent"
    baselineEs: "Dependiente de experto, inconsistente"
    result: ">80% detection of critical patterns"
    resultEs: ">80% detección de patrones críticos"
    impact: "Systematic, auditable assessment"
    impactEs: "Evaluación sistemática y auditable"
  - label: "Short-term Support"
    labelEs: "Soporte Corto Plazo"
    baseline: "Post-event response"
    baselineEs: "Respuesta post-evento"
    result: "Pre-event area isolation evaluation"
    resultEs: "Evaluación de aislamiento pre-evento"
    impact: "Proactive safety management"
    impactEs: "Gestión proactiva de seguridad"
  - label: "Assessment Cadence"
    labelEs: "Cadencia de Evaluación"
    baseline: "Irregular, event-triggered"
    baselineEs: "Irregular, gatillada por eventos"
    result: "Weekly systematic evaluation"
    resultEs: "Evaluación sistemática semanal"
    impact: "Consistent operational rhythm"
    impactEs: "Ritmo operacional consistente"

metrics:
  - label: "Assessment Frequency"
    labelEs: "Frecuencia de Evaluación"
    value: "Weekly"
    valueEs: "Semanal"
  - label: "Risk Levels"
    labelEs: "Niveles de Riesgo"
    value: "Green / Amber / Red"
    valueEs: "Verde / Ámbar / Rojo"
  - label: "Explainability"
    labelEs: "Explicabilidad"
    value: "SHAP feature importance"
    valueEs: "Importancia de características SHAP"
  - label: "Integration"
    labelEs: "Integración"
    value: "Operational planning systems"
    valueEs: "Sistemas de planificación operacional"

stack: [Kedro, Databricks Asset Bundles, XGBoost, SHAP, scikit-learn, PySpark, Delta Lake, Unity Catalog]
---

## Business Impact

This system replaced ad hoc manual expert judgment with systematic, data-driven risk assessment on a **weekly operational cadence**. It enables access restriction decisions that balance safety with productivity — the eternal tension in underground mining. Interpretable outputs (SHAP-based feature importance) ensure trust and action from geotechnical engineers.

## Strategic Context

Underground mining safety decisions traditionally depend on individual expert judgment, which varies in consistency and availability. Rock mass under stress can fail suddenly — rockbursts and slope collapses are among the most dangerous hazards in mining. This system provides a consistent, data-driven baseline that supports (not replaces) expert decisions, ensuring systematic and auditable risk assessment.

## The Challenge

Seismic monitoring systems generate continuous event catalogs — thousands of micro-seismic events per week. Assessment traditionally relies on manual surveys and rule-of-thumb thresholds that miss complex multivariate patterns. The question: can we detect the precursor signatures buried in the seismic data before a major event occurs?

## Feature Engineering from Seismic Data

Raw seismic event catalogs are transformed into predictive features across four dimensions:

### Energy Indices
Cumulative seismic energy release, apparent stress calculations, and windowed energy rate patterns that capture the build-up of strain energy in rock mass. Rising energy indices often precede failure.

### Spatial Features
**DBSCAN-based event clustering** identifies spatial concentrations. Migration velocity vectors track how seismic activity moves through the mine. Proximity metrics to mapped geological structures (faults, lithological contacts) add structural context.

### Temporal Patterns
Event rate changes over multiple time windows. **Seismic quiescence detection** — sudden drops in activity that can paradoxically precede large events. **Gutenberg-Richter b-value estimation** characterizes the frequency-magnitude distribution; declining b-values suggest increasing stress.

### Block Model Integration
Geological and geomechanical properties from 3D mine models — rock type, UCS (Unconfined Compressive Strength), RQD (Rock Quality Designation), and stress field estimates from numerical modeling.

## Classification & Explainability

**XGBoost ensemble models** classify spatial blocks into risk levels using a traffic-light system (Green/Amber/Red). Critically, each prediction comes with **SHAP feature importance** — the model explains *why* a zone is flagged, enabling geotechnical engineers to validate predictions against their domain knowledge and decide whether to act.

## Operational Integration

Risk predictions feed directly into operational planning:
- **Access restrictions** for high-risk zones
- **Blasting sequence optimization** to manage induced seismicity
- **Support design recommendations** based on predicted stress conditions
- Weekly systematic evaluation replacing irregular, event-triggered assessment
