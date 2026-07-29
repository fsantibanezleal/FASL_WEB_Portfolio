---
title: 'Fisura — Materials-Damage Vision Lab (Crack Detection to Engineering Units)'
titleEs: 'Fisura — Laboratorio de Visión de Daño en Materiales (De la Grieta a Unidades de Ingeniería)'
slug: fisura
date: 2026-07-16
category: computer-vision
family: labs
excerpt: 'A public research lab on seeing damage in built materials. One image of a concrete wall, pavement, masonry facade or industrial surface goes in; Fisura detects the damage (cracks, spalling, surface defects), quantifies it in engineering units (width, length, orientation, density, growth between inspections), and shows how every method family gets there on the same open cases with the same metrics. The ladder runs classical pipelines, learned SOTA segmentation, promptable foundation models and unsupervised anomaly detection, then measurement (pixel-to-mm calibrated width/length, change detection, 2D digital image correlation). Masks are never the end result: they are the input to engineering numbers. Offline heavy lane plus a browser live lane where the photo never leaves the device. Honest: it is a method-comparison lab, not a certified inspection tool, and the classical engine is real while the higher tiers land one vertical slice at a time.'
excerptEs: 'Un laboratorio público de investigación sobre ver daño en materiales construidos. Entra una imagen de un muro de hormigón, un pavimento, una fachada de albañilería o una superficie industrial; Fisura detecta el daño (grietas, descascaramiento, defectos de superficie), lo cuantifica en unidades de ingeniería (ancho, largo, orientación, densidad, crecimiento entre inspecciones), y muestra cómo llega cada familia de métodos sobre los mismos casos abiertos con las mismas métricas. La escalera corre pipelines clásicos, segmentación SOTA aprendida, modelos fundacionales promptables y detección de anomalías no supervisada, y luego medición (ancho/largo calibrado pixel-a-mm, detección de cambios, correlación de imágenes digital 2D). Las máscaras nunca son el resultado final: son la entrada a números de ingeniería. Lane pesado offline más un lane en vivo en el navegador donde la foto nunca sale del dispositivo. Honesto: es un laboratorio de comparación de métodos, no una herramienta de inspección certificada, y el motor clásico es real mientras las capas superiores llegan una rebanada vertical a la vez.'
icon: tabler:wall
tags: [computer-vision, crack-detection, materials, segmentation, foundation-models, anomaly-detection, dic, onnx, measurement]
proprietary: false
featured: false
assetPatterns: [fisura]
github: 'https://github.com/fsantibanezleal/CAOS_RES_Fisura'
demo: 'https://fisura.fasl-work.com'
website: 'https://fisura.fasl-work.com'

challenge: 'Damage inspection of concrete, pavement and masonry is mostly visual and mostly manual, and the useful question is not "is there a crack" but "how wide, how long, how oriented, and has it grown since last time". Computer-vision papers stop at a segmentation mask and a benchmark score; an inspector needs a number in millimetres with a stated method and a stated uncertainty. And the field is a zoo of method families (classical morphology, learned segmentation, foundation models, anomaly detection) that are almost never compared honestly on the same footing, so it is hard to know what actually earns its place.'
challengeEs: 'La inspección de daño en hormigón, pavimento y albañilería es mayormente visual y mayormente manual, y la pregunta útil no es "hay una grieta" sino "qué tan ancha, qué tan larga, con qué orientación, y creció desde la última vez". Los papers de visión por computador se detienen en una máscara de segmentación y un puntaje de benchmark; un inspector necesita un número en milímetros con un método declarado y una incertidumbre declarada. Y el campo es un zoológico de familias de métodos (morfología clásica, segmentación aprendida, modelos fundacionales, detección de anomalías) que casi nunca se comparan honestamente en igualdad de condiciones, así que es difícil saber qué gana su lugar de verdad.'

approach: 'Fisura runs one image through a full method ladder and reports each family on the same open cases with the same metrics. The classical engine is a staged S0 to S8 pipeline (illumination correction, adaptive thresholding, Hessian ridge filters, morphological path operators, minimal-path linking, skeleton geometry) with a documented L0 to L5 ladder and dual-tolerance evaluation. Above it, learned SOTA (encoder-decoder and transformer crack segmentation, patch classification, multi-class structural-damage models trained on open datasets), then beyond-SOTA (promptable foundation models and unsupervised industrial anomaly detection applied to surfaces). The measurement layer turns masks into engineering numbers: pixel-to-mm calibrated crack width and length, severity context from published guidance, change detection across inspection epochs, and 2D digital image correlation for vision-based deformation on specimen sequences. It ships as a reproducible offline pipeline (the heavy lane, artifacts plus manifests), a static replay web app over committed audited artifacts, and a browser live lane where a user photo is analysed client-side with the classical pipeline plus compact ONNX models, so no image leaves the browser. It is dataset-honest: full open datasets live outside the repo and are fetched by scripts; the repo commits only tiny contract-passing samples and license-checked compact artifacts.'
approachEs: 'Fisura corre una imagen por una escalera completa de métodos y reporta cada familia sobre los mismos casos abiertos con las mismas métricas. El motor clásico es un pipeline por etapas S0 a S8 (corrección de iluminación, umbralización adaptativa, filtros de cresta de Hessian, operadores de camino morfológicos, enlace por camino mínimo, geometría de esqueleto) con una escalera documentada L0 a L5 y evaluación de tolerancia dual. Encima, SOTA aprendido (segmentación de grietas encoder-decoder y transformer, clasificación por parches, modelos multi-clase de daño estructural entrenados en datasets abiertos), y luego más-allá-de-SOTA (modelos fundacionales promptables y detección de anomalías industrial no supervisada aplicada a superficies). La capa de medición convierte máscaras en números de ingeniería: ancho y largo de grieta calibrados pixel-a-mm, contexto de severidad desde guías publicadas, detección de cambios entre épocas de inspección, y correlación de imágenes digital 2D para deformación basada en visión sobre secuencias de probetas. Se entrega como un pipeline offline reproducible (el lane pesado, artefactos más manifiestos), una web de replay estática sobre artefactos versionados y auditados, y un lane en vivo en el navegador donde la foto del usuario se analiza del lado del cliente con el pipeline clásico más modelos ONNX compactos, así ninguna imagen sale del navegador. Es honesto con los datos: los datasets abiertos completos viven fuera del repo y los bajan scripts; el repo versiona solo muestras diminutas que pasan el contrato y artefactos compactos con licencia verificada.'

businessContext: 'Structural inspection at scale (bridges, dams, pavements, building facades, industrial plant) is expensive and inconsistent when done by eye. The value of a vision tool here is not a prettier mask, it is a defensible measurement: a crack width in millimetres, a growth rate between inspections, and a clear statement of which method produced it and how it was calibrated. Fisura is built as the honest comparison across the whole method zoo, so an engineer can see where classical morphology is enough, where learned segmentation earns its cost, and where a foundation model actually helps, instead of trusting one vendor benchmark.'
businessContextEs: 'La inspección estructural a escala (puentes, presas, pavimentos, fachadas, planta industrial) es cara e inconsistente cuando se hace a ojo. El valor de una herramienta de visión aquí no es una máscara más bonita, es una medición defendible: un ancho de grieta en milímetros, una tasa de crecimiento entre inspecciones, y una declaración clara de qué método la produjo y cómo se calibró. Fisura está construido como la comparación honesta a través de todo el zoológico de métodos, para que un ingeniero vea dónde la morfología clásica basta, dónde la segmentación aprendida justifica su costo, y dónde un modelo fundacional realmente ayuda, en vez de confiar en el benchmark de un solo proveedor.'

strategicValue: 'Fisura demonstrates a full classical-to-foundation method ladder for materials-damage vision, compared honestly on shared open cases, with the discipline that a mask is only ever an input to a calibrated engineering number, not the deliverable. It runs the heavy comparison offline and replays audited artifacts, plus a privacy-preserving in-browser live lane. It is a reusable pattern for method-honest computer vision in inspection: same cases, same metrics, accuracy and measurement reported separately, and the whole thing dataset-honest and reproducible. It is under active build-out, one vertical slice (code, tests, deep docs) at a time, and the app says so.'
strategicValueEs: 'Fisura demuestra una escalera completa de métodos, de clásico a fundacional, para visión de daño en materiales, comparada honestamente sobre casos abiertos compartidos, con la disciplina de que una máscara solo es una entrada a un número de ingeniería calibrado, nunca el entregable. Corre la comparación pesada offline y reproduce artefactos auditados, más un lane en vivo en el navegador que preserva la privacidad. Es un patrón reutilizable para visión por computador honesta con el método en inspección: mismos casos, mismas métricas, exactitud y medición reportadas por separado, y todo honesto con los datos y reproducible. Está en construcción activa, una rebanada vertical (código, tests, docs profundas) a la vez, y la app lo dice.'

kpis:
  - label: 'The deliverable'
    labelEs: 'El entregable'
    baseline: 'A segmentation mask and a benchmark score'
    baselineEs: 'Una máscara de segmentación y un puntaje de benchmark'
    result: 'Engineering numbers: pixel-to-mm calibrated crack width and length, orientation, density, and growth between inspection epochs'
    resultEs: 'Números de ingeniería: ancho y largo de grieta calibrados pixel-a-mm, orientación, densidad, y crecimiento entre épocas de inspección'
    impact: 'A defensible measurement an inspector can use, not just a mask'
    impactEs: 'Una medición defendible que un inspector puede usar, no solo una máscara'
  - label: 'Method comparison'
    labelEs: 'Comparación de métodos'
    baseline: 'One vendor benchmark on one method'
    baselineEs: 'El benchmark de un proveedor sobre un método'
    result: 'Classical, learned SOTA, foundation models and anomaly detection on the same open cases with the same metrics'
    resultEs: 'Clásico, SOTA aprendido, modelos fundacionales y detección de anomalías sobre los mismos casos abiertos con las mismas métricas'
    impact: 'You see what actually earns its place across the whole ladder'
    impactEs: 'Ves qué gana su lugar de verdad a lo largo de toda la escalera'
  - label: 'Privacy'
    labelEs: 'Privacidad'
    baseline: 'Upload the inspection photo to a server'
    baselineEs: 'Subir la foto de inspección a un servidor'
    result: 'Browser live lane: classical pipeline plus compact ONNX, the photo never leaves the device'
    resultEs: 'Lane en vivo en el navegador: pipeline clásico más ONNX compacto, la foto nunca sale del dispositivo'
    impact: 'Client-side analysis, private by construction'
    impactEs: 'Análisis del lado del cliente, privado por construcción'

metrics:
  - label: 'Classical engine'
    labelEs: 'Motor clásico'
    value: 'Staged S0-S8 pipeline + L0-L5 ladder + dual-tolerance evaluation + synthetic regression battery (real, shipped)'
    valueEs: 'Pipeline por etapas S0-S8 + escalera L0-L5 + evaluación de tolerancia dual + batería de regresión sintética (real, entregado)'
  - label: 'Method ladder'
    labelEs: 'Escalera de métodos'
    value: 'Classical morphology · learned segmentation (encoder-decoder + transformer) · promptable foundation models · unsupervised anomaly detection'
    valueEs: 'Morfología clásica · segmentación aprendida (encoder-decoder + transformer) · modelos fundacionales promptables · detección de anomalías no supervisada'
  - label: 'Measurement'
    labelEs: 'Medición'
    value: 'Pixel-to-mm width/length, orientation, density, change detection across epochs, 2D digital image correlation'
    valueEs: 'Ancho/largo pixel-a-mm, orientación, densidad, detección de cambios entre épocas, correlación de imágenes digital 2D'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Offline reproducible pipeline + static replay SPA over audited artifacts + client-side browser live lane; GitHub Pages'
    valueEs: 'Pipeline offline reproducible + SPA de replay estática sobre artefactos auditados + lane en vivo del lado del cliente; GitHub Pages'
  - label: 'Honesty'
    labelEs: 'Honestidad'
    value: 'A method-comparison research lab, NOT a certified inspection tool; dataset-honest (full data outside the repo); under active build-out'
    valueEs: 'Un laboratorio de comparación de métodos, NO una herramienta de inspección certificada; honesto con los datos (data completa fuera del repo); en construcción activa'

stack: [Python, NumPy, scikit-image, PyTorch, ONNX Runtime Web, React, Vite, TypeScript]
---
