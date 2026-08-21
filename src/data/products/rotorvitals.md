---
title: 'RotorVitals, Rotating-Machinery Condition Monitoring & Prognostics'
titleEs: 'RotorVitals, Monitoreo de Condición y Pronóstico de Maquinaria Rotativa'
slug: rotorvitals
date: 2026-06-28
category: predictive-maintenance
excerpt: 'An in-browser condition-monitoring and prognostics workbench for rotating machinery (bearings-first), running on real measured vibration. A source selector switches between a synthetic signal generator, real diagnosis segments (CWRU / Ottawa order-tracked / MaFaulDa), and real run-to-failure trajectories (FEMTO / XJTU / IMS). A classical DSP chain, a learned WDCNN + deep-autoencoder, and a four-model RUL ladder run live via onnxruntime-web. Honest by design: synthetic labelled as such, cross-domain transfer flagged, frequency relations exact.'
excerptEs: 'Un banco de trabajo de monitoreo de condición y pronóstico para maquinaria rotativa (con foco en rodamientos), corriendo sobre vibración real medida. Un selector de fuente alterna entre un generador de señal sintética, segmentos de diagnóstico reales (CWRU / Ottawa con order-tracking / MaFaulDa) y trayectorias reales run-to-failure (FEMTO / XJTU / IMS). Una cadena DSP clásica, un WDCNN aprendido + autoencoder profundo, y una escalera de 4 modelos de RUL corren en vivo vía onnxruntime-web. Honesto por diseño: lo sintético etiquetado como tal, la transferencia cross-dominio marcada, relaciones de frecuencia exactas.'
icon: tabler:engine
tags: [predictive-maintenance, condition-monitoring, prognostics, rul, vibration, dsp, wdcnn, onnx, cyclostationary, bearings, mining]
proprietary: false
featured: true
assetPatterns: [rotorvitals, rotor]
github: 'https://github.com/fsantibanezleal/CAOS_RotorVitals'
demo: 'https://rotorvitals.fasl-work.com'
website: 'https://rotorvitals.fasl-work.com'

challenge: 'Rotating equipment (crushers, conveyors, pumps, fans) fails most often at the bearing, and the developing fault is buried in vibration, masked by everything else that spins. Catching it early is high-value, but the useful questions go beyond "is something wrong": which element is degrading, is the model trustworthy on data it was not trained on, and how long until failure. Most tools answer only the first, with a black-box number you cannot audit on a safety-relevant call.'
challengeEs: 'Los equipos rotativos (chancadores, correas, bombas, ventiladores) fallan más seguido en el rodamiento, y la falla incipiente está enterrada en la vibración, enmascarada por todo lo demás que gira. Detectarla temprano es de alto valor, pero las preguntas útiles van más allá de "¿algo anda mal?": qué elemento se degrada, si el modelo es confiable sobre datos con los que no se entrenó, y cuánto falta para la falla. La mayoría de las herramientas responde solo la primera, con un número de caja negra que no puedes auditar en una decisión de seguridad.'

approach: 'RotorVitals is a browser workbench with a first-level source selector that decides what everything operates on: a physically-grounded synthetic generator (fault type, severity, rpm, SNR as live controls); real diagnosis segments from CWRU (the classifier''s native domain), Ottawa (time-varying speed, computed-order-tracked so defect frequencies sit at constant orders and a real Campbell view is possible), and MaFaulDa; and real run-to-failure trajectories from FEMTO/PRONOSTIA, XJTU-SY and IMS. On the selected data it runs three tiers live: a classical DSP chain (envelope/SES, kurtogram/infogram, cyclostationary, cepstrum, Campbell/order, ISO velocity zones), a learned tier (a WDCNN classifier and a deep-autoencoder health indicator, both ONNX, run in-domain on CWRU and cross-domain-labelled elsewhere), and a four-model remaining-useful-life ladder (classical first-passage, particle filter, Gaussian process, and a deep-RUL CNN) projecting against the experiment''s true failure time. Everything is client-side: TypeScript DSP plus onnxruntime-web, static on GitHub Pages.'
approachEs: 'RotorVitals es un banco de trabajo en el navegador con un selector de fuente de primer nivel que decide sobre qué opera todo: un generador sintético con base física (tipo de falla, severidad, rpm, SNR como controles en vivo); segmentos de diagnóstico reales de CWRU (el dominio nativo del clasificador), Ottawa (velocidad variable, con order-tracking para que las frecuencias de defecto queden en órdenes constantes y sea posible una vista Campbell real) y MaFaulDa; y trayectorias reales run-to-failure de FEMTO/PRONOSTIA, XJTU-SY e IMS. Sobre el dato elegido corre tres capas en vivo: una cadena DSP clásica (envolvente/SES, kurtograma/infograma, cicloestacionario, cepstrum, Campbell/orden, zonas ISO de velocidad), una capa aprendida (un clasificador WDCNN y un autoencoder profundo como indicador de salud, ambos ONNX, in-domain en CWRU y cross-dominio-etiquetado en el resto), y una escalera de cuatro modelos de vida útil remanente (first-passage clásico, filtro de partículas, proceso gaussiano y una CNN de RUL profunda) proyectando contra el tiempo de falla real del experimento. Todo del lado del cliente: DSP en TypeScript más onnxruntime-web, estático en GitHub Pages.'

businessContext: 'Unplanned failure of a crusher or conveyor stops a line; condition monitoring exists to convert that into a planned intervention, caught days or weeks ahead. The value here is not just a diagnosis but a defensible one: it names the failing element AND projects a remaining useful life with an uncertainty band, and it is honest about when the learned model can be trusted: showing, on real data, where deep learning wins (in-distribution) and where physics wins (cross-rig), instead of a single flattering accuracy.'
businessContextEs: 'La falla no planificada de un chancador o una correa detiene una línea; el monitoreo de condición existe para convertir eso en una intervención planificada, atrapada con días o semanas de anticipación. El valor acá no es solo un diagnóstico sino uno defendible: nombra el elemento que falla Y proyecta una vida útil remanente con banda de incertidumbre, y es honesto sobre cuándo se puede confiar en el modelo aprendido: mostrando, sobre datos reales, dónde gana el deep learning (en distribución) y dónde gana la física (cross-equipo), en vez de un único número favorecedor.'
strategicValue: 'RotorVitals demonstrates a full condition-monitoring-to-prognostics stack running entirely client-side on public real data, with the discipline to report its own failure modes: a CWRU-trained WDCNN that nails one severity but collapses on another, and that scores near chance cross-rig on MFPT while the training-free envelope analysis transfers almost perfectly, the honest lesson that deep learning wins in-distribution and physics wins out-of-distribution. The RUL side is a genuine model ladder from closed-form to Bayesian to deep, benchmarked against 36 real run-to-failure trajectories. It is a reusable pattern for explainable, on-device, honestly-scoped monitoring of rotating equipment.'
strategicValueEs: 'RotorVitals demuestra un stack completo de monitoreo de condición a pronóstico corriendo enteramente del lado del cliente sobre datos reales públicos, con la disciplina de reportar sus propios modos de falla: un WDCNN entrenado en CWRU que acierta una severidad pero colapsa en otra, y que puntúa cerca del azar cross-equipo en MFPT mientras el análisis de envolvente sin entrenamiento transfiere casi perfecto, la lección honesta de que el deep learning gana en distribución y la física gana fuera de distribución. El lado de RUL es una escalera real de modelos, de forma cerrada a Bayesiano a profundo, evaluada contra 36 trayectorias reales run-to-failure. Es un patrón reutilizable para monitoreo explicable, en el dispositivo y honestamente acotado de equipos rotativos.'

kpis:
  - label: 'What the result tells you'
    labelEs: 'Qué te dice el resultado'
    baseline: 'RMS threshold: "something is wrong"'
    baselineEs: 'Umbral de RMS: "algo anda mal"'
    result: 'Fault TYPE at its kinematic line + a projected RUL with an uncertainty band'
    resultEs: 'TIPO de falla en su línea cinemática + una RUL proyectada con banda de incertidumbre'
    impact: 'Plan the right intervention and its timing'
    impactEs: 'Planificar la intervención correcta y su momento'
  - label: 'Diagnosis honesty'
    labelEs: 'Honestidad del diagnóstico'
    baseline: 'Black-box accuracy on a clean rig'
    baselineEs: 'Accuracy de caja negra en un equipo limpio'
    result: 'SNR-robustness curve + cross-dataset transfer test (WDCNN vs physics) on real data'
    resultEs: 'Curva de robustez a SNR + test de transferencia cross-dataset (WDCNN vs física) en datos reales'
    impact: 'You see where the model fails, not one flattering number'
    impactEs: 'Ves dónde falla el modelo, no un solo número favorecedor'
  - label: 'Data'
    labelEs: 'Datos'
    baseline: 'Needs a proprietary labelled set'
    baselineEs: 'Necesita un set propietario etiquetado'
    result: 'Live on 4 public real datasets (CWRU, Ottawa, MaFaulDa; FEMTO/XJTU/IMS) + MFPT cross-eval'
    resultEs: 'En vivo sobre 4 datasets reales públicos (CWRU, Ottawa, MaFaulDa; FEMTO/XJTU/IMS) + MFPT cross-eval'
    impact: 'Reproducible; raw archives link-only, never re-hosted'
    impactEs: 'Reproducible; archivos crudos solo enlazados, nunca re-hospedados'
  - label: 'Compute'
    labelEs: 'Cómputo'
    baseline: 'Server / GPU inference service'
    baselineEs: 'Servicio de inferencia en servidor / GPU'
    result: '100% client-side: TypeScript DSP + onnxruntime-web (WASM)'
    resultEs: '100% del lado del cliente: DSP en TypeScript + onnxruntime-web (WASM)'
    impact: 'Static hosting, nothing to install, zero backend'
    impactEs: 'Hosting estático, nada que instalar, cero backend'

metrics:
  - label: 'Sources'
    labelEs: 'Fuentes'
    value: 'Synthetic (knobs) · Real diagnosis (CWRU / Ottawa order-tracked / MaFaulDa) · Real run-to-failure (FEMTO/XJTU/IMS, 36 trajectories)'
    valueEs: 'Sintético (controles) · Diagnóstico real (CWRU / Ottawa order-tracked / MaFaulDa) · Run-to-failure real (FEMTO/XJTU/IMS, 36 trayectorias)'
  - label: 'Diagnosis'
    labelEs: 'Diagnóstico'
    value: 'Classical envelope/SES · kurtogram/infogram · cyclostationary · cepstrum · Campbell/order; learned WDCNN + deep-AE (ONNX)'
    valueEs: 'Envolvente/SES clásico · kurtograma/infograma · cicloestacionario · cepstrum · Campbell/orden; WDCNN aprendido + AE profundo (ONNX)'
  - label: 'Prognostics / RUL'
    labelEs: 'Pronóstico / RUL'
    value: 'Ladder: exponential first-passage · particle filter · Gaussian process · deep-RUL CNN (ONNX); α-λ + calibration; ISO 20816 zones'
    valueEs: 'Escalera: first-passage exponencial · filtro de partículas · proceso gaussiano · CNN de RUL profunda (ONNX); α-λ + calibración; zonas ISO 20816'
  - label: 'Benchmark (real)'
    labelEs: 'Benchmark (real)'
    value: 'RUL MAE over 36 FEMTO/XJTU/IMS trajectories: GP ≈1.0 h (best) · exponential ≈2.7 h (transparent); cross-dataset MFPT: physics ~100% vs WDCNN 0% outer-race recall'
    valueEs: 'MAE de RUL sobre 36 trayectorias FEMTO/XJTU/IMS: GP ≈1,0 h (mejor) · exponencial ≈2,7 h (transparente); cross-dataset MFPT: física ~100% vs WDCNN 0% recall pista externa'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: '100% in-browser: TypeScript DSP (FFT, Hilbert, kurtogram) + onnxruntime-web'
    valueEs: '100% en navegador: DSP en TypeScript (FFT, Hilbert, kurtograma) + onnxruntime-web'

stack: [TypeScript, React, Vite, DSP, ONNX, onnxruntime-web, PyTorch, KaTeX]
---

## From "something is wrong" to "which element, and how long"

RotorVitals is an in-browser **condition-monitoring and prognostics** workbench for rotating machinery, **bearings-first**, running on **real measured vibration**. Envelope analysis (the classic bearing-fault method) is now one tier inside it. Live at [rotorvitals.fasl-work.com](https://rotorvitals.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## A source selector drives the whole workbench

- **Synthetic (with controls)**, a physically-grounded generator (McFadden & Smith 1984); fault type, severity, rpm and SNR are live knobs to explore the physics. Severities here are **synthetic and labelled as such**.
- **Real: diagnosis segment**: a measured window from **CWRU** (the classifier's native domain), **Ottawa** (time-varying speed, computed-order-tracked → a real Campbell/order view), or **MaFaulDa**.
- **Real: run-to-failure**, a real trajectory from **FEMTO/PRONOSTIA, XJTU-SY or IMS**; a life-instant slider scrubs measured windows healthy → failure, the waterfall is the real degradation surface, and RUL projects against the experiment's true failure time.

## Three tiers, run live

**Classical DSP** (envelope/SES, kurtogram/infogram, cyclostationary, cepstrum, Campbell/order, ISO velocity zones) · a **learned tier** (a WDCNN classifier + a deep-autoencoder health indicator, both ONNX) · and a **four-model RUL ladder** (exponential first-passage → particle filter → Gaussian process → deep-RUL CNN), benchmarked on **36 real run-to-failure trajectories** (GP gives the lowest aggregate error, ≈1 h MAE, with the transparent exponential a close second at ≈2.7 h, an aggregate over lifetimes from ~0.6 h to ~1000+ h).

## Honest about the model's limits

The learned classifier is trained on CWRU and shown **in-domain** there (with an entire load held out); everywhere else it is **cross-domain-labelled**, and its failures are on display, not hidden: trained only on 0.007″ faults it nails 0.021″ but **collapses on 0.014″ (27.8%)**, and it scores near chance **cross-rig on MFPT (0% outer-race recall)** while the training-free envelope analysis transfers **almost perfectly**. The lesson, shown not claimed: **deep learning wins in-distribution, physics wins out-of-distribution.** Synthetic cases are labelled synthetic, frequency relations are exact, and the scope is rotating machinery, bearings-first, no gear claim (no gear dataset), variable speed only via the one order-tracked dataset.

[Live demo](https://rotorvitals.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RotorVitals)
