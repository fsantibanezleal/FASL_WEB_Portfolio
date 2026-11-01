---
title: 'DinHot, Holography Studio for Programmable Light Fields'
titleEs: 'DinHot, Estudio Holográfico de Campos de Luz Programables'
slug: holographic-tweezers
date: 2010-04-01
category: computational-optics
family: optics
excerpt: 'A browser-based workbench for comparing optical-trap designs under stated assumptions. DinHot makes the case, method, modeled device and modeled output reviewable together.'
excerptEs: 'Un espacio de trabajo en el navegador para comparar diseños de trampas ópticas bajo supuestos explícitos. DinHot permite revisar en conjunto el caso, el método, el dispositivo modelado y el resultado modelado.'
icon: tabler:focus-2
tags: [optics, holography, product-engineering, simulation, browser-workbench]
proprietary: false
featured: false
assetPatterns: [dinhot_00_cover, dinhot_pain, dinhot_situation, dinhot_architecture, dinhot_method]
github: 'https://github.com/fsantibanezleal/CEFOP_DinHot'
demo: 'https://dinhot.fasl-work.com'
website: 'https://dinhot.fasl-work.com'

challenge: 'Comparing optical-trap designs is difficult when cases, device assumptions and measurement criteria vary between runs. The decision is how a design performs under a stated setup, what trade-offs appear, and which results are modeled rather than measured on physical equipment.'
challengeEs: 'Comparar diseños de trampas ópticas es difícil cuando los casos, los supuestos del dispositivo y los criterios de medición varían entre ejecuciones. La decisión es cómo se comporta un diseño bajo una configuración explícita, qué compensaciones aparecen y qué resultados son modelados en lugar de medidos en equipos físicos.'

approach: 'DinHot organizes a case, setup, method, seed and metric into a repeatable review workflow. The released product contains 24 methods and 14 defined synthetic cases. Python builds and checks the versioned evidence; the static browser workbench replays those artifacts and re-runs only the methods and cases admitted by its live-lane gate. It models the device and camera feedback; it does not control an SLM or camera.'
approachEs: 'DinHot organiza cada caso, configuración, método, semilla y métrica en un flujo de revisión reproducible. La versión publicada contiene 24 métodos y 14 casos sintéticos definidos. Python construye y valida la evidencia versionada; el espacio de trabajo estático en el navegador reproduce esos artefactos y vuelve a ejecutar solo los métodos y casos admitidos por la compuerta del carril en vivo. Modela el dispositivo y la retroalimentación de cámara; no controla un SLM ni una cámara.'

businessContext: 'For teams assessing programmable-light designs, choosing an algorithm is only part of the work. They also need to see how setup assumptions, device limits and measurement criteria shape the result. DinHot gives that review a common case and comparison basis while keeping synthetic output distinct from evidence collected on a physical instrument.'
businessContextEs: 'Para los equipos que evalúan diseños de luz programable, elegir un algoritmo es solo una parte del trabajo. También necesitan ver cómo los supuestos de configuración, los límites del dispositivo y los criterios de medición afectan el resultado. DinHot ofrece una base común de casos y comparación, y mantiene separados los resultados sintéticos de la evidencia obtenida en un instrumento físico.'
strategicValue: 'This is applied product engineering around a technical decision: state the scope, keep the execution lanes distinct, make the comparison criteria visible and surface unsupported cases instead of smoothing them over. The 0.02.001 release defines 14 synthetic cases; 13 are baked and C11 is refused by contract 1. Those counts describe product coverage, not an operational or laboratory outcome.'
strategicValueEs: 'Es ingeniería de producto aplicada a una decisión técnica: declarar el alcance, mantener separados los carriles de ejecución, hacer visibles los criterios de comparación y mostrar los casos no admitidos en vez de ocultarlos. La versión 0.02.001 define 14 casos sintéticos; 13 se procesan y C11 se rechaza mediante el contrato 1. Estas cifras describen la cobertura del producto, no un resultado operacional ni de laboratorio.'

kpis: []

metrics:
  - label: 'Released version'
    labelEs: 'Versión publicada'
    value: '0.02.001'
    valueEs: '0.02.001'
  - label: 'Methods in comparison'
    labelEs: 'Métodos en comparación'
    value: '24, under common tasks, seeds and metrics'
    valueEs: '24, bajo tareas, semillas y métricas comunes'
  - label: 'Defined case coverage'
    labelEs: 'Cobertura de casos definidos'
    value: '14 synthetic cases; 13 baked, C11 refused by contract 1'
    valueEs: '14 casos sintéticos; 13 procesados, C11 rechazado por el contrato 1'
  - label: 'Execution model'
    labelEs: 'Modelo de ejecución'
    value: 'Offline bake, static replay and gated browser execution'
    valueEs: 'Procesamiento fuera de línea, reproducción estática y ejecución acotada en el navegador'

stack: [Python, NumPy, TypeScript, React, 'Web Workers', Vite]
---

## A workbench for review

DinHot is a browser-based simulator and evaluator for optical trap arrays and shaped light fields. The current product grew from DinHotSys, a C++ desktop tool developed at CEFOP. The 0.02.001 release turns that work into a versioned product workflow with a static browser interface, a Python pipeline and a TypeScript engine for the cases and methods that pass the live-lane gate.

The product is designed to make the review conditions visible: a named case, an optical setup, a method, a seed and the metrics used to compare the result. The diagram gallery shows the operating context, the proposed modeled bench, the application flow, the execution lanes and the method scope.

## What the release can support

The released case set has 14 synthetic definitions. Thirteen cases are baked in 0.02.001; C11 is refused by contract 1. Absolute values are outputs of the stated model, not measurements from a calibrated instrument. The browser re-runs only the eligible cases and methods. Other versioned results are replayed from committed artifacts.

This boundary matters in a management review: a comparison is useful only when its scope and evidence source are clear. DinHot exposes those conditions rather than presenting a simulated result as a laboratory result or a customer outcome.

## Product boundary

DinHot is not a hardware driver. It does not communicate with a spatial light modulator or a physical camera. The device response and camera feedback are modeled. Its value today is an inspectable, repeatable software workflow for evaluating design choices before any claim about physical operation.

[Open the live workbench](https://dinhot.fasl-work.com) · [View the source repository](https://github.com/fsantibanezleal/CEFOP_DinHot)
