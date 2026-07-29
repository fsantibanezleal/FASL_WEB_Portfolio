---
title: 'CoreLog Vision — Drill-Core Logging & Lithology Classification Workbench'
titleEs: 'CoreLog Vision — Banco de Trabajo de Logueo de Testigos y Clasificación Litológica'
slug: corelog
date: 2026-07-04
category: mining-analytics
family: faena
excerpt: 'A browser-native drill-core logging workbench: it classifies sliding windows along core-tray channels into six lithologies with a CNN, merges adjacent same-class patches into a depth-stitched strip log with confidence shading, and flags out-of-distribution core with a Mahalanobis detector instead of forcing a class. It runs on procedurally synthetic trays, with a real-photo lane (DCID) used strictly as the out-of-distribution and real-head evaluation set. Honest by design: the CNN accuracy is synthetic-vs-synthetic, a label-permutation control collapses to chance, and the shipped detector is named for what it is.'
excerptEs: 'Un banco de trabajo de logueo de testigos nativo del navegador: clasifica ventanas deslizantes a lo largo de los canales de una bandeja de testigo en seis litologias con una CNN, fusiona parches contiguos de la misma clase en un strip log cosido por profundidad con sombreado de confianza, y marca testigo fuera de distribucion con un detector de Mahalanobis en vez de forzar una clase. Corre sobre bandejas sinteticas procedurales, con una via de fotos reales (DCID) usada estrictamente como set de evaluacion fuera de distribucion y de cabezal real. Honesto por diseno: la accuracy de la CNN es sintetico contra sintetico, un control de permutacion de etiquetas colapsa al azar, y el detector que se despliega se nombra por lo que es.'
icon: tabler:layers-subtract
tags: [mining-analytics, drill-core, lithology, cnn, computer-vision, out-of-distribution, mahalanobis, onnx, geology, mining]
proprietary: false
featured: false
assetPatterns: [corelog]
github: 'https://github.com/fsantibanezleal/CAOS_CoreLog'
demo: 'https://corelog.fasl-work.com'
website: 'https://corelog.fasl-work.com'

challenge: 'Logging drill core is slow, subjective and hard to audit: a geologist assigns lithology by eye down thousands of metres of tray, and two loggers rarely agree at the boundaries. Automating it invites a worse failure, a model that emits a confident class for core it has never seen and buries the uncertainty. The useful questions are not only "which lithology" but "is this window even in the world the model was trained on", and "would this accuracy survive a split that does not let overlapping windows from the same hole leak between train and test".'
challengeEs: 'Loguear testigo de sondaje es lento, subjetivo y dificil de auditar: un geologo asigna litologia a ojo por miles de metros de bandeja, y dos logueadores rara vez coinciden en los bordes. Automatizarlo invita a una falla peor, un modelo que emite una clase confiada para testigo que nunca vio y entierra la incertidumbre. Las preguntas utiles no son solo "que litologia" sino "esta ventana esta siquiera en el mundo con que se entreno el modelo", y "sobreviviria esta accuracy a una particion que no deje filtrar ventanas solapadas del mismo pozo entre entrenamiento y test".'

approach: 'CoreLog runs a full computer-vision ladder client-side over 8 procedurally synthetic tray cases (lithology suites, imaging-quality regimes, and closed-form analytic controls). A colour/texture baseline classifier and a run-merge segmentation that emerges from the classifier form the classical rung; a 6-class lithology CNN (ONNX, softmax plus a 64-dimensional penultimate feature in one pass) is the learned rung; and out-of-distribution flagging is done by a Mahalanobis detector in the CNN''s 64-d feature space, whose mean and covariance ship as JSON and are scored in TypeScript. A separate real-photo lane loads the DCID drill-core image dataset as the out-of-distribution and real-head evaluation set only, never as training data. Nine OOD detectors are benchmarked offline on identical splits. Everything is client-side, TypeScript plus onnxruntime-web on the WASM backend, static on GitHub Pages; the offline precompute lane bakes artifacts by importing the same TypeScript engine the browser runs, so offline and live numbers match by construction.'
approachEs: 'CoreLog corre una escalera completa de vision por computador del lado del cliente sobre 8 casos de bandeja sinteticos procedurales (suites litologicas, regimenes de calidad de imagen y controles analiticos de forma cerrada). Un clasificador base de color y textura y una segmentacion por fusion de corridas que emerge del clasificador forman el peldano clasico; una CNN litologica de 6 clases (ONNX, softmax mas un rasgo penultimo de 64 dimensiones en una pasada) es el peldano aprendido; y el marcado fuera de distribucion se hace con un detector de Mahalanobis en el espacio de rasgos de 64-d de la CNN, cuya media y covarianza se despliegan como JSON y se puntuan en TypeScript. Una via separada de fotos reales carga el dataset de imagenes de testigo DCID solo como set de evaluacion fuera de distribucion y de cabezal real, nunca como datos de entrenamiento. Nueve detectores OOD se evaluan offline sobre particiones identicas. Todo del lado del cliente, TypeScript mas onnxruntime-web en el backend WASM, estatico en GitHub Pages; la via de precomputo offline hornea los artefactos importando el mismo motor TypeScript que corre el navegador, de modo que los numeros offline y en vivo coinciden por construccion.'

businessContext: 'Consistent, auditable lithology logging feeds resource models, geometallurgy and blast design, so an automated logger is only useful if it says when to distrust it. CoreLog''s value is the discipline around the number: the classifier is measured on a grouped-by-hole split (14 training holes, 4 test holes) so overlapping windows cannot leak, its accuracy is stated as synthetic-vs-synthetic rather than as real-core performance, and unfamiliar core is routed to a novelty flag instead of a forced class. That is the shape a logging aid needs before it touches a resource decision, not a single flattering accuracy.'
businessContextEs: 'Un logueo litologico consistente y auditable alimenta modelos de recursos, geometalurgia y diseno de tronadura, por lo que un logueador automatico solo sirve si dice cuando desconfiar de el. El valor de CoreLog es la disciplina alrededor del numero: el clasificador se mide sobre una particion agrupada por pozo (14 pozos de entrenamiento, 4 de test) para que no filtren ventanas solapadas, su accuracy se declara como sintetico contra sintetico y no como desempeno sobre testigo real, y el testigo desconocido se enruta a un marcador de novedad en vez de a una clase forzada. Esa es la forma que un asistente de logueo necesita antes de tocar una decision de recursos, no un unico numero favorecedor.'

strategicValue: 'CoreLog''s strongest asset is a control that actually ran and reported against interest: a label-permutation null collapses to chance (top-1 0.1387 vs a 0.1429 baseline), evidence there is no leakage behind the 0.994 grouped-by-hole CNN accuracy. It also documents a reversal most demos would hide: the incumbent pixel-autoencoder OOD detector scored AUROC 0.3078, worse than chance, and was replaced by a Mahalanobis detector in the CNN feature space at 0.9463, which is the one that ships (not the offline benchmark winner at 0.9995). The real DCID lane is scoped as evaluation, not deployment, and the card is explicit that the 0.994 number is synthetic and that DCID-7 carries no schist or ore class. It is a reusable pattern for an on-device, honestly-scoped logging aid that names its own limits.'
strategicValueEs: 'El activo mas fuerte de CoreLog es un control que efectivamente corrio y reporto en contra del interes propio: un nulo de permutacion de etiquetas colapsa al azar (top-1 0,1387 frente a una base de 0,1429), evidencia de que no hay filtracion detras del 0,994 de accuracy de la CNN con particion agrupada por pozo. Tambien documenta una reversion que la mayoria de las demos ocultaria: el detector OOD titular de autoencoder de pixeles puntuo AUROC 0,3078, peor que el azar, y fue reemplazado por un detector de Mahalanobis en el espacio de rasgos de la CNN en 0,9463, que es el que se despliega (no el ganador del benchmark offline en 0,9995). La via real DCID esta acotada como evaluacion, no como despliegue, y la ficha es explicita en que el 0,994 es sintetico y en que DCID-7 no trae clase schist ni ore. Es un patron reutilizable para un asistente de logueo en el dispositivo, honestamente acotado, que nombra sus propios limites.'

kpis:
  - label: 'What the result tells you'
    labelEs: 'Que te dice el resultado'
    baseline: 'A confident lithology class for every window'
    baselineEs: 'Una clase litologica confiada para cada ventana'
    result: 'Lithology per window PLUS a Mahalanobis out-of-distribution flag when the core is unfamiliar'
    resultEs: 'Litologia por ventana MAS un marcador de Mahalanobis fuera de distribucion cuando el testigo es desconocido'
    impact: 'The model routes unknown core to a flag instead of forcing a class'
    impactEs: 'El modelo enruta testigo desconocido a un marcador en vez de forzar una clase'
  - label: 'Leakage control'
    labelEs: 'Control de filtracion'
    baseline: 'Random patch-level split (windows leak between train and test)'
    baselineEs: 'Particion aleatoria a nivel de parche (las ventanas filtran entre train y test)'
    result: 'Grouped-by-hole split (14 train / 4 test) + label-permutation null collapses to chance (0.1387 vs 0.1429)'
    resultEs: 'Particion agrupada por pozo (14 train / 4 test) + nulo de permutacion de etiquetas colapsa al azar (0,1387 vs 0,1429)'
    impact: 'The 0.994 accuracy is not an artifact of leakage'
    impactEs: 'El 0,994 de accuracy no es un artefacto de filtracion'
  - label: 'OOD detector, honestly named'
    labelEs: 'Detector OOD, nombrado con honestidad'
    baseline: 'Pixel autoencoder: AUROC 0.3078 (worse than chance)'
    baselineEs: 'Autoencoder de pixeles: AUROC 0,3078 (peor que el azar)'
    result: 'Shipped detector: Mahalanobis in the CNN 64-d feature space, AUROC 0.9463'
    resultEs: 'Detector desplegado: Mahalanobis en el espacio de rasgos de 64-d de la CNN, AUROC 0,9463'
    impact: 'The reversal is documented, not the benchmark winner (0.9995, not shipped)'
    impactEs: 'La reversion queda documentada, no el ganador del benchmark (0,9995, no desplegado)'
  - label: 'Compute'
    labelEs: 'Computo'
    baseline: 'Server / GPU inference service'
    baselineEs: 'Servicio de inferencia en servidor / GPU'
    result: '100% client-side: TypeScript computer vision + onnxruntime-web (WASM)'
    resultEs: '100% del lado del cliente: vision por computador en TypeScript + onnxruntime-web (WASM)'
    impact: 'Static hosting, nothing to install, zero backend'
    impactEs: 'Hosting estatico, nada que instalar, cero backend'

metrics:
  - label: 'Data'
    labelEs: 'Datos'
    value: 'Synthetic trays (8 cases: lithology suites, imaging regimes, analytic controls) + real DCID drill-core photos as an out-of-distribution / real-head evaluation lane only (no in-app upload)'
    valueEs: 'Bandejas sinteticas (8 casos: suites litologicas, regimenes de imagen, controles analiticos) + fotos reales de testigo DCID solo como via de evaluacion fuera de distribucion / cabezal real (sin carga en la app)'
  - label: 'Classifier (synthetic)'
    labelEs: 'Clasificador (sintetico)'
    value: '6-class lithology CNN, accuracy 0.994 vs 0.9286 colour/texture baseline, grouped-by-hole split (14 train / 4 test holes, nEval 1344)'
    valueEs: 'CNN litologica de 6 clases, accuracy 0,994 vs 0,9286 de base color/textura, particion agrupada por pozo (14 train / 4 test, nEval 1344)'
  - label: 'Out-of-distribution'
    labelEs: 'Fuera de distribucion'
    value: 'Shipped Mahalanobis detector AUROC 0.9463 (nId 1344 / nOod 829); 9 detectors benchmarked offline on identical splits; incumbent pixel-AE was 0.3078'
    valueEs: 'Detector de Mahalanobis desplegado AUROC 0,9463 (nId 1344 / nOod 829); 9 detectores evaluados offline sobre particiones identicas; el autoencoder titular daba 0,3078'
  - label: 'Real-head evaluation'
    labelEs: 'Evaluacion de cabezal real'
    value: 'MobileNetV3-Small head, top-1 0.9916 on held-out real DCID (n=829, pHash-deduped); 7 DCID classes, no schist and no ore class'
    valueEs: 'Cabezal MobileNetV3-Small, top-1 0,9916 sobre DCID real held-out (n=829, deduplicado por pHash); 7 clases DCID, sin clase schist ni ore'
  - label: 'Data provenance'
    labelEs: 'Procedencia de datos'
    value: 'DCID (Li et al. 2025, Petroleum Science 22(8), DOI 10.1016/j.petsci.2025.04.013), CC BY-NC 4.0; 21 verbatim 512x512 patches committed with attribution, ~3 GB source fetched offline'
    valueEs: 'DCID (Li et al. 2025, Petroleum Science 22(8), DOI 10.1016/j.petsci.2025.04.013), CC BY-NC 4.0; 21 parches 512x512 verbatim commiteados con atribucion, fuente de ~3 GB descargada offline'
  - label: 'Compute'
    labelEs: 'Computo'
    value: '100% in-browser: TypeScript CV + onnxruntime-web; offline precompute imports the same TS engine, so baked and live numbers match by construction'
    valueEs: '100% en navegador: CV en TypeScript + onnxruntime-web; el precomputo offline importa el mismo motor TS, de modo que los numeros horneados y en vivo coinciden por construccion'

stack: [TypeScript, React, Vite, ONNX, onnxruntime-web, PyTorch, uPlot, KaTeX]
---

## From "which lithology" to "is this core even in-distribution"

CoreLog Vision is a browser-native **drill-core logging** workbench. It classifies sliding windows along core-tray channels into six lithologies with a CNN, merges adjacent same-class patches into a depth-stitched strip log with confidence shading, and flags out-of-distribution core instead of forcing a class. Live at [corelog.fasl-work.com](https://corelog.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## What it runs on

- **Synthetic trays (the main lane, and the training data)**: 8 procedurally generated cases, three lithology suites, three imaging-quality regimes, and two closed-form analytic controls. There is no in-app upload; the workbench runs these cases plus the real evaluation lane.
- **Real DCID photos (evaluation only)**: the Drill Core Image Dataset is loaded as the out-of-distribution and real-head evaluation set, never as training data. 21 verbatim CC BY-NC patches are committed with DOI-level provenance.

## Three rungs, run live

A **classical** rung (colour/texture baseline plus a run-merge segmentation that emerges from the classifier), a **learned** rung (the 6-class lithology CNN, ONNX, softmax plus a 64-d penultimate feature in one pass), and **out-of-distribution flagging** via a Mahalanobis detector in that 64-d feature space. Everything runs client-side over onnxruntime-web on the WASM backend, with a graceful fallback to the classical method if a model is absent.

## Honest about what the numbers mean

The CNN reaches **0.994 accuracy against a 0.9286 colour baseline** on a **grouped-by-hole split** (14 train / 4 test holes, nEval 1344), and this is stated for what it is: **synthetic-vs-synthetic**, the CNN scored against the generator's own ground truth, not real-core accuracy. Two things keep it honest. A **label-permutation null collapses to chance** (top-1 0.1387 vs a 0.1429 baseline), which is the leakage control that the grouped split is meant to guarantee. And the **shipped OOD detector is named for what it is**: a Mahalanobis detector at AUROC 0.9463, which replaced an incumbent pixel-autoencoder that scored 0.3078 (worse than chance); the offline benchmark winner (0.9995, a second backbone) is not the one that ships. The real DCID head reaches top-1 0.9916 on held-out real core, but DCID-7 contains no schist and no ore class, so it is an evaluation lane, not a mine-lithology claim.

[Live demo](https://corelog.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_CoreLog)
