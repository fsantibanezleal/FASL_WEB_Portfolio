---
title: 'FrothSeg, Flotation-Froth Instance Segmentation Lab (Browser ML)'
titleEs: 'FrothSeg, Laboratorio de Segmentación de Instancias de Espuma de Flotación (ML en el Navegador)'
slug: frothseg
date: 2026-07-23
category: computer-vision
family: faena
excerpt: 'A browser-native lab for instance segmentation of flotation froth: it delineates individual bubbles in a froth image, entirely client-side via ONNX, and compares a ladder of seven classical methods against a real published research model. That model, LamellaStar, is a four-head net shipped as a three-seed logit-mean ensemble (N1: mean AP 0.5186, AP50 0.8279, PQ 0.7359), with SAM2 and Cellpose-SAM as offline teachers and a distilled mask head for the browser. The honest core is the data situation, stated openly: no real froth images exist publicly (the search is recorded as a null, Roboflow dropped), so the froth cases are synthetic and BBBC038 (64 real dense-touching images, CC0) serves as an adjacent-domain transfer lane that the lab explicitly says does NOT clear the froth blocker. The study even refuted its own hypothesis: the froth ranking is generator-specific and the model drops on real transfer.'
excerptEs: 'Un laboratorio nativo del navegador para segmentación de instancias de espuma de flotación: delimita burbujas individuales en una imagen de espuma, enteramente del lado del cliente vía ONNX, y compara una escalera de siete métodos clásicos contra un modelo de investigación real publicado. Ese modelo, LamellaStar, es una red de cuatro cabezas entregada como un ensemble de media de logits de tres semillas (N1: mean AP 0.5186, AP50 0.8279, PQ 0.7359), con SAM2 y Cellpose-SAM como teachers offline y una cabeza de máscara destilada para el navegador. El núcleo honesto es la situación de datos, declarada abiertamente: no existen imágenes reales de espuma públicamente (la búsqueda se registra como nula, Roboflow descartado), así que los casos de espuma son sintéticos y BBBC038 (64 imágenes reales de instancias densas y en contacto, CC0) sirve como lane de transferencia de dominio adyacente que el laboratorio dice explícitamente que NO despeja el bloqueador de espuma. El estudio incluso refutó su propia hipótesis: el ranking de espuma es específico del generador y el modelo cae en la transferencia real.'
icon: tabler:circles
tags: [computer-vision, instance-segmentation, flotation, froth, onnx, sam2, cellpose, ensemble, negative-results, mining]
proprietary: false
featured: false
assetPatterns: [frothseg]
github: 'https://github.com/fsantibanezleal/CAOS_FrothSeg'
demo: 'https://frothseg.fasl-work.com'
website: 'https://frothseg.fasl-work.com'

challenge: 'Flotation froth carries information a plant operator wants: bubble size distribution, coalescence, load, all readable from an image of the cell surface. Turning that image into per-bubble instances is the hard computer-vision problem, dense, touching, translucent objects with no crisp edges. And the field has a blocker most tools quietly ignore: there is essentially no public labelled real froth dataset, so anyone claiming a trained froth segmenter is either using private data or training on synthetic images and hoping it transfers. The honest question is not "can it segment a synthetic bubble" but "does any of this survive contact with real imagery, and if there is no real froth data, say so".'
challengeEs: 'La espuma de flotación lleva información que un operador de planta quiere: distribución de tamaño de burbuja, coalescencia, carga, todo legible desde una imagen de la superficie de la celda. Convertir esa imagen en instancias por burbuja es el problema difícil de visión por computador: objetos densos, en contacto, translúcidos y sin bordes nítidos. Y el campo tiene un bloqueador que la mayoría de las herramientas ignora en silencio: esencialmente no hay dataset público etiquetado de espuma real, así que cualquiera que afirme un segmentador de espuma entrenado usa datos privados o entrena sobre imágenes sintéticas y espera que transfiera. La pregunta honesta no es "puede segmentar una burbuja sintética" sino "sobrevive algo de esto al contacto con imágenes reales, y si no hay datos reales de espuma, decirlo".'

approach: 'FrothSeg runs instance segmentation of froth entirely in the browser (ONNX inference, no server) and compares two tiers on the same cases. The classical tier is seven methods (watershed and related morphology-based delineators). The learned tier is LamellaStar, a real four-head research model published as a three-seed logit-mean ensemble (its top configuration, N1, scores mean AP 0.5186, AP50 0.8279, panoptic quality 0.7359), distilled to a compact mask head for client-side inference, with SAM2 and Cellpose-SAM used as offline teachers (checkpoints checksum-recorded, no teacher weights redistributed). On data it is deliberately, loudly honest: no real froth images exist publicly, and the repo records the search as a null result (including dropping Roboflow), so the froth cases are synthetic. To probe real-world behaviour without real froth, it adopts BBBC038 (64 real photographs of dense touching instances, CC0) as an adjacent-domain transfer lane, and states plainly that an adjacent real domain does not clear the froth blocker. The transfer study refuted its own hypothesis: the synthetic froth ranking is generator-specific and the model degrades on real transfer, and that null is published rather than hidden.'
approachEs: 'FrothSeg corre segmentación de instancias de espuma enteramente en el navegador (inferencia ONNX, sin servidor) y compara dos capas sobre los mismos casos. La capa clásica son siete métodos (delineadores basados en watershed y morfología relacionada). La capa aprendida es LamellaStar, un modelo de investigación real de cuatro cabezas publicado como ensemble de media de logits de tres semillas (su configuración top, N1, puntúa mean AP 0.5186, AP50 0.8279, calidad panóptica 0.7359), destilado a una cabeza de máscara compacta para inferencia del lado del cliente, con SAM2 y Cellpose-SAM como teachers offline (checkpoints con checksum registrado, sin redistribuir pesos de teacher). En datos es deliberada y ruidosamente honesto: no existen imágenes reales de espuma públicamente, y el repo registra la búsqueda como resultado nulo (incluido descartar Roboflow), así que los casos de espuma son sintéticos. Para sondear el comportamiento real sin espuma real, adopta BBBC038 (64 fotografías reales de instancias densas y en contacto, CC0) como lane de transferencia de dominio adyacente, y declara claramente que un dominio real adyacente no despeja el bloqueador de espuma. El estudio de transferencia refutó su propia hipótesis: el ranking de espuma sintética es específico del generador y el modelo se degrada en la transferencia real, y ese nulo se publica en vez de esconderse.'

businessContext: 'Froth imaging is a real lever in flotation control, and a per-bubble segmenter is the front end for bubble-size and load analytics. The value a portfolio piece like this adds is not a suspiciously high accuracy number, it is an honest map of what froth CV can and cannot do today: which classical method is a solid baseline, what a distilled learned model buys, and, crucially, that the field is blocked by the absence of public real froth data, a fact most vendors would hide behind a synthetic benchmark. Knowing the blocker is worth more to a decision-maker than a flattering synthetic score.'
businessContextEs: 'La imagen de espuma es una palanca real en el control de flotación, y un segmentador por burbuja es el front end para analítica de tamaño de burbuja y carga. El valor que una pieza de portafolio como esta agrega no es un número de exactitud sospechosamente alto, es un mapa honesto de lo que la visión de espuma puede y no puede hacer hoy: qué método clásico es una base sólida, qué compra un modelo aprendido destilado, y, crucialmente, que el campo está bloqueado por la ausencia de datos públicos reales de espuma, un hecho que la mayoría de los proveedores escondería tras un benchmark sintético. Conocer el bloqueador vale más para un tomador de decisiones que un puntaje sintético favorecedor.'

strategicValue: 'FrothSeg is an honest browser-ML instance-segmentation lab that ships a real published model (LamellaStar, a three-seed ensemble with SAM2/Cellpose-SAM teachers) and refuses to fake the thing the field lacks: it documents that no public real froth dataset exists, records the data search as a null, and uses an adjacent real domain (BBBC038) as a transfer probe it explicitly says does not clear the froth blocker. It even refuted its own hypothesis, publishing that the synthetic ranking is generator-specific. It is the honest-negative-results discipline applied to a data-starved vision problem: a real model, a real classical ladder, real transfer numbers, and a loudly stated limit, all running client-side.'
strategicValueEs: 'FrothSeg es un laboratorio honesto de segmentación de instancias con ML en el navegador que entrega un modelo real publicado (LamellaStar, un ensemble de tres semillas con teachers SAM2/Cellpose-SAM) y se niega a fingir lo que al campo le falta: documenta que no existe dataset público real de espuma, registra la búsqueda de datos como nula, y usa un dominio real adyacente (BBBC038) como sonda de transferencia que dice explícitamente que no despeja el bloqueador de espuma. Incluso refutó su propia hipótesis, publicando que el ranking sintético es específico del generador. Es la disciplina de resultados negativos honestos aplicada a un problema de visión con hambre de datos: un modelo real, una escalera clásica real, números de transferencia reales, y un límite declarado en voz alta, todo corriendo del lado del cliente.'

kpis:
  - label: 'The data blocker, stated'
    labelEs: 'El bloqueador de datos, declarado'
    baseline: 'Claim a trained froth segmenter and hide that there is no public real froth data'
    baselineEs: 'Afirmar un segmentador de espuma entrenado y esconder que no hay datos públicos reales de espuma'
    result: 'Openly records that no public real froth dataset exists (search logged as a null, Roboflow dropped); froth cases are synthetic and labelled as such'
    resultEs: 'Registra abiertamente que no existe dataset público real de espuma (búsqueda como nula, Roboflow descartado); los casos de espuma son sintéticos y etiquetados como tal'
    impact: 'You know the real blocker, not a synthetic score hiding it'
    impactEs: 'Conoces el bloqueador real, no un puntaje sintético que lo esconde'
  - label: 'A real published model'
    labelEs: 'Un modelo real publicado'
    baseline: 'A vague learned baseline'
    baselineEs: 'Una base aprendida vaga'
    result: 'LamellaStar: four-head net as a three-seed logit-mean ensemble (N1 mean AP 0.5186, AP50 0.8279, PQ 0.7359), SAM2/Cellpose-SAM teachers, distilled mask head for the browser'
    resultEs: 'LamellaStar: red de cuatro cabezas como ensemble de media de logits de tres semillas (N1 mean AP 0.5186, AP50 0.8279, PQ 0.7359), teachers SAM2/Cellpose-SAM, cabeza de máscara destilada para el navegador'
    impact: 'A concrete, reproducible model with real numbers'
    impactEs: 'Un modelo concreto y reproducible con números reales'
  - label: 'Self-refuted hypothesis'
    labelEs: 'Hipótesis auto-refutada'
    baseline: 'Report only the wins'
    baselineEs: 'Reportar solo los aciertos'
    result: 'The transfer study refuted itself: the synthetic froth ranking is generator-specific and the model drops on real (BBBC038) transfer, published not hidden'
    resultEs: 'El estudio de transferencia se refutó a sí mismo: el ranking de espuma sintética es específico del generador y el modelo cae en la transferencia real (BBBC038), publicado no escondido'
    impact: 'The honest negative result is the deliverable'
    impactEs: 'El resultado negativo honesto es el entregable'

metrics:
  - label: 'What it does'
    labelEs: 'Qué hace'
    value: 'Instance segmentation of flotation froth (per-bubble delineation), entirely client-side via ONNX'
    valueEs: 'Segmentación de instancias de espuma de flotación (delineación por burbuja), enteramente del lado del cliente vía ONNX'
  - label: 'Method ladder'
    labelEs: 'Escalera de métodos'
    value: '7 classical methods + LamellaStar (three-seed ensemble) with SAM2 / Cellpose-SAM teachers + a distilled browser mask head'
    valueEs: '7 métodos clásicos + LamellaStar (ensemble de tres semillas) con teachers SAM2 / Cellpose-SAM + una cabeza de máscara destilada para el navegador'
  - label: 'Data'
    labelEs: 'Datos'
    value: 'Synthetic froth cases (no public real froth data exists, recorded as a null) + BBBC038 (64 real dense-touching images, CC0) as an adjacent-domain transfer probe'
    valueEs: 'Casos de espuma sintéticos (no existe data pública real de espuma, registrado como nulo) + BBBC038 (64 imágenes reales densas en contacto, CC0) como sonda de transferencia de dominio adyacente'
  - label: 'Honesty'
    labelEs: 'Honestidad'
    value: 'States plainly that an adjacent real domain does NOT clear the froth blocker; refuted its own generator-specific-ranking hypothesis; not a plant tool'
    valueEs: 'Declara claramente que un dominio real adyacente NO despeja el bloqueador de espuma; refutó su propia hipótesis de ranking específico del generador; no es una herramienta de planta'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Static SPA, client-side ONNX inference; part of the Faena hub; GitHub Pages'
    valueEs: 'SPA estática, inferencia ONNX del lado del cliente; parte del hub Faena; GitHub Pages'

stack: [Python, PyTorch, ONNX Runtime Web, SAM2, Cellpose-SAM, React, Vite, TypeScript]
---
