---
title: 'PINN-Lab — A Runnable Catalogue of Physics-Informed Neural Networks'
titleEs: 'PINN-Lab — Un Catálogo Ejecutable de Redes Neuronales Informadas por la Física'
slug: pinnlab
date: 2026-06-25
category: scientific-ml
excerpt: 'A live catalogue of 19 Physics-Informed Neural Network cases — each trained offline (DeepXDE → ONNX), validated against an analytic, benchmark, or real-data anchor, and re-inferred live in the browser: move a physical parameter and watch the trained network re-solve the PDE.'
excerptEs: 'Un catálogo en vivo de 19 casos de Redes Neuronales Informadas por la Física — cada uno entrenado offline (DeepXDE → ONNX), validado contra un anclaje analítico, de benchmark o de datos reales, y re-inferido en vivo en el navegador: mueve un parámetro físico y mira a la red re-resolver la EDP.'
icon: tabler:math-function
tags: [scientific-ml, pinn, deepxde, onnx, pde, inverse-problems, operator-learning]
proprietary: false
featured: false
assetPatterns: [pinnlab, pinn]
github: 'https://github.com/fsantibanezleal/CAOS_PINNLAB'
demo: 'https://pinnlab.fasl-work.com'
website: 'https://pinnlab.fasl-work.com'

challenge: 'Physics-Informed Neural Networks are widely hyped and rarely shown honestly: most demos are a single forward problem on a clean equation, with no anchor to say whether the answer is right, no inverse or uncertainty problems, and nothing you can actually run. The interesting, honest questions — where do PINNs help, where do they struggle, and how close are they to a trusted reference — go unanswered.'
challengeEs: 'Las Redes Neuronales Informadas por la Física están muy sobrevaloradas y rara vez se muestran con honestidad: la mayoría de los demos son un único problema directo sobre una ecuación limpia, sin un anclaje que diga si la respuesta es correcta, sin problemas inversos o de incertidumbre, y sin nada que puedas correr. Las preguntas interesantes y honestas — dónde ayudan las PINNs, dónde sufren y qué tan cerca están de una referencia confiable — quedan sin responder.'

approach: 'PINN-Lab is a method catalogue and per-case workbench of 19 cases, built as two worlds joined by an artifact contract: a heavy offline Python pipeline (preprocess → train with DeepXDE/PyTorch → validate against an analytic / benchmark / real-data anchor → export to ONNX, opset 18, with parity < 1e-4) and a light static web app that never recomputes the physics. 18 of the 19 cases ship their ONNX and re-evaluate live in the browser via onnxruntime-web — because the physical knob is a network input, one trained net drives a whole parameter family with a continuous live sweep. It exercises the real method ladder: forward PDE solving, inverse problems (parameter and field recovery), uncertainty quantification (Bayesian / ensemble), and operator learning (FNO). A measured lane gate classifies each case live vs precompute from real numbers (ONNX size, inference time, trace size).'
approachEs: 'PINN-Lab es un catálogo de métodos y un workbench por caso de 19 casos, construido como dos mundos unidos por un contrato de artefactos: un pipeline pesado offline en Python (preprocesar → entrenar con DeepXDE/PyTorch → validar contra un anclaje analítico / de benchmark / de datos reales → exportar a ONNX, opset 18, con paridad < 1e-4) y una app web liviana y estática que nunca recomputa la física. 18 de los 19 casos publican su ONNX y se re-evalúan en vivo en el navegador vía onnxruntime-web — como el parámetro físico es una entrada de la red, una sola red entrenada impulsa toda una familia de parámetros con un barrido continuo en vivo. Ejercita la escalera real de métodos: resolución directa de EDPs, problemas inversos (recuperación de parámetros y de campos), cuantificación de incertidumbre (Bayesiana / ensemble) y aprendizaje de operadores (FNO). Una compuerta de carril medida clasifica cada caso vivo vs precomputado con números reales (tamaño ONNX, tiempo de inferencia, tamaño de traza).'

businessContext: 'Scientific machine learning is moving from papers into engineering practice, but adoption needs an honest map: which problem shapes (forward, inverse, parametric, operator) PINNs handle well, how they compare to a trusted classical anchor, and where their known failure modes (spectral bias, stiff regimes) bite. PINN-Lab is that map made runnable — a teaching and decision instrument rather than a single cherry-picked result.'
businessContextEs: 'El machine learning científico está pasando de los papers a la práctica de ingeniería, pero su adopción necesita un mapa honesto: qué formas de problema (directo, inverso, paramétrico, operador) manejan bien las PINNs, cómo se comparan con un anclaje clásico confiable y dónde muerden sus modos de falla conocidos (sesgo espectral, regímenes rígidos). PINN-Lab es ese mapa hecho ejecutable — un instrumento de enseñanza y decisión, no un único resultado escogido a dedo.'

strategicValue: 'PINN-Lab demonstrates the full scientific-ML method ladder — forward, inverse, UQ, operator learning — shipped as a reproducible, browser-runnable catalogue with measured benchmarks (ONNX parity < 1e-4 everywhere; relative-L2 published per case, including the deliberately-imperfect ones). It is built on a clean two-world architecture (offline train/export, online inference) and is honest about scope: it is not an FEM replacement, most cases are synthetic by design at 0.x, and accuracy is reported as-is. That honesty is the value — it is a credible reference for when PINNs are the right tool and when a classical solver wins.'
strategicValueEs: 'PINN-Lab demuestra la escalera completa de métodos de ML científico — directo, inverso, UQ, aprendizaje de operadores — entregada como un catálogo reproducible y ejecutable en el navegador con benchmarks medidos (paridad ONNX < 1e-4 en todos; L2 relativo publicado por caso, incluidos los deliberadamente imperfectos). Está construido sobre una arquitectura limpia de dos mundos (entrenar/exportar offline, inferir online) y es honesto sobre su alcance: no reemplaza al FEM, la mayoría de los casos son sintéticos por diseño en 0.x, y la precisión se reporta tal cual. Esa honestidad es el valor — es una referencia creíble de cuándo las PINNs son la herramienta correcta y cuándo gana un solver clásico.'

kpis:
  - label: 'Cases catalogued and shipped'
    labelEs: 'Casos catalogados y publicados'
    baseline: '1 anchor case (v0.02)'
    baselineEs: '1 caso ancla (v0.02)'
    result: '19 cases across 5 categories (v0.10)'
    resultEs: '19 casos en 5 categorías (v0.10)'
    impact: 'Full SOTA method ladder exercised end to end'
    impactEs: 'Escalera SOTA completa ejercitada de extremo a extremo'
  - label: 'Cases running live in-browser'
    labelEs: 'Casos corriendo en vivo en navegador'
    baseline: '0 (replay-only concept)'
    baselineEs: '0 (concepto solo-replay)'
    result: '18 / 19 live ONNX inference (1 replay)'
    resultEs: '18 / 19 inferencia ONNX en vivo (1 replay)'
    impact: 'Move a parameter, the network re-solves client-side'
    impactEs: 'Mueve un parámetro y la red re-resuelve en el cliente'
  - label: 'Real-data validation'
    labelEs: 'Validación con datos reales'
    baseline: 'All synthetic'
    baselineEs: 'Todo sintético'
    result: '1 case on real NOAA USCRN soil temps (held-out RMSE 1.03 °C)'
    resultEs: '1 caso con temperaturas de suelo reales NOAA USCRN (RMSE 1.03 °C)'
    impact: 'Inverse parameter recovery on genuine data, honestly labeled'
    impactEs: 'Recuperación inversa de parámetros en datos reales, etiquetada con honestidad'

metrics:
  - label: 'Cases'
    labelEs: 'Casos'
    value: '19 across 5 categories'
    valueEs: '19 en 5 categorías'
  - label: 'ONNX parity (PyTorch vs onnxruntime)'
    labelEs: 'Paridad ONNX (PyTorch vs onnxruntime)'
    value: '< 1e-4 everywhere'
    valueEs: '< 1e-4 en todos'
  - label: 'Clean-case relative-L2 (representative)'
    labelEs: 'L2 relativo en casos limpios (representativo)'
    value: 'Best ~0.03–0.08% (Poisson, Burgers); harder regimes up to ~1–2%'
    valueEs: 'Mejores ~0,03–0,08% (Poisson, Burgers); regímenes difíciles ~1–2%'
  - label: 'Known-limit cases (reported honestly)'
    labelEs: 'Casos de límite conocido (reportados con honestidad)'
    value: 'Helmholtz ~10% · Navier-cavity ~17% L2 (spectral bias, CPU lane)'
    valueEs: 'Helmholtz ~10% · Navier-cavity ~17% L2 (sesgo espectral, carril CPU)'
  - label: 'Operator learning (Darcy FNO)'
    labelEs: 'Aprendizaje de operadores (Darcy FNO)'
    value: '5.5% relative-L2 over 64 unseen coefficient fields'
    valueEs: '5,5% L2 relativo en 64 campos de coeficientes no vistos'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'DeepXDE/PyTorch → ONNX · onnxruntime-web · React 19 / Vite / TS · static · v0.10'
    valueEs: 'DeepXDE/PyTorch → ONNX · onnxruntime-web · React 19 / Vite / TS · estático · v0.10'

stack: [Python, DeepXDE, PyTorch, ONNX, onnxruntime-web, TypeScript, React, Vite, KaTeX, GitHub Pages]
---

## Train offline, re-solve live

PINN-Lab is a runnable catalogue of **19 Physics-Informed Neural Network cases**. Each is trained offline with DeepXDE/PyTorch, validated against an analytic, benchmark, or real-data anchor, and exported to ONNX — then the static web app loads that ONNX and **re-infers it live in the browser** (onnxruntime-web). Because the physical parameter is a network input, you move a slider and the trained network re-solves the PDE client-side, in real time. Live at [pinnlab.fasl-work.com](https://pinnlab.fasl-work.com).

## The full method ladder

It is not one forward problem — it exercises the real range of scientific ML: **forward** PDE solving, **inverse** problems (parameter and field recovery), **uncertainty quantification** (Bayesian / ensemble), and **operator learning** (a Fourier Neural Operator generalizing across coefficient fields). Nine SOTA method families appear (hard constraints, adaptive sampling, Fourier features, SIREN, loss weighting, domain decomposition, FNO, inverse recovery, ensemble UQ), each in a per-case workbench with an interactive field heatmap, a live slider, a per-variant error chart, and a bilingual write-up with the governing equations in KaTeX.

## Honest about accuracy and scope

Benchmarks are measured, not curated: ONNX parity is `< 1e-4` everywhere, and relative-L2 is published per case — including the cases that sit at known PINN limits (**Helmholtz ~10%, Navier-cavity ~17%, a soil-barrier case ~19%** from spectral bias and the CPU training lane). PINN-Lab is **not** an FEM/FVM replacement (a good classical solver beats a PINN on a single well-posed forward problem), **not** an industrial digital twin, and **not** trained on real industrial data — only one of the 19 cases (soil heat, NOAA USCRN) uses real measurements; the rest are analytic anchors or synthetic-illustrative reduced models, all labeled as such. It is deliberately a 0.x release while predominantly synthetic.

[Live demo](https://pinnlab.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_PINNLAB)
