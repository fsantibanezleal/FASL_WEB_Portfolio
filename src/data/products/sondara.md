---
title: 'Sondara, Drillhole Estimation and Simulation Compared on Real Held-Out Holes'
titleEs: 'Sondara, Estimación y Simulación de Sondajes Comparadas en Pozos Reservados Reales'
slug: sondara
date: 2026-09-12
category: geotechnical
family: mining
excerpt: 'Three public drillhole families run through one reproducible pipeline, and twelve estimation and simulation methods, from nearest neighbour and kriging to SNESIM, Direct Sampling, DeepKriging and KCN, predict the same held-out holes under one scoring. On Rocklea iron ordinary kriging holds its place; the learned methods learn the structure without beating it.'
excerptEs: 'Tres familias públicas de sondajes pasan por un mismo pipeline reproducible, y doce métodos de estimación y simulación, desde el vecino más cercano y el kriging hasta SNESIM, Direct Sampling, DeepKriging y KCN, predicen los mismos pozos reservados con una misma evaluación. En el hierro de Rocklea el kriging ordinario mantiene su lugar; los métodos aprendidos capturan la estructura sin superarlo.'
icon: tabler:pick
tags: [drillholes, geostatistics, mining, kriging, simulation, machine-learning, geocond, uncertainty]
proprietary: false
assetPatterns: [sondara]
github: 'https://github.com/fsantibanezleal/CAOS_Sondara'
demo: 'https://sondara.ml.fasl-work.com'
website: 'https://sondara.ml.fasl-work.com'

challenge: 'Drillhole estimates are usually judged by the method that produced them. The honest question is different: which method predicts a hole that was never drilled into the model, on real data, and is the difference larger than the noise between holes? Answering it needs real sources pinned by hash, splits by whole hole, the same targets for every method and a scoring that also says when a model learned nothing.'
challengeEs: 'Las estimaciones de sondajes suelen juzgarse por el método que las produjo. La pregunta honesta es otra: qué método predice un pozo que nunca entró al modelo, con datos reales, y si la diferencia supera el ruido entre pozos. Responderla exige fuentes reales fijadas por hash, particiones por pozo completo, los mismos objetivos para todos los métodos y una evaluación que también diga cuándo un modelo no aprendió nada.'

approach: 'An offline pipeline of eight built stages (acquire, ingest, preprocess, dataset, features, train, infer, evaluate) over Rocklea Dome (CSIRO, 5,035 one-metre multielement intervals in 158 holes), Alberta MAR_19860002 (22 inclined holes with logged geology) and NTGS 12LE002 (one hole with eleven measured survey stations). The classical methods and Direct Sampling run on geocond, the engine published on PyPI; SNESIM runs through MPSlib at a pinned commit; DeepKriging and KCN train on the GPU and ship as audited ONNX models with CPU, CUDA and ONNX parity. Every method predicts the same held-out holes, and paired hole-block intervals decide whether a difference is real.'
approachEs: 'Un pipeline offline de ocho etapas construidas (adquisición, ingesta, preprocesamiento, particiones, atributos, ajuste, inferencia, evaluación) sobre Rocklea Dome (CSIRO, 5.035 intervalos multielemento de un metro en 158 pozos), Alberta MAR_19860002 (22 pozos inclinados con geología registrada) y NTGS 12LE002 (un pozo con once estaciones de desviación medidas). Los métodos clásicos y Direct Sampling corren sobre geocond, el motor publicado en PyPI; SNESIM corre con MPSlib en un commit fijado; DeepKriging y KCN se entrenan en GPU y se publican como modelos ONNX auditados, con paridad entre CPU, CUDA y ONNX. Todos los métodos predicen los mismos pozos reservados y los intervalos pareados por bloques de pozos deciden si una diferencia es real.'

businessContext: 'For a project geologist or a resource team the value is a comparison they can reproduce: which estimator to trust on these holes, how much a learned model really adds, and where the data itself is weaker than it looks (a spectral column named as a ratio that is a wavelength, twelve holes whose spectral depths are offset from the assays). It is evidence for choosing a method, not a resource estimate.'
businessContextEs: 'Para un geólogo de proyecto o un equipo de recursos el valor es una comparación reproducible: en qué estimador confiar con estos pozos, cuánto agrega realmente un modelo aprendido y dónde los datos son más débiles de lo que parecen (una columna espectral nombrada como razón que es una longitud de onda, doce pozos cuyas profundidades espectrales están desplazadas respecto de los ensayos). Es evidencia para elegir un método, no una estimación de recursos.'

strategicValue: 'Sondara is in construction with its plan as the implementation authority: eight of ten pipeline stages are built and every scenario cell is accounted for (61 computed, 20 verified by tests, 4 pending for export and validate). The live page still shows the 0.2 local-first viewer; the web product rebuilt on these results comes after export and validate. Sibling of Aerovia by rebuild discipline.'
strategicValueEs: 'Sondara está en construcción con su plan como autoridad de implementación: ocho de diez etapas del pipeline están construidas y cada celda de escenario está contabilizada (61 calculadas, 20 verificadas por pruebas, 4 pendientes para exportar y validar). La página publicada aún muestra el visor local de la versión 0.2; el producto web reconstruido sobre estos resultados viene después de exportar y validar. Hermano de Aerovia por disciplina de reconstrucción.'

kpis:
  - label: 'Every method, the same held-out holes'
    labelEs: 'Todos los métodos, los mismos pozos reservados'
    baseline: 'Each method judged on its own cross-validation'
    baselineEs: 'Cada método juzgado con su propia validación cruzada'
    result: 'Twelve methods predict the same targets on whole-hole splits; paired hole-block bootstrap intervals against ordinary kriging'
    resultEs: 'Doce métodos predicen los mismos objetivos en particiones por pozo completo; intervalos bootstrap pareados por bloques de pozos contra el kriging ordinario'
    impact: 'A difference smaller than the noise between holes is reported as none'
    impactEs: 'Una diferencia menor que el ruido entre pozos se informa como ninguna'
  - label: 'A learned model has to beat its own control'
    labelEs: 'Un modelo aprendido debe superar su propio control'
    baseline: 'A neural network compared only with kriging'
    baselineEs: 'Una red neuronal comparada solo con kriging'
    result: 'Shuffled-label controls and a training-mean reference: on Rocklea both learned methods beat their controls by 2.3 to 5.4 wt% of MAE without beating OK; on Alberta''s hole-group split no method beats the training mean'
    resultEs: 'Controles con etiquetas mezcladas y una referencia de media de entrenamiento: en Rocklea ambos métodos aprendidos superan sus controles por 2,3 a 5,4 % en peso de MAE sin superar al OK; en la partición por grupos de pozos de Alberta ningún método supera la media de entrenamiento'
    impact: 'Whether a model learned anything is measured, not assumed'
    impactEs: 'Si un modelo aprendió algo se mide, no se supone'
  - label: 'Not a resource estimate, in writing'
    labelEs: 'No es una estimación de recursos, por escrito'
    baseline: 'A comparison read as a certified estimate'
    baselineEs: 'Una comparación leída como una estimación certificada'
    result: 'Predictions at support centres, not block grades; simulations conditional on labelled interpretations; three Alberta test holes called weak evidence'
    resultEs: 'Predicciones en los centros de soporte, no leyes de bloque; simulaciones condicionadas a interpretaciones rotuladas; tres pozos de prueba de Alberta declarados evidencia débil'
    impact: 'The scope stays honest while the product grows'
    impactEs: 'El alcance se mantiene honesto mientras el producto crece'

metrics:
  - label: 'Rocklea iron, 23 test holes'
    labelEs: 'Hierro de Rocklea, 23 pozos de prueba'
    value: 'OK RMSE 13.53 wt%; SK, IDW and LMC cokriging within 0.4 wt% of its MAE; DeepKriging 14.11, KCN 14.56; SGS keeps the test variance that kriging halves'
    valueEs: 'RMSE del OK 13,53 % en peso; SK, IDW y cokriging LMC a menos de 0,4 % en peso de su MAE; DeepKriging 14,11, KCN 14,56; SGS conserva la varianza de prueba que el kriging reduce a la mitad'
  - label: 'Categorical simulation, Alberta logs'
    labelEs: 'Simulación categórica, registros de Alberta'
    value: 'SNESIM and Direct Sampling under two labelled training images: every run beats the vertical proportion curve on the Brier score (best 0.359 against 0.464)'
    valueEs: 'SNESIM y Direct Sampling bajo dos imágenes de entrenamiento rotuladas: todas las corridas superan a la curva de proporciones verticales en el puntaje de Brier (mejor 0,359 contra 0,464)'
  - label: 'The supplied spectral index'
    labelEs: 'El índice espectral entregado'
    value: 'Read from the collection''s own files: hem/goe is a wavelength in nm, the assay-like columns copy the workbook, 12 holes are misregistered; the iron-oxide index predicts Fe with RMSE 11.99 on 701 test rows'
    valueEs: 'Leído desde los propios archivos de la colección: hem/goe es una longitud de onda en nm, las columnas tipo ensayo copian el libro de ensayos, 12 pozos están desregistrados; el índice de óxidos de hierro predice Fe con RMSE 11,99 en 701 filas de prueba'
  - label: 'Engine and deploy'
    labelEs: 'Motor y despliegue'
    value: 'geocond 0.8.0 on PyPI (kriging, cokriging, indicator kriging, sequential Gaussian simulation, Direct Sampling, CPU and CUDA); GitHub Pages plus a static mirror on the ML VPS; version 0.12.000; lifecycle building'
    valueEs: 'geocond 0.8.0 en PyPI (kriging, cokriging, kriging de indicadores, simulación gaussiana secuencial, Direct Sampling, CPU y CUDA); GitHub Pages más un espejo estático en el VPS de ML; versión 0.12.000; ciclo de vida en construcción'

stack: [Python, geocond, NumPy, SciPy, PyTorch, ONNX Runtime, MPSlib, TypeScript, React, WebGL]
---
