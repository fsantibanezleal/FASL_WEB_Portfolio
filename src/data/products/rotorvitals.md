---
title: 'RotorVitals — Bearing Fault Diagnosis by Envelope Analysis'
titleEs: 'RotorVitals — Diagnóstico de Fallas en Rodamientos por Análisis de Envolvente'
slug: rotorvitals
date: 2026-06-19
category: predictive-maintenance
excerpt: 'Open, explainable diagnosis of rolling-element bearing faults from a vibration signal — entirely in the browser, showing its working. It computes the bearing''s kinematic defect frequencies, demodulates the resonance a defect excites, and reads the envelope spectrum for energy at exactly those lines (BPFO / BPFI / BSF). Field-standard method, calibrated to the public CWRU benchmark.'
excerptEs: 'Diagnóstico abierto y explicable de fallas en rodamientos a partir de una señal de vibración — todo en el navegador, mostrando su trabajo. Calcula las frecuencias cinemáticas de defecto del rodamiento, demodula la resonancia que un defecto excita y lee el espectro de envolvente buscando energía en exactamente esas líneas (BPFO / BPFI / BSF). Método estándar, calibrado al benchmark público CWRU.'
icon: tabler:engine
tags: [predictive-maintenance, vibration, dsp, envelope-analysis, bearings, mining, signal-processing]
proprietary: false
featured: true
assetPatterns: [rotorvitals, rotor]
github: 'https://github.com/fsantibanezleal/CAOS_RotorVitals'
demo: 'https://rotorvitals.fasl-work.com'
website: 'https://rotorvitals.fasl-work.com'

challenge: 'Bearings are the most common failure point of crushers, conveyors, pumps and fans — and a developing bearing fault is buried in the vibration signal, masked by every other rotating component. Detecting it early is high-value, but most tools either threshold a single number (RMS) that says something is wrong without saying what, or use a black-box classifier you cannot audit on a safety-relevant call.'
challengeEs: 'Los rodamientos son el punto de falla más común de chancadores, correas, bombas y ventiladores — y una falla incipiente de rodamiento está enterrada en la señal de vibración, enmascarada por cada otro componente rotatorio. Detectarla temprano es de alto valor, pero la mayoría de las herramientas o bien umbralizan un solo número (RMS) que dice que algo anda mal sin decir qué, o usan un clasificador de caja negra que no puedes auditar en una decisión relevante para la seguridad.'
approach: 'RotorVitals runs the field-standard envelope-analysis pipeline end to end, in the browser, with every number traceable: signal → band-pass → Hilbert envelope → envelope spectrum → harmonic scoring → diagnosis. It first computes the bearing''s kinematic defect frequencies (BPFO/BPFI/BSF/FTF) from geometry and shaft speed, band-passes around the structural resonance a defect excites, takes the analytic signal via the Hilbert transform, and reads its spectrum — where a fault appears as a line at its exact kinematic frequency. Each fault is scored by summed peak energy at its first five harmonics, normalized by the noise floor; the top score wins above a gate, else "healthy". A deterministic, seeded generator builds physically-grounded demo signals from published physics, doubling as a self-validation set, and the SKF 6205/6203 geometries match the open CWRU rig so the same pipeline reads real CWRU recordings unchanged.'
approachEs: 'RotorVitals corre el pipeline estándar de análisis de envolvente de extremo a extremo, en el navegador, con cada número trazable: señal → pasa-banda → envolvente de Hilbert → espectro de envolvente → puntuación de armónicos → diagnóstico. Primero calcula las frecuencias cinemáticas de defecto del rodamiento (BPFO/BPFI/BSF/FTF) desde la geometría y la velocidad de eje, aplica pasa-banda alrededor de la resonancia estructural que excita un defecto, toma la señal analítica vía transformada de Hilbert y lee su espectro — donde una falla aparece como una línea en su frecuencia cinemática exacta. Cada falla se puntúa por la energía sumada de sus primeros cinco armónicos, normalizada por el piso de ruido; el puntaje mayor gana sobre una compuerta, si no "sano". Un generador determinista y sembrado construye señales de demo con base física desde literatura publicada, sirviendo a la vez de conjunto de auto-validación, y las geometrías SKF 6205/6203 coinciden con el equipo abierto CWRU, así que el mismo pipeline lee grabaciones reales de CWRU sin cambios.'
businessContext: 'Unplanned bearing failure on a crusher or a conveyor stops a production line; condition monitoring exists to catch it days or weeks ahead. The value of an explainable diagnosis is twofold: it tells maintenance not just that a bearing is degrading but which element (outer race, inner race, ball) so they can plan the right intervention, and because every number traces back to a computed spectral line, the call survives scrutiny rather than asking an operator to trust a black box.'
businessContextEs: 'Una falla no planificada de rodamiento en un chancador o una correa detiene una línea de producción; el monitoreo de condición existe para atraparla con días o semanas de anticipación. El valor de un diagnóstico explicable es doble: le dice a mantenimiento no solo que un rodamiento se degrada sino cuál elemento (pista externa, pista interna, bola) para planificar la intervención correcta, y como cada número se remonta a una línea espectral calculada, la decisión soporta el escrutinio en vez de pedirle al operador confiar en una caja negra.'
strategicValue: 'RotorVitals shows that a rigorous, field-standard diagnostic can run entirely client-side, with zero dataset required and nothing to install — the engine is closed-form DSP and the demo signals are generated on-device from published physics. The frequency relationships are exact and transfer directly to real recordings, so the same browser app that teaches the method also analyzes a real CWRU file. As part of the Faena mining-analytics hub, it is a template for explainable, on-device condition monitoring across rotating equipment.'
strategicValueEs: 'RotorVitals demuestra que un diagnóstico riguroso y estándar puede correr enteramente del lado del cliente, sin dataset requerido y sin nada que instalar — el motor es DSP de forma cerrada y las señales de demo se generan en el dispositivo desde física publicada. Las relaciones de frecuencia son exactas y se transfieren directamente a grabaciones reales, así que la misma app de navegador que enseña el método también analiza un archivo real de CWRU. Como parte del hub de analítica minera Faena, es una plantilla para monitoreo de condición explicable y en el dispositivo a lo largo de equipos rotatorios.'

kpis:
  - label: 'Diagnosis transparency'
    labelEs: 'Transparencia del diagnóstico'
    baseline: 'Black-box classifier'
    baselineEs: 'Clasificador de caja negra'
    result: 'Every number traces to a computed envelope line'
    resultEs: 'Cada número se remonta a una línea de envolvente calculada'
    impact: 'Auditable on a safety-relevant call'
    impactEs: 'Auditable en una decisión de seguridad'
  - label: 'What the result tells you'
    labelEs: 'Qué te dice el resultado'
    baseline: 'RMS threshold: "something is wrong"'
    baselineEs: 'Umbral de RMS: "algo anda mal"'
    result: 'Fault TYPE at its exact kinematic line'
    resultEs: 'TIPO de falla en su línea cinemática exacta'
    impact: 'Plan the right intervention (race vs ball)'
    impactEs: 'Planificar la intervención correcta (pista vs bola)'
  - label: 'Data requirement'
    labelEs: 'Requisito de datos'
    baseline: 'Needs labeled training data'
    baselineEs: 'Necesita datos etiquetados de entrenamiento'
    result: 'Closed-form DSP + on-device synthetic signals'
    resultEs: 'DSP de forma cerrada + señales sintéticas en el dispositivo'
    impact: 'Zero dataset; reads real CWRU unchanged'
    impactEs: 'Cero dataset; lee CWRU real sin cambios'

metrics:
  - label: 'Pipeline'
    labelEs: 'Pipeline'
    value: 'band-pass → Hilbert envelope → spectrum → harmonic score'
    valueEs: 'pasa-banda → envolvente de Hilbert → espectro → puntaje de armónicos'
  - label: 'Faults detected'
    labelEs: 'Fallas detectadas'
    value: 'BPFO / BPFI / 2·BSF (+ FTF), first 5 harmonics'
    valueEs: 'BPFO / BPFI / 2·BSF (+ FTF), primeros 5 armónicos'
  - label: 'Calibration'
    labelEs: 'Calibración'
    value: 'CWRU Bearing Data Center (SKF 6205 / 6203)'
    valueEs: 'CWRU Bearing Data Center (SKF 6205 / 6203)'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: '100% in-browser TypeScript DSP (FFT, Hilbert)'
    valueEs: 'DSP 100% en navegador en TypeScript (FFT, Hilbert)'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'Vite + React 19 + TS + KaTeX · i18n EN/ES · static (GitHub Pages)'
    valueEs: 'Vite + React 19 + TS + KaTeX · i18n EN/ES · estático (GitHub Pages)'

stack: [TypeScript, React, Vite, DSP, Hilbert Transform, FFT, KaTeX]
---

## Read the bearing, show the working

RotorVitals diagnoses **rolling-element bearing faults** from a vibration signal — entirely in the browser, with every number explained. Bearings are the most common failure point of crushers, conveyors, pumps and fans; RotorVitals computes the bearing's kinematic defect frequencies, demodulates the resonance a defect excites, and reads the **envelope spectrum** for energy at exactly those lines. Live at [rotorvitals.fasl-work.com](https://rotorvitals.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## The pipeline

`signal → band-pass → Hilbert envelope → envelope spectrum → harmonic scoring → diagnosis`

- **Kinematics** — BPFO / BPFI / BSF / FTF from bearing geometry and shaft speed (Randall & Antoni 2011).
- **Envelope analysis** — band-pass around the structural resonance, the analytic signal via the Hilbert transform, magnitude, then its spectrum. A fault appears as a line at its kinematic frequency.
- **Decision** — each fault is scored by summed peak energy at its first 5 harmonics, normalized by the noise floor; the top score wins above a floor gate, else "healthy". No black box.

## Honest about data

No dataset is shipped or required: the engine is closed-form DSP and the demo signals are generated on-device from published physics (McFadden & Smith 1984), doubling as a self-validation set — the engine recovers the fault frequency that generated each. The SKF 6205/6203 geometries match the open **CWRU Bearing Data Center** rig, so the same pipeline reads real CWRU recordings unchanged. A single localized defect at steady speed is the easy case; real machines bring variable speed and multiple faults, but the frequency relationships are exact and transfer directly.

[Live demo](https://rotorvitals.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RotorVitals)
