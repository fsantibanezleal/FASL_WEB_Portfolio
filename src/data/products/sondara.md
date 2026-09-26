---
title: 'Sondara, a Local-First Drillhole Intelligence Workbench'
titleEs: 'Sondara, un Banco de Trabajo Local de Inteligencia de Sondajes'
slug: sondara
date: 2026-09-12
category: geotechnical
family: mining
excerpt: 'Collar, survey, assay and geology sources rendered as a WebGL subsurface reconstruction: surveyed borehole tubes, assay supports, an ore continuity shell, geology contacts and depth slicing, with no login and with uploaded data staying in the browser. The local estimate action recomputes support-weighted values, uncertainty, cross-validation and the grade profile for the selected method; the source loader parses assay CSV depth and value columns into the browser-side support set. The spatial-conditioning engine is the separately published geocond package. The public workbench does not claim a production resource estimate: QA and QC, compositing, variogram fitting, full covariance solvers, categorical simulation and competent-person review remain outside it, and the bounded numerical server lane is not promoted. Lifecycle: building.'
excerptEs: 'Fuentes de collar, desviación, ensayos y geología renderizadas como una reconstrucción WebGL del subsuelo: tubos de sondaje desviados, soportes de ensayo, una envolvente de continuidad de mineral, contactos geológicos y corte por profundidad, sin inicio de sesión y con los datos cargados quedándose en el navegador. La acción de estimación local recalcula valores ponderados por soporte, incertidumbre, validación cruzada y el perfil de ley para el método seleccionado; el cargador de fuentes interpreta columnas de profundidad y valor de un CSV de ensayos en el conjunto de soporte del navegador. El motor de condicionamiento espacial es el paquete geocond publicado por separado. El banco de trabajo público no afirma una estimación de recursos de producción: QA y QC, compositación, ajuste de variogramas, solucionadores de covarianza completa, simulación categórica y revisión por persona competente quedan fuera, y la vía numérica acotada de servidor no está promovida. Ciclo de vida: en construcción.'
icon: tabler:pick
tags: [drillholes, geostatistics, mining, webgl, local-first, spatial-conditioning, geocond, uncertainty]
proprietary: false
assetPatterns: [sondara]
github: 'https://github.com/fsantibanezleal/CAOS_Sondara'
demo: 'https://sondara.ml.fasl-work.com'
website: 'https://sondara.ml.fasl-work.com'

challenge: 'Drillhole data is where a mineral project''s value is decided and where its data is most fragmented: a collar table, a survey table, assay intervals and geology logs that only make sense when desurveyed together and looked at in three dimensions. The commercial workbenches that do this are desktop products; the open alternatives ask for a server or a notebook. And an estimate from that data carries a support, a variance and a cross-validation that most viewers hide. A browser workbench has to do the reconstruction locally, keep uploaded data on the machine, expose the estimate''s uncertainty and cross-validation, and state plainly that it is not a production resource estimate.'
challengeEs: 'Los datos de sondajes son donde se decide el valor de un proyecto minero y donde sus datos están más fragmentados: una tabla de collares, una tabla de desviaciones, intervalos de ensayo y registros geológicos que solo tienen sentido cuando se desvían juntos y se miran en tres dimensiones. Los bancos de trabajo comerciales que lo hacen son productos de escritorio; las alternativas abiertas piden un servidor o un cuaderno. Y una estimación a partir de esos datos lleva un soporte, una varianza y una validación cruzada que la mayoría de los visores esconde. Un banco de trabajo en el navegador tiene que hacer la reconstrucción localmente, mantener los datos cargados en la máquina, exponer la incertidumbre y la validación cruzada de la estimación, y declarar con claridad que no es una estimación de recursos de producción.'

approach: 'A local-first browser app: collar, survey, assay and geology sources are desurveyed and rendered in WebGL as borehole tubes, assay supports, an ore continuity shell and geology contacts with depth slicing, orbit and selection. The source loader parses assay CSV depth and value columns and adds observations to the browser-side support set; the local estimate action recomputes support-weighted values, uncertainty, cross-validation and the grade profile for the selected method, with seed cases shipped as explicit planning fixtures. The spatial-conditioning engine, support-aware conditioning, covariance estimation and sequential simulation, is geocond, a separately published package (PyPI 0.1.1) from its own repository; the product declares no package of its own. The repository also carries a strict job contract, reproducible data-pipeline scripts and a bounded server lane for reviewed numerical work that is not yet promoted. GitHub Pages plus a static mirror on the ML VPS serve the public workbench over HTTPS.'
approachEs: 'Una aplicación de navegador local primero: las fuentes de collar, desviación, ensayos y geología se desvían y renderizan en WebGL como tubos de sondaje, soportes de ensayo, una envolvente de continuidad de mineral y contactos geológicos con corte por profundidad, órbita y selección. El cargador de fuentes interpreta columnas de profundidad y valor de un CSV de ensayos y agrega observaciones al conjunto de soporte del navegador; la acción de estimación local recalcula valores ponderados por soporte, incertidumbre, validación cruzada y el perfil de ley para el método seleccionado, con casos semilla entregados como fixtures de planificación explícitos. El motor de condicionamiento espacial, condicionamiento consciente del soporte, estimación de covarianza y simulación secuencial, es geocond, un paquete publicado por separado (PyPI 0.1.1) desde su propio repositorio; el producto no declara paquete propio. El repositorio también lleva un contrato de trabajo estricto, scripts reproducibles de pipeline de datos y una vía acotada de servidor para trabajo numérico revisado que aún no está promovida. GitHub Pages más un espejo estático en el VPS de ML sirven el banco de trabajo público sobre HTTPS.'

businessContext: 'For a project geologist the value is a reconstruction that runs on the laptop with the drillholes at hand, no upload to anyone''s server, and an estimate that shows its support weights, its uncertainty and its cross-validation next to the number. What it is not, in the product''s own words: a production resource estimate. QA and QC, compositing, variogram fitting, full covariance solvers, categorical simulation and competent-person review are outside the public workbench; the learned method matrix is planned and not shown as done.'
businessContextEs: 'Para un geólogo de proyecto el valor está en una reconstrucción que corre en el portátil con los sondajes a mano, sin subir nada al servidor de nadie, y una estimación que muestra sus pesos de soporte, su incertidumbre y su validación cruzada junto al número. Lo que no es, en palabras del propio producto: una estimación de recursos de producción. QA y QC, compositación, ajuste de variogramas, solucionadores de covarianza completa, simulación categórica y revisión por persona competente están fuera del banco de trabajo público; la matriz de métodos aprendidos está planificada y no se muestra como hecha.'

strategicValue: 'Sondara is a public alpha with its plan as the implementation authority: the public product repository and the reproducible pipeline are released, the local vertical (assay parsing and the support-weighted estimator) is live, and the full covariance, categorical simulation and learned method matrix are recorded as planned. Its engine boundary was set deliberately, geocond published from its own repository on 2026-09-26, and the product grew from the same rebuild discipline as Aerovia. The lifecycle stays building, and the card says so.'
strategicValueEs: 'Sondara es un alfa público con su plan como autoridad de implementación: el repositorio público del producto y el pipeline reproducible están publicados, la vertical local (interpretación de ensayos y el estimador ponderado por soporte) está en vivo, y la covarianza completa, la simulación categórica y la matriz de métodos aprendidos están registradas como planificadas. Su límite de motor se fijó deliberadamente, geocond publicado desde su propio repositorio el 2026-09-26, y el producto nació de la misma disciplina de reconstrucción que Aerovia. El ciclo de vida sigue en construcción, y la tarjeta lo dice.'

kpis:
  - label: 'The data stays on the machine'
    labelEs: 'Los datos se quedan en la máquina'
    baseline: 'Upload the drillholes to a server or open a notebook'
    baselineEs: 'Subir los sondajes a un servidor o abrir un cuaderno'
    result: 'Desurvey, WebGL reconstruction, CSV parsing and the support-weighted estimate all run in the browser; no login'
    resultEs: 'Desviación, reconstrucción WebGL, interpretación de CSV y la estimación ponderada por soporte corren en el navegador; sin inicio de sesión'
    impact: 'A project geologist can look before sharing anything'
    impactEs: 'Un geólogo de proyecto puede mirar antes de compartir nada'
  - label: 'An estimate with its uncertainty attached'
    labelEs: 'Una estimación con su incertidumbre adjunta'
    baseline: 'A grade number without its support or validation'
    baselineEs: 'Un número de ley sin su soporte ni su validación'
    result: 'Support-weighted values, uncertainty, cross-validation and the grade profile recomputed for the selected method'
    resultEs: 'Valores ponderados por soporte, incertidumbre, validación cruzada y el perfil de ley recalculados para el método seleccionado'
    impact: 'The number and its doubt appear together'
    impactEs: 'El número y su duda aparecen juntos'
  - label: 'Not a resource estimate, in writing'
    labelEs: 'No es una estimación de recursos, por escrito'
    baseline: 'A viewer that implies a certified estimate'
    baselineEs: 'Un visor que insinúa una estimación certificada'
    result: 'QA and QC, compositing, variogram fitting, full covariance, categorical simulation and competent-person review stated as outside the public workbench'
    resultEs: 'QA y QC, compositación, ajuste de variogramas, covarianza completa, simulación categórica y revisión por persona competente declarados fuera del banco de trabajo público'
    impact: 'The scope is honest at alpha'
    impactEs: 'El alcance es honesto en alfa'

metrics:
  - label: 'Reconstruction'
    labelEs: 'Reconstrucción'
    value: 'Surveyed borehole tubes, assay supports, an ore continuity shell, geology contacts, depth slicing, orbit and selection in WebGL'
    valueEs: 'Tubos de sondaje desviados, soportes de ensayo, una envolvente de continuidad de mineral, contactos geológicos, corte por profundidad, órbita y selección en WebGL'
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'geocond (PyPI 0.1.1, published 2026-09-26 from its own repository): support-aware spatial conditioning, covariance estimation and sequential simulation; the product declares no package'
    valueEs: 'geocond (PyPI 0.1.1, publicado el 2026-09-26 desde su propio repositorio): condicionamiento espacial consciente del soporte, estimación de covarianza y simulación secuencial; el producto no declara paquete'
  - label: 'Planned, not shown as done'
    labelEs: 'Planificado, no mostrado como hecho'
    value: 'Full covariance solvers, categorical simulation, the learned method matrix, the bounded numerical server lane'
    valueEs: 'Solucionadores de covarianza completa, simulación categórica, la matriz de métodos aprendidos, la vía numérica acotada de servidor'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'GitHub Pages plus a static mirror on the ML VPS over HTTPS; version 0.02.001; public repository; lifecycle building'
    valueEs: 'GitHub Pages más un espejo estático en el VPS de ML sobre HTTPS; versión 0.02.001; repositorio público; ciclo de vida en construcción'

stack: [TypeScript, React, Vite, WebGL, Python, geocond, NumPy]
---
