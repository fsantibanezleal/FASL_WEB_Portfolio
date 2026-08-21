---
title: 'ChargeCascade, Tumbling-Mill Charge Motion & Power Studio'
titleEs: 'ChargeCascade, Estudio de Movimiento de Carga y Potencia en Molinos de Tambor'
slug: chargecascade
date: 2026-06-26
category: mining-optimization
excerpt: 'A live in-browser 3D studio for tumbling-mill (SAG / ball / rod) charge motion and power: critical speed, the Davis cascading → cataracting → centrifuging transition, toe/shoulder angles, and Hogg-Fuerstenau / Morrell-form / Bond power, published closed-form physics recomputed on every slider, with a trained ONNX power surrogate and an out-of-envelope anomaly guard running client-side.'
excerptEs: 'Un estudio 3D en el navegador del movimiento de carga y la potencia de molinos de tambor (SAG / bolas / barras): velocidad crítica, la transición cascada → catarata → centrifugado de Davis, ángulos toe/shoulder, y potencia Hogg-Fuerstenau / forma-Morrell / Bond: física de forma cerrada publicada, recomputada en cada control, con un surrogate ONNX de potencia y un guardia de anomalía fuera de envolvente corriendo del lado del cliente.'
icon: tabler:barrel
tags: [mining, comminution, simulation, 3d-visualization, physics, scientific-ml, onnx]
proprietary: false
featured: false
assetPatterns: [chargecascade, charge]
github: 'https://github.com/fsantibanezleal/CAOS_ChargeCascade'
demo: 'https://chargecascade.fasl-work.com'
website: 'https://chargecascade.fasl-work.com'

challenge: 'The charge inside a tumbling mill governs both grinding and power draw, but its behaviour (where the load cascades, where it cataracts onto the toe, when it centrifuges) is invisible and lives in a scatter of textbook equations (Davis, Hogg-Fuerstenau, Morrell, Bond). Learning or checking that intuition usually means either a static diagram or a heavyweight discrete-element (DEM) simulation, with no fast, honest, tunable middle ground.'
challengeEs: 'La carga dentro de un molino de tambor gobierna tanto la molienda como la demanda de potencia, pero su comportamiento (dónde cascadea, dónde cataratea sobre el toe, cuándo centrifuga) es invisible y vive en un conjunto disperso de ecuaciones de texto (Davis, Hogg-Fuerstenau, Morrell, Bond). Aprender o verificar esa intuición suele significar o un diagrama estático o una simulación pesada de elementos discretos (DEM), sin un punto intermedio rápido, honesto y ajustable.'

approach: 'ChargeCascade implements the published closed-form mill equations exactly in a dependency-free TypeScript engine that recomputes on every control change: critical speed (Nc = 42.3/√(D−d)), the Davis departure angle and the cascading → cataracting → centrifuging regime bands, toe/shoulder geometry, and net power as the centre-of-mass torque arm (Hogg-Fuerstenau, a Morrell-form, and Bond specific energy). The 3D view is a kinematic animation of that engine, explicitly NOT a DEM / N-body particle solve. The same engine, run offline in Node, labels a synthetic operating envelope on which two small models are trained (PyTorch → ONNX) and served live via onnxruntime-web: a power surrogate for instant envelope sweeps and an out-of-distribution autoencoder that flags off-envelope inputs. The exact engine stays the authority; the models fall back to it gracefully.'
approachEs: 'ChargeCascade implementa exactamente las ecuaciones de forma cerrada publicadas del molino en un motor TypeScript sin dependencias que recomputa en cada cambio de control: velocidad crítica (Nc = 42,3/√(D−d)), el ángulo de partida de Davis y las bandas de régimen cascada → catarata → centrifugado, la geometría toe/shoulder, y la potencia neta como el brazo de torque del centro de masa (Hogg-Fuerstenau, una forma-Morrell y energía específica de Bond). La vista 3D es una animación cinemática de ese motor, explícitamente NO una simulación DEM / de N cuerpos. El mismo motor, corrido offline en Node, etiqueta una envolvente operacional sintética sobre la que se entrenan dos modelos pequeños (PyTorch → ONNX) servidos en vivo vía onnxruntime-web: un surrogate de potencia para barridos instantáneos de la envolvente y un autoencoder fuera de distribución que marca entradas fuera de envolvente. El motor exacto sigue siendo la autoridad; los modelos caen de vuelta a él con gracia.'

businessContext: 'Comminution is where a concentrator spends most of its energy, and mill power is a first-order operating and design lever. A fast, transparent studio that ties charge geometry to regime and to power, with the governing equations on screen, is a teaching and what-if instrument: change speed, filling or ball load and see the regime and power move, without waiting on a DEM run or trusting a black box.'
businessContextEs: 'La conminución es donde un concentrador gasta la mayor parte de su energía, y la potencia del molino es una palanca operacional y de diseño de primer orden. Un estudio rápido y transparente que ligue la geometría de la carga con el régimen y con la potencia, con las ecuaciones gobernantes en pantalla, es un instrumento de enseñanza y de what-if: cambia velocidad, llenado o carga de bolas y ve moverse el régimen y la potencia, sin esperar una corrida DEM ni confiar en una caja negra.'
strategicValue: 'ChargeCascade shows how to turn scattered comminution physics into one live, tunable, honest studio: exact closed-form equations as the authority, a 3D kinematic view for intuition, and a thin learned layer (a power surrogate and an anomaly guard) that adds speed and a sanity check without pretending to be more than it is. It is explicit about its boundaries (no DEM, no plant data, magnitude calibrated to a textbook reference) which is exactly what makes it trustworthy as a design-intuition tool and a template for the rest of the Faena comminution lane.'
strategicValueEs: 'ChargeCascade muestra cómo convertir física de conminución dispersa en un solo estudio en vivo, ajustable y honesto: ecuaciones exactas de forma cerrada como autoridad, una vista cinemática 3D para la intuición, y una capa aprendida delgada (un surrogate de potencia y un guardia de anomalía) que agrega velocidad y un chequeo de sanidad sin pretender ser más de lo que es. Es explícito sobre sus límites (sin DEM, sin datos de planta, magnitud calibrada a una referencia de texto) que es justo lo que lo hace confiable como herramienta de intuición de diseño y plantilla para el resto de la línea de conminución de Faena.'

kpis:
  - label: 'Power surrogate'
    labelEs: 'Surrogate de potencia'
    baseline: 'Re-run the full engine per point'
    baselineEs: 'Re-correr el motor completo por punto'
    result: '~5.2% downstream error vs the exact engine'
    resultEs: '~5,2% de error vs el motor exacto'
    impact: 'Instant operating-envelope sweeps, no backend'
    impactEs: 'Barridos instantáneos de la envolvente, sin backend'
  - label: 'Anomaly guard'
    labelEs: 'Guardia de anomalía'
    baseline: 'No validity check on inputs'
    baselineEs: 'Sin chequeo de validez de entradas'
    result: 'Out-of-distribution autoencoder, AUC 0.922'
    resultEs: 'Autoencoder fuera de distribución, AUC 0,922'
    impact: 'Flags off-envelope operating points'
    impactEs: 'Marca puntos de operación fuera de envolvente'
  - label: 'Response'
    labelEs: 'Respuesta'
    baseline: 'DEM run / server round-trip'
    baselineEs: 'Corrida DEM / ida y vuelta a servidor'
    result: 'Sub-millisecond in-browser recompute'
    resultEs: 'Recómputo sub-milisegundo en el navegador'
    impact: 'Instant slider response, zero backend'
    impactEs: 'Respuesta instantánea al control, cero backend'
  - label: 'Correctness'
    labelEs: 'Correctitud'
    baseline: 'Unchecked implementation'
    baselineEs: 'Implementación sin verificar'
    result: 'Two exact analytic controls pass (empty = 0 kW, critical = centrifuging onset)'
    resultEs: 'Dos controles analíticos exactos pasan (vacío = 0 kW, crítica = inicio de centrifugado)'
    impact: 'The engine is verified, not asserted'
    impactEs: 'El motor está verificado, no afirmado'

metrics:
  - label: 'Physics (exact, live)'
    labelEs: 'Física (exacta, en vivo)'
    value: 'Critical speed · Davis regime · toe/shoulder · Hogg-Fuerstenau / Morrell-form / Bond power'
    valueEs: 'Velocidad crítica · régimen de Davis · toe/shoulder · potencia Hogg-Fuerstenau / forma-Morrell / Bond'
  - label: 'Learned models (ONNX, live)'
    labelEs: 'Modelos aprendidos (ONNX, en vivo)'
    value: 'Power surrogate (MLP, ~5% vs engine) + OOD autoencoder (AUC 0.922)'
    valueEs: 'Surrogate de potencia (MLP, ~5% vs motor) + autoencoder OOD (AUC 0,922)'
  - label: 'Mill types'
    labelEs: 'Tipos de molino'
    value: '4 (SAG / ball / rod / autogenous), 6 input features'
    valueEs: '4 (SAG / bolas / barras / autógeno), 6 features de entrada'
  - label: 'Data'
    labelEs: 'Datos'
    value: '100% synthetic operating points (engine-labelled); magnitude calibrated to a ~1.3 MW textbook reference'
    valueEs: '100% puntos de operación sintéticos (etiquetados por el motor); magnitud calibrada a una referencia de texto ~1,3 MW'
  - label: 'Surface'
    labelEs: 'Superficie'
    value: '10 reactive App tabs · 6 standard pages · bilingual EN/ES'
    valueEs: '10 pestañas reactivas de App · 6 páginas estándar · bilingüe EN/ES'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'React 19 + Vite + TS · three.js · onnxruntime-web · KaTeX · static (GitHub Pages)'
    valueEs: 'React 19 + Vite + TS · three.js · onnxruntime-web · KaTeX · estático (GitHub Pages)'

stack: [TypeScript, React, Vite, three.js, onnxruntime-web, PyTorch, KaTeX]
---

## See the charge, read the power

ChargeCascade is a live, in-browser **3D studio for tumbling-mill charge motion and power** (SAG / ball / rod). Move a slider (speed, filling, ball load, mill size) and watch the charge shift between **cascading, cataracting and centrifuging**, with the toe and shoulder angles and the net power recomputing instantly, and the governing equations on screen. Live at [chargecascade.fasl-work.com](https://chargecascade.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## Exact physics as the authority

A dependency-free TypeScript engine implements the published closed-form equations exactly and recomputes on every control change: critical speed `Nc = 42.3/√(D−d)`, the Davis departure angle and the regime bands, toe/shoulder geometry, and net power as the centre-of-mass torque arm (Hogg-Fuerstenau, a Morrell-form, Bond specific energy). Two exact analytic controls pass (an empty mill draws 0 kW; at critical speed the charge centrifuges), so the engine is **verified, not asserted**.

## A thin, honest learned layer

Run offline in Node, the exact engine labels a synthetic operating envelope on which two small models are trained (PyTorch → ONNX) and served live via **onnxruntime-web**: a **power surrogate** (~5.2% error vs the exact engine) for instant envelope sweeps, and an **out-of-distribution autoencoder** (AUC 0.922) that flags off-envelope inputs. They are speed and sanity-check add-ons, the exact engine remains the authority and the app falls back to it if the models are absent.

## What it is not

The 3D is a **kinematic animation** of the closed-form engine, **not** a DEM / N-body particle simulation, and there is **no** population-balance breakage model. All operating points are **synthetic-but-realistic** (no plant, PEPT or DEM data); the power magnitude is **calibrated** to a ~1.3 MW textbook reference, not validated against a real mill, and the surrogate's accuracy is measured against the engine, not reality. Honest boundaries are the point: it is a fast design-intuition studio, not a plant model.

[Live demo](https://chargecascade.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_ChargeCascade)
