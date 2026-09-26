---
title: 'Porvenir, Learned World Models for Mineral Processing, Measured Against Holding the Last Value'
titleEs: 'Porvenir, Modelos de Mundo Aprendidos para Procesamiento de Minerales, Medidos Contra Mantener el Último Valor'
slug: porvenir
date: 2026-09-08
category: scientific-ml
family: mining
excerpt: 'A forecaster maps history to a future; a world model takes a proposed action sequence as an argument and returns a distribution over futures, which is the single difference that makes what-if questions, planning and regime detection expressible. Porvenir asks three questions of mineral-processing records and answers each with a measurement: whether a learned latent can track process state the plant does not instrument, whether aleatoric and epistemic uncertainty can be separated and made separately actionable, and how far imagination drifts from reality when a plan is executed. Eleven rungs plus a zero-shot yardstick, from persistence and seasonal naive through VARX, GRU-D, DeepAR, MQ-RNN, a probabilistic ensemble, a patch transformer and recurrent state-space models, every one scored per horizon against holding the last value. On the real iron-ore flotation record, seven of nine learned rungs do not beat persistence, and the app says so on the case. Lifecycle: live, re-baked with its numbers withdrawn once.'
excerptEs: 'Un pronosticador mapea la historia a un futuro; un modelo de mundo toma una secuencia de acciones propuesta como argumento y devuelve una distribución sobre futuros, que es la única diferencia que hace expresables las preguntas de qué pasaría, la planificación y la detección de cambio de régimen. Porvenir hace tres preguntas a registros de procesamiento de minerales y responde cada una con una medición: si un latente aprendido puede seguir un estado del proceso que la planta no instrumenta, si la incertidumbre aleatoria y la epistémica pueden separarse y hacerse accionables por separado, y cuánto se aleja la imaginación de la realidad cuando un plan se ejecuta. Once peldaños más un patrón de referencia sin entrenamiento, desde persistencia e ingenuo estacional pasando por VARX, GRU-D, DeepAR, MQ-RNN, un ensamble probabilístico, un transformer de parches y modelos recurrentes de espacio de estados, cada uno puntuado por horizonte contra mantener el último valor. En el registro real de flotación de mineral de hierro, siete de nueve peldaños aprendidos no superan la persistencia, y la aplicación lo dice en el caso. Ciclo de vida: en producción, vuelto a hornear con sus números retirados una vez.'
icon: tabler:crystal-ball
tags: [world-models, forecasting, latent-dynamics, uncertainty, rssm, mineral-processing, onnx, honesty, scientific-ml]
proprietary: true
assetPatterns: [porvenir]
demo: 'https://porvenir.ml.fasl-work.com'
website: 'https://pypi.org/project/latentplant/'
publication: 'https://doi.org/10.5281/zenodo.22135520'

challenge: 'Plant historians hold years of process records, and the models trained on them are almost always forecasters: given the past, predict the next values. A forecaster cannot answer the question an operator actually has, which is what would happen if a different action were taken, because the action is not an argument of the model. A world model makes the action sequence an input and returns a distribution over futures, which turns what-if questions, planning and regime detection into things that can be asked at all. Whether such a model earns its complexity on real process data is an empirical question, and the bar it has to clear is embarrassingly low and rarely reported: hold the last value.'
challengeEs: 'Los historiadores de planta guardan años de registros de proceso, y los modelos entrenados sobre ellos son casi siempre pronosticadores: dado el pasado, predecir los siguientes valores. Un pronosticador no puede responder la pregunta que un operador realmente tiene, que es qué pasaría si se tomara una acción distinta, porque la acción no es un argumento del modelo. Un modelo de mundo hace de la secuencia de acciones una entrada y devuelve una distribución sobre futuros, lo que convierte las preguntas de qué pasaría, la planificación y la detección de cambio de régimen en cosas que se pueden preguntar. Si un modelo así se gana su complejidad sobre datos reales de proceso es una pregunta empírica, y la vara que tiene que superar es vergonzosamente baja y rara vez reportada: mantener el último valor.'

approach: 'The engine is latentplant, a separately published package (PyPI, MIT) from its own repository; Porvenir is the product on the CAOS archetype under the full scientific contract. The ladder is ordered by what each rung can express: persistence (the bar), seasonal naive, VARX, GRU-D (does modelling a channel''s staleness beat masking it), DeepAR, MQ-RNN (how much long-horizon error is compounding rather than ignorance), a probabilistic ensemble that separates aleatoric from epistemic uncertainty, a patch transformer, a diagonal S4, a recurrent state-space model with KL balancing and free bits, and an ensembled RSSM that adds a usable epistemic signal; a Chronos zero-shot yardstick is scored per case on the same windows. Cases are the CC0 iron-ore flotation table (737,453 rows at 20 s, aggregated to the hourly assay cadence), the Tennessee Eastman archive with a separate surprise artifact, and two in-house simulators with ground truth. Each case declares its expectation and what would refute it before it runs; every rung must beat persistence per horizon or the report says it did not. The browser imagination lane runs the exported ONNX with onnxruntime-web; the reference library resolves 81 identifiers against arXiv and doi.org.'
approachEs: 'El motor es latentplant, un paquete publicado por separado (PyPI, MIT) desde su propio repositorio; Porvenir es el producto sobre el arquetipo CAOS bajo el contrato científico completo. La escalera está ordenada por lo que cada peldaño puede expresar: persistencia (la vara), ingenuo estacional, VARX, GRU-D (si modelar la antigüedad de un canal supera a enmascararla), DeepAR, MQ-RNN (cuánto del error a largo horizonte es acumulación y no ignorancia), un ensamble probabilístico que separa la incertidumbre aleatoria de la epistémica, un transformer de parches, un S4 diagonal, un modelo recurrente de espacio de estados con balanceo KL y bits libres, y un RSSM ensamblado que agrega una señal epistémica usable; un patrón de referencia Chronos sin entrenamiento se puntúa por caso sobre las mismas ventanas. Los casos son la tabla CC0 de flotación de mineral de hierro (737.453 filas a 20 s, agregadas a la cadencia horaria de ensayos), el archivo Tennessee Eastman con un artefacto separado de sorpresa, y dos simuladores propios con verdad conocida. Cada caso declara su expectativa y qué lo refutaría antes de correr; cada peldaño debe superar la persistencia por horizonte o el reporte dice que no lo hizo. La vía de imaginación del navegador corre el ONNX exportado con onnxruntime-web; la biblioteca de referencias resuelve 81 identificadores contra arXiv y doi.org.'

businessContext: 'For a plant the deliverable is not a forecast but an answer to what-if, with the two kinds of doubt kept apart: noise the plant cannot remove and ignorance more data would reduce. On the real flotation record the honest reading is on the case page: seven of nine learned rungs did not beat holding the last value at the hourly cadence, no action set beat persistence beyond the first step, and the case reports that the plant record does not identify controllable dynamics at that cadence. The product is a research instrument, not a plant control system; it issues no setpoint advice, and logged actions come from a closed loop, so observational data does not identify interventions without assumptions, which the footer states.'
businessContextEs: 'Para una planta el entregable no es un pronóstico sino una respuesta a qué pasaría, con los dos tipos de duda separados: el ruido que la planta no puede eliminar y la ignorancia que más datos reducirían. En el registro real de flotación la lectura honesta está en la página del caso: siete de nueve peldaños aprendidos no superaron mantener el último valor a la cadencia horaria, ningún conjunto de acciones superó la persistencia más allá del primer paso, y el caso reporta que el registro de planta no identifica dinámicas controlables a esa cadencia. El producto es un instrumento de investigación, no un sistema de control de planta; no emite consejos de setpoint, y las acciones registradas provienen de un lazo cerrado, así que los datos observacionales no identifican intervenciones sin supuestos, lo que declara el pie de página.'

strategicValue: 'Porvenir published its first numbers and then withdrew them: the 0.09.000 engine bake had a GRU-D rollout that never consumed the first future action, a biased CRPS estimator, an unseeded VARX and yardstick, and a subsampled yardstick with a mismatched aggregation, so every number from that bake was marked withdrawn and replaced by a re-bake, with the defects recorded in the product''s findings. The deploy script drives a real browser against the live URL and refuses on an empty root or any console error, after a green deploy once shipped a blank page whose title and data index were both correct. A CC-BY preprint carries the method and results on Zenodo. Its sibling Fragua ensembles closed-form equations where Porvenir learns latent dynamics.'
strategicValueEs: 'Porvenir publicó sus primeros números y luego los retiró: el horneado del motor 0.09.000 tenía un despliegue de GRU-D que nunca consumía la primera acción futura, un estimador CRPS sesgado, un VARX y un patrón sin semilla, y un patrón submuestreado con una agregación desajustada, así que cada número de ese horneado se marcó como retirado y se reemplazó por un nuevo horneado, con los defectos registrados en los hallazgos del producto. El script de despliegue maneja un navegador real contra la URL en vivo y se niega ante una raíz vacía o cualquier error de consola, después de que un despliegue verde entregó una vez una página en blanco cuyo título e índice de datos eran ambos correctos. Un preprint CC-BY lleva el método y los resultados en Zenodo. Su hermana Fragua ensambla ecuaciones de forma cerrada donde Porvenir aprende dinámicas latentes.'

kpis:
  - label: 'The bar is holding the last value'
    labelEs: 'La vara es mantener el último valor'
    baseline: 'Learned models reported against each other'
    baselineEs: 'Modelos aprendidos reportados entre sí'
    result: 'Every rung scored per horizon against persistence; on the real flotation record 7 of 9 learned rungs did not beat it at the hourly cadence'
    resultEs: 'Cada peldaño puntuado por horizonte contra la persistencia; en el registro real de flotación 7 de 9 peldaños aprendidos no la superaron a la cadencia horaria'
    impact: 'The case page says the record does not identify controllable dynamics at that cadence'
    impactEs: 'La página del caso dice que el registro no identifica dinámicas controlables a esa cadencia'
  - label: 'Two kinds of doubt, kept apart'
    labelEs: 'Dos tipos de duda, separados'
    baseline: 'One error bar'
    baselineEs: 'Una sola barra de error'
    result: 'A probabilistic ensemble and an ensembled recurrent state-space model separate aleatoric from epistemic uncertainty and expose the epistemic signal as actionable'
    resultEs: 'Un ensamble probabilístico y un modelo recurrente de espacio de estados ensamblado separan la incertidumbre aleatoria de la epistémica y exponen la señal epistémica como accionable'
    impact: 'Noise the plant cannot remove is told apart from ignorance more data would reduce'
    impactEs: 'El ruido que la planta no puede eliminar se distingue de la ignorancia que más datos reducirían'
  - label: 'Numbers withdrawn, then re-baked'
    labelEs: 'Números retirados, luego vueltos a hornear'
    baseline: 'A first bake published as final'
    baselineEs: 'Un primer horneado publicado como definitivo'
    result: 'Four defects found in the 0.09.000 engine bake (an action never consumed, a biased CRPS estimator, unseeded rungs, a mismatched yardstick aggregation); every number from it marked withdrawn and replaced'
    resultEs: 'Cuatro defectos encontrados en el horneado del motor 0.09.000 (una acción nunca consumida, un estimador CRPS sesgado, peldaños sin semilla, una agregación de patrón desajustada); cada número de ese horneado marcado como retirado y reemplazado'
    impact: 'The findings are part of the product'
    impactEs: 'Los hallazgos son parte del producto'

metrics:
  - label: 'Ladder'
    labelEs: 'Escalera'
    value: 'Persistence, seasonal naive, VARX, GRU-D, DeepAR, MQ-RNN, probabilistic ensemble, patch transformer, diagonal S4, RSSM, ensembled RSSM, plus a Chronos zero-shot yardstick scored on the same windows; 12 of 12 declared rungs implemented'
    valueEs: 'Persistencia, ingenuo estacional, VARX, GRU-D, DeepAR, MQ-RNN, ensamble probabilístico, transformer de parches, S4 diagonal, RSSM, RSSM ensamblado, más un patrón Chronos sin entrenamiento puntuado sobre las mismas ventanas; 12 de 12 peldaños declarados implementados'
  - label: 'Data'
    labelEs: 'Datos'
    value: 'The CC0 iron-ore flotation table (737,453 rows at 20 s, hourly assay cadence), the Tennessee Eastman archive (with a separate surprise artifact), two in-house simulators with ground truth; 10 of 13 declared cases baked'
    valueEs: 'La tabla CC0 de flotación de mineral de hierro (737.453 filas a 20 s, cadencia horaria de ensayos), el archivo Tennessee Eastman (con un artefacto separado de sorpresa), dos simuladores propios con verdad conocida; 10 de 13 casos declarados horneados'
  - label: 'Engine and browser lane'
    labelEs: 'Motor y vía del navegador'
    value: 'latentplant on PyPI (MIT) from its own repository, torch and numpy offline, ONNX export; the imagination lane runs in the browser with onnxruntime-web'
    valueEs: 'latentplant en PyPI (MIT) desde su propio repositorio, torch y numpy fuera de línea, exportación ONNX; la vía de imaginación corre en el navegador con onnxruntime-web'
  - label: 'Research and publication'
    labelEs: 'Investigación y publicación'
    value: 'Eight persisted dossiers; a reference library of 81 identifiers resolved against arXiv and doi.org; a CC-BY preprint on Zenodo (concept doi 10.5281/zenodo.22135520)'
    valueEs: 'Ocho dosieres persistidos; una biblioteca de referencias de 81 identificadores resueltos contra arXiv y doi.org; un preprint CC-BY en Zenodo (doi de concepto 10.5281/zenodo.22135520)'
  - label: 'Deploy and boundary'
    labelEs: 'Despliegue y límite'
    value: 'Private repository; static site on the ML VPS over HTTPS, version 0.03.000 served; the deploy drives a real browser against the live URL; a research product, not a plant control system, no setpoint advice'
    valueEs: 'Repositorio privado; sitio estático en el VPS de ML sobre HTTPS, versión 0.03.000 servida; el despliegue maneja un navegador real contra la URL en vivo; un producto de investigación, no un sistema de control de planta, sin consejos de setpoint'

stack: [Python, latentplant, PyTorch, NumPy, ONNX, onnxruntime-web, TypeScript, React, Vite, uPlot, KaTeX]
---
