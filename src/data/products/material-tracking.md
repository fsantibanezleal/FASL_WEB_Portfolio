---
title: "Real-Time Material Tracking & Blending System"
titleEs: "Sistema de Seguimiento de Material y Mezcla en Tiempo Real"
slug: material-tracking
date: 2022-06-01
category: mining-optimization
excerpt: "A real-time material tracking and blending optimization system maintaining a digital twin of ore flow from mine pits through conveyors and stockpiles to processing plant inputs. Significantly improved blending compliance."
excerptEs: "Sistema de seguimiento de material y optimización de mezcla en tiempo real que mantiene un gemelo digital del flujo de mineral desde los pits hasta la planta de procesamiento. Mejoró significativamente el cumplimiento de mezcla."
icon: tabler:route
tags: [digital-twin, optimization, mining, pyspark, kedro, real-time]
proprietary: true
featured: false
assetPatterns: [material_tracking]

challenge: "Without material tracking, blending decisions relied on delayed lab results (hours to days old) and individual operator experience. The information gap between mine extraction and plant processing left optimization potential untapped."
challengeEs: "Sin seguimiento de material, las decisiones de mezcla dependían de resultados de laboratorio diferidos (horas a días) y experiencia individual del operador. La brecha de información entre extracción minera y procesamiento en planta dejaba potencial de optimización sin explotar."

approach: "Two synchronized layers: Physical layer tracking (conveyor sensors, weightometers, time-resolved stockpile composition modeling with segregation) and Optimization layer (constrained optimization minimizing deviation from target grade specifications, scenario simulation evaluating extraction sequences). Configurable per mining division with shared core engine."
approachEs: "Dos capas sincronizadas: Capa física de seguimiento (sensores de correa, pesómetros, modelado de composición de acopio con resolución temporal y segregación) y Capa de optimización (optimización restringida minimizando desviación de especificaciones de ley objetivo, simulación de escenarios evaluando secuencias de extracción). Configurable por división minera con motor central compartido."

kpis:
  - label: "Blending Visibility"
    labelEs: "Visibilidad de Mezcla"
    baseline: "Delayed lab results (hours to days)"
    baselineEs: "Resultados de lab diferidos (horas a días)"
    result: "Real-time stockpile state estimation"
    resultEs: "Estimación de estado de acopio en tiempo real"
    impact: "Decisions based on current ore properties"
    impactEs: "Decisiones basadas en propiedades actuales del mineral"
  - label: "Feed Compliance"
    labelEs: "Cumplimiento de Alimentación"
    baseline: "Reactive correction after off-spec"
    baselineEs: "Corrección reactiva después de fuera de spec"
    result: "Proactive blending optimization"
    resultEs: "Optimización proactiva de mezcla"
    impact: "Reduced out-of-specification feed"
    impactEs: "Reducción de alimentación fuera de especificación"
  - label: "Decision Cadence"
    labelEs: "Cadencia de Decisión"
    baseline: "Shift-based manual assessment"
    baselineEs: "Evaluación manual por turno"
    result: "Hourly tracking, 4-hourly optimization"
    resultEs: "Seguimiento horario, optimización cada 4 horas"
    impact: "Continuous improvement loop"
    impactEs: "Ciclo de mejora continua"

metrics:
  - label: "Tracking Cycle"
    labelEs: "Ciclo de Seguimiento"
    value: "Hourly updates"
    valueEs: "Actualizaciones horarias"
  - label: "Optimization"
    labelEs: "Optimización"
    value: "Every 4 hours"
    valueEs: "Cada 4 horas"
  - label: "Feed Compliance"
    labelEs: "Cumplimiento"
    value: "Improved blending adherence"
    valueEs: "Mejor adherencia de mezcla"
  - label: "Deployment"
    labelEs: "Despliegue"
    value: "Configurable multi-division"
    valueEs: "Multi-división configurable"

stack: [Kedro, PySpark, Delta Lake, Databricks, XGBoost, Docker]
---

## The Information Gap

Before this system, blending decisions relied on delayed lab results — hours to days old — and individual operator experience. The mine extracts ore from multiple sources with varying grades and mineralogy. This material flows through conveyors, accumulates in stockpiles, and eventually reaches the processing plant. Without real-time visibility into what's actually in each stockpile and on each belt, blending is educated guesswork.

The gap between extraction and processing meant optimization potential was systematically left on the table.

## Two Synchronized Layers

The **physical tracking layer** maintains a time-resolved model of each stockpile's composition. Conveyor sensors, weightometers, and sampling points feed continuous data. The system tracks not just what went into a stockpile, but how it's distributed internally — **segregation modeling** accounts for the fact that stockpiles aren't homogeneous. The material deposited first isn't necessarily what comes out first during reclaim.

The **optimization layer** formulates blending as a constrained optimization problem: minimize deviation from target grade specifications, subject to tonnage constraints, equipment availability, and extraction sequence feasibility. The solver simulates multiple scenarios to find the best extraction plan before committing to it.

Stockpile state updates hourly. Optimization runs every 4 hours. Each mining division has its own parameter configuration but shares the core engine — a design that enabled multi-division deployment without rebuilding the system for each site.

The system runs on **Kedro** pipelines with **PySpark** and **Delta Lake** on Databricks, providing versioned, time-travel-capable data storage that supports both real-time tracking and historical analysis.
