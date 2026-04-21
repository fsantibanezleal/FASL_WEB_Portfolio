---
title: 'Real-Time Material Tracking & Blending System'
titleEs: 'Sistema de Seguimiento de Material y Mezcla en Tiempo Real'
slug: material-tracking
date: 2022-06-01
category: mining-optimization
excerpt: 'A real-time material tracking and blending optimization system maintaining a digital twin of ore flow from mine pits through conveyors and stockpiles to processing plant inputs. Significantly improved blending compliance.'
excerptEs: 'Sistema de seguimiento de material y optimización de mezcla en tiempo real que mantiene un gemelo digital del flujo de mineral desde los pits hasta la planta de procesamiento. Mejoró significativamente el cumplimiento de mezcla.'
icon: tabler:route
tags: [digital-twin, optimization, mining, pyspark, kedro, real-time]
proprietary: true
featured: false
assetPatterns: [material_tracking]

challenge: 'Without material tracking, blending decisions relied on delayed lab results (hours to days old) and individual operator experience. The information gap between mine extraction and plant processing left optimization potential untapped.'
challengeEs: 'Sin seguimiento de material, las decisiones de mezcla dependían de resultados de laboratorio diferidos (horas a días) y experiencia individual del operador. La brecha de información entre extracción minera y procesamiento en planta dejaba potencial de optimización sin explotar.'

approach: 'Two synchronized layers: Physical layer tracking (conveyor sensors, weightometers, time-resolved stockpile composition modeling with segregation) and Optimization layer (constrained optimization minimizing deviation from target grade specifications, scenario simulation evaluating extraction sequences). Configurable per mining division with shared core engine.'
approachEs: 'Dos capas sincronizadas: Capa física de seguimiento (sensores de correa, pesómetros, modelado de composición de acopio con resolución temporal y segregación) y Capa de optimización (optimización restringida minimizando desviación de especificaciones de ley objetivo, simulación de escenarios evaluando secuencias de extracción). Configurable por división minera con motor central compartido.'
businessContext: 'Mining operations extract ore from multiple sources with varying grades and mineralogy. This material flows through conveyors, accumulates in stockpiles, and eventually reaches the processing plant. Without real-time visibility into what is actually in each stockpile and on each belt, blending decisions rely on delayed lab results — hours to days old — and individual operator experience. The information gap between extraction and processing means optimization potential is systematically left on the table.'
businessContextEs: 'Las operaciones mineras extraen mineral de múltiples fuentes con leyes y mineralogía variables. Este material fluye a través de correas, se acumula en acopios y eventualmente llega a la planta de procesamiento. Sin visibilidad en tiempo real de lo que realmente hay en cada acopio y en cada correa, las decisiones de mezcla dependen de resultados de laboratorio diferidos — horas a días de antigüedad — y la experiencia individual del operador. La brecha de información entre extracción y procesamiento significa que el potencial de optimización se deja sistemáticamente sin explotar.'
strategicValue: 'The system created real-time visibility into ore flow that simply did not exist before, significantly improving blending compliance and reducing out-of-spec feed to the processing plant. Two synchronized layers work in concert: a physical tracking layer maintains time-resolved stockpile composition models with segregation modeling (because stockpiles are not homogeneous), while an optimization layer formulates blending as a constrained optimization problem with scenario simulation. Hourly tracking and 4-hourly optimization cycles run on Kedro/PySpark/Delta Lake, with multi-division deployment sharing a core engine while allowing per-site parameter configuration.'
strategicValueEs: 'El sistema creó visibilidad en tiempo real del flujo de mineral que simplemente no existía antes, mejorando significativamente el cumplimiento de mezcla y reduciendo la alimentación fuera de especificación a la planta de procesamiento. Dos capas sincronizadas trabajan en conjunto: una capa de seguimiento físico mantiene modelos de composición de acopios con resolución temporal y modelado de segregación (porque los acopios no son homogéneos), mientras una capa de optimización formula la mezcla como un problema de optimización restringida con simulación de escenarios. Ciclos de seguimiento horario y optimización cada 4 horas corren sobre Kedro/PySpark/Delta Lake, con despliegue multi-división compartiendo un motor central permitiendo configuración de parámetros por sitio.'

kpis:
  - label: 'Blending Visibility'
    labelEs: 'Visibilidad de Mezcla'
    baseline: 'Delayed lab results (hours to days)'
    baselineEs: 'Resultados de lab diferidos (horas a días)'
    result: 'Real-time stockpile state estimation'
    resultEs: 'Estimación de estado de acopio en tiempo real'
    impact: 'Decisions based on current ore properties'
    impactEs: 'Decisiones basadas en propiedades actuales del mineral'
  - label: 'Feed Compliance'
    labelEs: 'Cumplimiento de Alimentación'
    baseline: 'Reactive correction after off-spec'
    baselineEs: 'Corrección reactiva después de fuera de spec'
    result: 'Proactive blending optimization'
    resultEs: 'Optimización proactiva de mezcla'
    impact: 'Reduced out-of-specification feed'
    impactEs: 'Reducción de alimentación fuera de especificación'
  - label: 'Decision Cadence'
    labelEs: 'Cadencia de Decisión'
    baseline: 'Shift-based manual assessment'
    baselineEs: 'Evaluación manual por turno'
    result: 'Hourly tracking, 4-hourly optimization'
    resultEs: 'Seguimiento horario, optimización cada 4 horas'
    impact: 'Continuous improvement loop'
    impactEs: 'Ciclo de mejora continua'

metrics:
  - label: 'Tracking Cycle'
    labelEs: 'Ciclo de Seguimiento'
    value: 'Hourly updates'
    valueEs: 'Actualizaciones horarias'
  - label: 'Optimization'
    labelEs: 'Optimización'
    value: 'Every 4 hours'
    valueEs: 'Cada 4 horas'
  - label: 'Feed Compliance'
    labelEs: 'Cumplimiento'
    value: 'Improved blending adherence'
    valueEs: 'Mejor adherencia de mezcla'
  - label: 'Deployment'
    labelEs: 'Despliegue'
    value: 'Configurable multi-division'
    valueEs: 'Multi-división configurable'

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
