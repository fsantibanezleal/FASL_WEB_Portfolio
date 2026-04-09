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

## Underground Safety

Rock mass under stress can fail suddenly. Rockbursts and slope collapses are among the most dangerous hazards in mining — they can injure or kill workers and shut down production for weeks. The traditional approach relies on individual expert judgment applied to seismic monitoring data: an experienced geotechnical engineer reviews event catalogs and applies rule-of-thumb thresholds. The problem: judgment varies between experts, coverage is inconsistent, and complex multivariate patterns hiding in thousands of weekly micro-seismic events go undetected.

This system provides a consistent, data-driven baseline — not replacing expert judgment, but augmenting it with pattern recognition that humans can't perform at scale.

## From Seismic Events to Risk Predictions

Raw seismic catalogs — thousands of micro-events per week — are transformed into predictive features across four dimensions.

**Energy indices** track cumulative seismic energy release, apparent stress, and windowed energy rate patterns. Rising energy often precedes failure as strain accumulates in the rock mass.

**Spatial features** use DBSCAN clustering to identify event concentrations. Migration velocity vectors track how seismic activity moves through the mine. Proximity to mapped geological structures — faults, lithological contacts — adds structural context.

**Temporal patterns** capture event rate changes over multiple windows. Seismic quiescence — sudden drops in activity — can paradoxically precede large events. Gutenberg-Richter b-value estimation characterizes the frequency-magnitude distribution; declining b-values suggest increasing stress concentration.

**Block model integration** brings in geological and geomechanical properties from 3D mine models: rock type, UCS, RQD, and stress field estimates.

XGBoost ensemble models classify spatial blocks into **Green/Amber/Red** risk levels. Each prediction comes with **SHAP feature importance** — the model explains *why* a zone is flagged, so geotechnical engineers can validate against their domain knowledge and decide whether to act. This interpretability was non-negotiable: a black-box risk classification would never be trusted for safety decisions.

Predictions feed directly into access restrictions, blasting sequence optimization, and support design recommendations on a weekly cadence.
