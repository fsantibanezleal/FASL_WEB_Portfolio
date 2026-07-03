---
title: 'CutoffGrade Studio — Lane''s Optimal Cut-off Grade'
titleEs: 'CutoffGrade Studio — Ley de Corte Óptima de Lane'
slug: cutoffgrade
date: 2026-06-30
category: mining-optimization
excerpt: 'An open, explainable studio for Lane''s optimal cut-off grade: feed a grade-tonnage curve plus prices, costs and three stage capacities, and it computes the NPV-maximising declining cut-off trajectory, NPV, mine life and cashflow — live in the browser, with the exact algorithm as the authority and a learned surrogate only for speed.'
excerptEs: 'Un estudio abierto y explicable de la ley de corte óptima de Lane: con una curva ley-tonelaje más precios, costos y tres capacidades de etapa, calcula la trayectoria de corte decreciente que maximiza el VAN, la vida de mina y el flujo de caja — en vivo en el navegador, con el algoritmo exacto como autoridad y un surrogate aprendido solo para velocidad.'
icon: tabler:chart-area-line
tags: [mining, optimization, economics, cutoff-grade, lane, npv, onnx]
proprietary: false
featured: false
assetPatterns: [cutoffgrade, cutoff]
github: 'https://github.com/fsantibanezleal/CAOS_CutoffGrade'
demo: 'https://cutoffgrade.fasl-work.com'
website: 'https://cutoffgrade.fasl-work.com'

challenge: 'The cut-off grade — the line between ore and waste — is one of the highest-leverage decisions in a mine plan, and Lane''s theory says the NPV-maximising cut-off is not a single number but a trajectory that declines over the mine''s life and is set by whichever stage (mine, mill or market) is the binding constraint. That result is subtle, easy to get wrong, and usually locked inside a spreadsheet or a proprietary planning tool with no way to see why the answer is what it is.'
challengeEs: 'La ley de corte — la línea entre mineral y estéril — es una de las decisiones de mayor palanca en un plan minero, y la teoría de Lane dice que la ley de corte que maximiza el VAN no es un número único sino una trayectoria que decrece a lo largo de la vida de la mina y la fija la etapa (mina, planta o mercado) que sea la restricción activa. Ese resultado es sutil, fácil de equivocar, y suele quedar encerrado en una planilla o una herramienta propietaria sin forma de ver por qué la respuesta es la que es.'

approach: 'CutoffGrade Studio implements Lane''s method exactly and transparently: from a grade-tonnage curve and the economic and capacity inputs it computes the six characteristic cut-offs and the balancing (Dagdelen) medians, then runs a year-by-year NPV simulator to a fixed point to find the declining optimal trajectory, NPV, mine life and cashflow. The exact optimizer is the authority; on top, two small models trained offline (PyTorch → ONNX) run live via onnxruntime-web — a surrogate that reproduces the trajectory instantly for slider sweeps, and an out-of-distribution guard — but they are for speed and sanity, never to improve the answer. A ten-tab workbench reacts to a case selector and live sliders, with the governing equations on screen.'
approachEs: 'CutoffGrade Studio implementa el método de Lane exacta y transparentemente: desde una curva ley-tonelaje y las entradas económicas y de capacidad calcula las seis leyes de corte características y las medianas de balance (Dagdelen), luego corre un simulador de VAN año a año hasta un punto fijo para hallar la trayectoria óptima decreciente, el VAN, la vida de mina y el flujo de caja. El optimizador exacto es la autoridad; encima, dos modelos pequeños entrenados offline (PyTorch → ONNX) corren en vivo vía onnxruntime-web — un surrogate que reproduce la trayectoria al instante para barridos de sliders, y un guardia fuera de distribución — pero son para velocidad y sanidad, nunca para mejorar la respuesta. Un workbench de diez pestañas reacciona a un selector de casos y sliders en vivo, con las ecuaciones gobernantes en pantalla.'

businessContext: 'Cut-off strategy directly moves the NPV of an operation, and the counter-intuitive part — that you should mine at a higher cut-off early and let it decline, and that the binding stage decides the whole schedule — is exactly where value is left on the table. A studio that makes the trajectory and its binding constraint visible, and lets you sweep prices, costs and capacities and watch the NPV respond, turns Lane''s theory from a formula into an intuition you can build and check.'
businessContextEs: 'La estrategia de ley de corte mueve directamente el VAN de una operación, y la parte contra-intuitiva — que conviene extraer a una ley de corte más alta al inicio y dejarla decrecer, y que la etapa que limita decide todo el programa — es justo donde se deja valor sobre la mesa. Un estudio que hace visible la trayectoria y su restricción activa, y que deja barrer precios, costos y capacidades viendo responder el VAN, convierte la teoría de Lane de una fórmula en una intuición que puedes construir y verificar.'
strategicValue: 'CutoffGrade Studio is a faithful, auditable implementation of a classic optimization method — not a black box and not a "novel AI" claim. It shows the exact Lane optimizer against a best-constant baseline and closed-form oracles, so the ~2.6% NPV uplift it finds (when a processing stage binds; zero when the mine is the limit, exactly as theory predicts) is a provable result rather than an assertion. The learned layer is honest about being speed-only, the base case is openly synthetic, and the repo even discloses two small divergences from textbook Lane — the kind of transparency that makes an economics tool trustworthy.'
strategicValueEs: 'CutoffGrade Studio es una implementación fiel y auditable de un método clásico de optimización — no una caja negra ni un reclamo de "IA novedosa". Muestra el optimizador exacto de Lane contra una línea base de mejor-constante y oráculos de forma cerrada, así que el ~2.6% de uplift de VAN que encuentra (cuando una etapa de proceso limita; cero cuando la mina es el límite, exactamente como predice la teoría) es un resultado demostrable en vez de una afirmación. La capa aprendida es honesta sobre ser solo-velocidad, el caso base es abiertamente sintético, y el repo incluso revela dos pequeñas divergencias del Lane de texto — el tipo de transparencia que hace confiable a una herramienta de economía.'

kpis:
  - label: 'Cut-off as a trajectory'
    labelEs: 'Corte como trayectoria'
    baseline: 'A single break-even cut-off'
    baselineEs: 'Una ley de corte de break-even única'
    result: 'The NPV-maximising declining trajectory + its binding stage'
    resultEs: 'La trayectoria decreciente que maximiza el VAN + su etapa limitante'
    impact: 'See where value is left on the table'
    impactEs: 'Ver dónde se deja valor sobre la mesa'
  - label: 'Provable, not asserted'
    labelEs: 'Demostrable, no afirmado'
    baseline: 'Spreadsheet / black box'
    baselineEs: 'Planilla / caja negra'
    result: 'Exact Lane vs best-constant + oracles; ~2.6% NPV uplift when a stage binds'
    resultEs: 'Lane exacto vs mejor-constante + oráculos; ~2.6% uplift de VAN cuando una etapa limita'
    impact: 'The result is auditable end to end'
    impactEs: 'El resultado es auditable de extremo a extremo'
  - label: 'The AI''s role'
    labelEs: 'El rol de la IA'
    baseline: '"AI improves the plan"'
    baselineEs: '"La IA mejora el plan"'
    result: 'Learned surrogate = instant sweeps; exact optimizer is the authority'
    resultEs: 'Surrogate aprendido = barridos instantáneos; el optimizador exacto es la autoridad'
    impact: 'Honest: the model is for speed, not accuracy'
    impactEs: 'Honesto: el modelo es para velocidad, no para exactitud'

metrics:
  - label: 'Method'
    labelEs: 'Método'
    value: 'Lane: 6 characteristic cut-offs + Dagdelen medians + year-by-year NPV fixed point'
    valueEs: 'Lane: 6 leyes de corte características + medianas de Dagdelen + punto fijo de VAN año a año'
  - label: 'Model ladder'
    labelEs: 'Escalera de modelos'
    value: 'Exact optimizer (authority) + best-constant + 2 closed-form oracles + learned surrogate + OOD guard'
    valueEs: 'Optimizador exacto (autoridad) + mejor-constante + 2 oráculos de forma cerrada + surrogate aprendido + guardia OOD'
  - label: 'Learned models (ONNX, live)'
    labelEs: 'Modelos aprendidos (ONNX, en vivo)'
    value: 'cutoff-surrogate + scenario-OOD, served client-side (speed / guard only)'
    valueEs: 'cutoff-surrogate + scenario-OOD, servidos en cliente (solo velocidad / guardia)'
  - label: 'Data'
    labelEs: 'Datos'
    value: '100% synthetic porphyry-copper base case, openly labelled'
    valueEs: '100% caso base porphyry-copper sintético, etiquetado abiertamente'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'Vite + React 19 + TS · uPlot · KaTeX · onnxruntime-web · static (GitHub Pages)'
    valueEs: 'Vite + React 19 + TS · uPlot · KaTeX · onnxruntime-web · estático (GitHub Pages)'

stack: [TypeScript, React, Vite, onnxruntime-web, KaTeX, PyTorch]
---

## The cut-off is a trajectory, not a number

CutoffGrade Studio computes **Lane's optimal cut-off grade** — the NPV-maximising cut-off that *declines* over a mine's life and is set by whichever stage (mine, mill or market) is the binding constraint. Feed a grade-tonnage curve plus prices, costs and three stage capacities, and it returns the trajectory, NPV, mine life and cashflow, live in the browser. Live at [cutoffgrade.fasl-work.com](https://cutoffgrade.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## Exact method as the authority

The engine implements Lane's method exactly — the six characteristic cut-offs, the balancing (Dagdelen) medians, and a year-by-year NPV simulator run to a fixed point — and shows it against a best-constant baseline and closed-form oracles, so the **~2.6% NPV uplift** it finds when a processing stage binds (and **0%** when the mine is the limit, exactly as theory predicts) is provable, not asserted. The governing equations are on screen; the App is a real ten-tab workbench that reacts to a case selector and live sliders.

## Honest about the AI, and the data

Two small models run live via **onnxruntime-web** — a surrogate that reproduces the trajectory instantly for slider sweeps and an out-of-distribution guard — but they are **for speed and sanity, not to improve the answer** (the exact optimizer is always the authority). The base case is **100% synthetic** (a porphyry-copper example, openly labelled), and the repo discloses its two small divergences from textbook Lane. No real mine data, no "novel-beyond-SOTA" claim — a faithful classic method, made legible.

[Live demo](https://cutoffgrade.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_CutoffGrade)
