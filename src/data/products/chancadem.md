---
title: 'ChancaDEM — Crusher-Comminution Studio (Population-Balance Engine)'
titleEs: 'ChancaDEM — Estudio de Chancado y Conminución (Motor de Balance Poblacional)'
slug: chancadem
date: 2026-07-15
category: mining-optimization
family: faena
excerpt: 'An in-browser crusher-comminution studio: you set the machine, closed-side setting, eccentric throw and speed and the feed gradation, and a pure-TypeScript closed-form engine (Whiten population balance + Evertsson capacity + Bond power) computes the product gradation, throughput and power in sub-millisecond. Despite the name it does NOT run DEM: the 3D chamber is a kinematic animation. The secondary-cone lane is calibrated against 10 published HP500 surveys (Rocha et al. 2024), with a leave-one-out cross-validation that includes negative controls.'
excerptEs: 'Un estudio de chancado y conminución en el navegador: fijas la máquina, el closed-side setting, el throw excéntrico y la velocidad y la gradación de alimentación, y un motor de forma cerrada en TypeScript puro (balance poblacional de Whiten + capacidad de Evertsson + potencia de Bond) calcula la gradación de producto, el tonelaje y la potencia en sub-milisegundo. Pese al nombre NO corre DEM: la cámara 3D es una animación cinemática. La vía de cono secundario está calibrada contra 10 surveys HP500 publicados (Rocha et al. 2024), con una validación cruzada leave-one-out que incluye controles negativos.'
icon: tabler:hammer
tags: [mining-optimization, comminution, crushing, population-balance, whiten, evertsson, bond, cone-crusher, onnx, mining]
proprietary: false
featured: false
assetPatterns: [chancadem]
github: 'https://github.com/fsantibanezleal/CAOS_ChancaDEM'
demo: 'https://chancadem.fasl-work.com'
website: 'https://chancadem.fasl-work.com'

challenge: 'A crusher turns coarse feed into a controlled product size, and the operating levers (closed-side setting, eccentric throw, speed, feed gradation) trade product fineness against throughput and power draw in ways that are not intuitive. A full particle-scale DEM simulation captures the physics but takes hours per run, far too slow to explore a setting or to sit behind an interactive tool. The practical need is a fast, physically-grounded model that reproduces the correct trends (finer setting gives finer product; capacity peaks at an optimal speed) and can be checked against real industrial survey data, without pretending to be a particle solve it is not.'
challengeEs: 'Un chancador convierte alimentación gruesa en un producto de tamaño controlado, y las palancas de operación (closed-side setting, throw excéntrico, velocidad, gradación de alimentación) intercambian finura de producto contra tonelaje y potencia consumida de maneras poco intuitivas. Una simulación DEM a escala de partícula captura la física pero toma horas por corrida, demasiado lento para explorar un ajuste o para estar detrás de una herramienta interactiva. La necesidad práctica es un modelo rápido y con base física que reproduzca las tendencias correctas (un ajuste más fino da un producto más fino; la capacidad tiene un máximo en una velocidad óptima) y que se pueda contrastar contra datos reales de surveys industriales, sin pretender ser una resolución de partículas que no es.'

approach: 'ChancaDEM is a browser studio built on a pure-TypeScript closed-form comminution engine that runs in sub-millisecond, so despite the name it is a population-balance model, not a DEM solve. You set the machine (gyratory, jaw, secondary or tertiary cone, short-head), the closed-side setting, eccentric throw and speed, and the feed gradation, and the engine computes the product gradation, throughput and power over a 28-class root-2 sieve grid. The chain: a Whiten classification-breakage population balance solved live by LU (p = (I-C)(I-B*C)^-1 * f, never forming the inverse), a JKMRC t10 energy-fineness law (Narayanan and Whiten 1988), an Austin, Klimpel and Luckie 1984 appearance function, an Evertsson reduced-form flow capacity with its unimodal speed hump, and Bond 1952 power, plus nip-angle geometry and regime detection. A calibrated lane fits the secondary cone to 10 published HP500 surveys. Two ONNX models run in-browser: an MLP surrogate that emulates the engine, and a denoising autoencoder over the product-gradation signature that acts as a surrogate-extrapolation guard. The 3D chamber view is an explicitly kinematic animation driven by the engine gradation, not a particle solve. Everything is client-side, static on GitHub Pages.'
approachEs: 'ChancaDEM es un estudio de navegador construido sobre un motor de conminución de forma cerrada en TypeScript puro que corre en sub-milisegundo, así que pese al nombre es un modelo de balance poblacional, no una resolución DEM. Fijas la máquina (giratorio, mandíbula, cono secundario o terciario, short-head), el closed-side setting, el throw excéntrico y la velocidad, y la gradación de alimentación, y el motor calcula la gradación de producto, el tonelaje y la potencia sobre una grilla de tamiz de 28 clases raíz-2. La cadena: un balance poblacional de clasificación-ruptura de Whiten resuelto en vivo por LU (p = (I-C)(I-B*C)^-1 * f, sin formar nunca la inversa), una ley t10 de energía-finura del JKMRC (Narayanan y Whiten 1988), una función de aparición de Austin, Klimpel y Luckie 1984, una capacidad de flujo de Evertsson en forma reducida con su joroba unimodal de velocidad, y potencia de Bond 1952, más geometría de ángulo de mordida y detección de régimen. Una vía calibrada ajusta el cono secundario a 10 surveys HP500 publicados. Dos modelos ONNX corren en el navegador: un surrogate MLP que emula el motor, y un autoencoder de denoising sobre la firma de gradación de producto que actúa como guardia de extrapolación del surrogate. La vista 3D de la cámara es una animación explícitamente cinemática guiada por la gradación del motor, no una resolución de partículas. Todo del lado del cliente, estático en GitHub Pages.'

businessContext: 'Comminution is where a concentrator spends most of its energy, and the crusher circuit sets the feed to everything downstream. Being able to explore the effect of a closed-side setting or a throw change on product size, throughput and power, in real time and grounded in the accepted model families (Whiten, Evertsson, Bond), is directly useful for teaching, scoping and screening operating changes before they touch a plant. The value is a fast engine that reproduces the correct physical trends and, on the one machine where public survey data exists, is calibrated and cross-validated against it with negative controls, while being explicit that it is a cheap closed-form model rather than a particle simulation or a plant twin.'
businessContextEs: 'La conminución es donde una planta concentradora gasta la mayor parte de su energía, y el circuito de chancado fija la alimentación a todo lo que viene aguas abajo. Poder explorar el efecto de un closed-side setting o un cambio de throw sobre el tamaño de producto, el tonelaje y la potencia, en tiempo real y con base en las familias de modelos aceptadas (Whiten, Evertsson, Bond), es directamente útil para docencia, evaluación y filtrado de cambios de operación antes de que toquen una planta. El valor es un motor rápido que reproduce las tendencias físicas correctas y, en la única máquina donde existen datos públicos de surveys, está calibrado y validado de forma cruzada contra ellos con controles negativos, siendo explícito en que es un modelo barato de forma cerrada y no una simulación de partículas ni un gemelo de planta.'
strategicValue: 'ChancaDEM demonstrates a fast, physically-grounded comminution engine (a real Whiten population balance solved live by LU, plus Evertsson capacity and Bond power) running entirely client-side, and it is disciplined about what it is not. Despite the name it does NOT run DEM: the 3D chamber is a kinematic animation, the offline 2-D DEM tracer is unwired, and the app states this up front. Only the secondary cone has a calibrated lane, fitted to 10 published HP500 surveys at Minas Rio credited to Rocha et al. 2024 (CC BY), not to any campaign of the author. The rigor shows in a leave-one-out cross-validation over those 10 surveys with negative controls: throughput MAPE 12.09 percent, beating both a constant-mean control (18.29 percent) and a label-shuffle control (25.04 percent), a real if modest signal on a small sample. The learned autoencoder is honestly a surrogate-extrapolation guard, not a plant anomaly detector, since it is trained on the engine own sweep. Publishing the optimism gap and the control baselines is the reusable pattern.'
strategicValueEs: 'ChancaDEM demuestra un motor de conminución rápido y con base física (un balance poblacional de Whiten real resuelto en vivo por LU, más capacidad de Evertsson y potencia de Bond) corriendo enteramente del lado del cliente, y es disciplinado sobre lo que no es. Pese al nombre NO corre DEM: la cámara 3D es una animación cinemática, el tracer DEM 2-D offline no está conectado, y la app lo declara de entrada. Solo el cono secundario tiene una vía calibrada, ajustada a 10 surveys HP500 publicados en Minas Rio acreditados a Rocha et al. 2024 (CC BY), no a ninguna campaña del autor. El rigor se ve en una validación cruzada leave-one-out sobre esos 10 surveys con controles negativos: MAPE de tonelaje de 12,09 por ciento, superando tanto a un control de media constante (18,29 por ciento) como a un control de etiquetas barajadas (25,04 por ciento), una señal real aunque modesta en una muestra pequeña. El autoencoder aprendido es honestamente una guardia de extrapolación del surrogate, no un detector de anomalías de planta, porque se entrena sobre el propio barrido del motor. Publicar la brecha de optimismo y las bases de control es el patrón reutilizable.'

kpis:
  - label: 'Not DEM, stated up front'
    labelEs: 'No es DEM, declarado de entrada'
    baseline: 'A name that implies a particle simulation'
    baselineEs: 'Un nombre que sugiere una simulación de partículas'
    result: 'A closed-form Whiten population balance solved live by LU in sub-millisecond; the 3D chamber is a kinematic animation'
    resultEs: 'Un balance poblacional de Whiten de forma cerrada resuelto en vivo por LU en sub-milisegundo; la cámara 3D es una animación cinemática'
    impact: 'Interactive exploration without a hours-long particle solve, and no DEM claim'
    impactEs: 'Exploración interactiva sin una resolución de partículas de horas, y sin afirmar DEM'
  - label: 'Calibrated against real surveys'
    labelEs: 'Calibrado contra surveys reales'
    baseline: 'Illustrative constants, no ground truth'
    baselineEs: 'Constantes ilustrativas, sin ground truth'
    result: '10 published HP500 surveys (Rocha et al. 2024, CC BY, Minas Rio); leave-one-out throughput MAPE 12.09%'
    resultEs: '10 surveys HP500 publicados (Rocha et al. 2024, CC BY, Minas Rio); MAPE de tonelaje leave-one-out 12,09%'
    impact: 'Credited to the paper, not to the author; only the secondary cone has a calibrated lane'
    impactEs: 'Acreditado al paper, no al autor; solo el cono secundario tiene vía calibrada'
  - label: 'Validation with negative controls'
    labelEs: 'Validación con controles negativos'
    baseline: 'A single held-out score'
    baselineEs: 'Un solo puntaje held-out'
    result: 'LOO 12.09% beats a constant-mean control (18.29%) and a label-shuffle control (25.04%)'
    resultEs: 'LOO 12,09% supera a un control de media constante (18,29%) y a un control de etiquetas barajadas (25,04%)'
    impact: 'A real signal, and the repo also shows the leaky (non-LOO) optimism gap'
    impactEs: 'Una señal real, y el repo también muestra la brecha de optimismo con fuga (no-LOO)'
  - label: 'Surrogate honesty'
    labelEs: 'Honestidad del surrogate'
    baseline: 'A plant anomaly detector claim'
    baselineEs: 'Una afirmación de detector de anomalías de planta'
    result: 'ONNX surrogate emulates the engine at R2 0.995 (P80) / 0.998 (t/h); the AE is a surrogate-extrapolation guard'
    resultEs: 'El surrogate ONNX emula el motor en R2 0,995 (P80) / 0,998 (t/h); el AE es una guardia de extrapolación del surrogate'
    impact: 'Fidelity is to the engine, not to a plant; the AE flags off-manifold queries, not plant faults'
    impactEs: 'La fidelidad es al motor, no a una planta; el AE marca consultas fuera del manifold, no fallas de planta'

metrics:
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'Closed-form (NOT DEM): Whiten population balance solved live by LU over a 28-class root-2 sieve grid + JKMRC t10 + Austin appearance + Evertsson capacity + Bond power'
    valueEs: 'Forma cerrada (NO DEM): balance poblacional de Whiten resuelto en vivo por LU sobre una grilla de tamiz de 28 clases raíz-2 + t10 del JKMRC + aparición de Austin + capacidad de Evertsson + potencia de Bond'
  - label: 'Machines'
    labelEs: 'Máquinas'
    value: '5 types (gyratory, jaw, secondary/tertiary cone, short-head); only the secondary cone has a calibrated lane, the rest are illustrative'
    valueEs: '5 tipos (giratorio, mandíbula, cono secundario/terciario, short-head); solo el cono secundario tiene vía calibrada, el resto es ilustrativo'
  - label: 'Real data'
    labelEs: 'Datos reales'
    value: '10 industrial HP500 secondary-cone surveys, Minas Rio (Anglo American), itabirite iron ore; transcribed from Rocha et al., Minerals 2024, DOI 10.3390/min14090919, CC BY (not the author own campaign)'
    valueEs: '10 surveys industriales de cono secundario HP500, Minas Rio (Anglo American), mineral de hierro itabirita; transcritos de Rocha et al., Minerals 2024, DOI 10.3390/min14090919, CC BY (no una campaña del autor)'
  - label: 'Real-data validation'
    labelEs: 'Validación con datos reales'
    value: 'Leave-one-out ridge CV over 10 surveys: throughput MAPE 12.09% vs constant-mean 18.29% and label-shuffle 25.04%; 80% throughput interval empirical coverage 0.90 (n=10, coarse)'
    valueEs: 'CV ridge leave-one-out sobre 10 surveys: MAPE de tonelaje 12,09% vs media constante 18,29% y etiquetas barajadas 25,04%; cobertura empírica del intervalo de tonelaje al 80% de 0,90 (n=10, gruesa)'
  - label: 'Learned tier (ONNX)'
    labelEs: 'Capa aprendida (ONNX)'
    value: 'MLP surrogate of the engine (R2 0.995 P80 / 0.998 t/h on an independent LHS draw, monotone-vs-CSS gate) + denoising AE as a surrogate-extrapolation guard, not a plant anomaly detector'
    valueEs: 'Surrogate MLP del motor (R2 0,995 P80 / 0,998 t/h en un sorteo LHS independiente, compuerta monotona-vs-CSS) + AE de denoising como guardia de extrapolación del surrogate, no detector de anomalías de planta'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: '100% in-browser: TypeScript engine + three.js kinematic chamber + onnxruntime-web; 15 Python + 15 TS tests; static GitHub Pages, no backend'
    valueEs: '100% en navegador: motor TypeScript + cámara cinemática three.js + onnxruntime-web; 15 tests Python + 15 TS; GitHub Pages estático, sin backend'

stack: [TypeScript, React, Vite, 'three.js', ONNX, onnxruntime-web, PyTorch, uPlot, KaTeX]
---

## A fast comminution engine, and it is not DEM

ChancaDEM is an in-browser **crusher-comminution studio**. You set the machine, closed-side setting, eccentric throw and speed and the feed gradation, and a pure-TypeScript **closed-form** engine computes the product gradation, throughput and power in sub-millisecond. Despite the name it does **not** run DEM: the 3D chamber is a kinematic animation, the offline 2-D DEM tracer is unwired and unbaked, and the app says so on its Introduction page. Live at [chancadem.fasl-work.com](https://chancadem.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## The model chain

A **Whiten** classification-breakage population balance solved live by LU (p = (I-C)(I-B*C)^-1 * f, never forming the inverse) over a 28-class root-2 sieve grid, a **JKMRC t10** energy-fineness law (Narayanan and Whiten 1988), an **Austin, Klimpel and Luckie 1984** appearance function, an **Evertsson** reduced-form flow capacity with its unimodal speed hump, and **Bond 1952** power, plus nip-angle geometry and regime detection (choke / trickle / pass-through). Two ONNX models run in-browser: an MLP surrogate that emulates the engine, and a denoising autoencoder over the product-gradation signature that acts as a **surrogate-extrapolation guard** (high score means the query is off the surrogate training manifold), not a plant anomaly detector, since it is trained on the engine own sweep.

## The data, stated plainly

Only the **secondary cone** has a calibrated lane. It is fitted to **10 published HP500 surveys** of a Metso HP500 secondary cone at Minas Rio (Anglo American), crushing itabirite iron ore, transcribed from **Rocha et al., Minerals 2024 (DOI 10.3390/min14090919, CC BY)**, not from any campaign of the author. Two caveats travel with it: the feed is reconstructed from measured f80 via a Rosin-Rammler band (the paper PSD curves are figure-only), and the real-lane power is a current-based estimate, not a dynamometer reading. Jaw, gyratory, tertiary and short-head use illustrative constants that reproduce the correct trends, not any plant absolute numbers.

## Validation with negative controls

The rigor is in a **leave-one-out** ridge cross-validation over the 10 real surveys, with negative controls. Strict LOO throughput **MAPE 12.09 percent** beats both a constant-mean control (**18.29 percent**) and a label-shuffle control (**25.04 percent**), a real if modest signal on n=10, and the repo also stores the leaky non-LOO block to show the optimism gap. The 80 percent throughput interval reaches 0.90 empirical coverage against a 0.80 nominal (n=10 makes this coarse, and the repo says so). The ONNX surrogate emulates the **engine** at R-squared 0.995 (P80) and 0.998 (throughput) on an independent LHS draw with a monotone-versus-CSS gate: that is fidelity to the engine, never accuracy against a plant. A post-release physics correction is shipped, so eccentric throw now coarsens the product through the classification window (open-side = closed-side + throw) instead of fining it through specific energy.

[Live demo](https://chancadem.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_ChancaDEM)
