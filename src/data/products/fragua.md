---
title: 'Fragua, Ensembles of Phenomenological Models for Mining and Industrial Processes'
titleEs: 'Fragua, Ensambles de Modelos Fenomenológicos para Procesos Mineros e Industriales'
slug: fragua
date: 2026-09-18
category: scientific-ml
family: labs
excerpt: 'Instead of selecting one kinetic equation per unit process, Fragua fits many realizations, model families times parameter multistarts times bootstrap resamples, from a curated bank of phenomenological families, and aggregates them into calibrated ensemble models with structural inclusion probabilities: which model describes this process, with what confidence, and what that structural uncertainty means for prediction beyond the training envelope. The coined method, BAPE (Bootstrap-Aggregated Phenomenological Ensembles), is rung 6 of a twelve-rung measured ladder that also carries controls, a Bayesian model average, sparse discovery, a Kennedy-O''Hagan hybrid and deep ensembles, baked canonically over 30 variants; the browser runs a live lane through the published phenoforge wheel. A private research product with the concept''s novelty gap verified against literature and vendors. Lifecycle: building.'
excerptEs: 'En lugar de elegir una ecuación cinética por proceso unitario, Fragua ajusta muchas realizaciones, familias de modelos por multiarranques de parámetros por remuestreos bootstrap, desde un banco curado de familias fenomenológicas, y las agrega en modelos de ensamble calibrados con probabilidades de inclusión estructural: qué modelo describe este proceso, con qué confianza, y qué significa esa incertidumbre estructural para la predicción más allá de la envolvente de entrenamiento. El método acuñado, BAPE (Ensambles Fenomenológicos Agregados por Bootstrap), es el peldaño 6 de una escalera medida de doce peldaños que también lleva controles, un promedio bayesiano de modelos, descubrimiento disperso, un híbrido Kennedy-O''Hagan y ensambles profundos, horneada canónicamente sobre 30 variantes; el navegador corre una vía en vivo a través del wheel publicado de phenoforge. Un producto privado de investigación con la brecha de novedad del concepto verificada contra literatura y proveedores. Ciclo de vida: en construcción.'
icon: tabler:flame
tags: [phenomenological-models, ensembles, bootstrap, model-selection, flotation-kinetics, scientific-ml, uncertainty, mining]
proprietary: true
assetPatterns: [fragua]
demo: 'https://fragua.ml.fasl-work.com'
website: 'https://pypi.org/project/phenoforge/'

challenge: 'A flotation cell, a leach tank or a grinding circuit is usually modelled by picking one kinetic equation from a textbook and fitting its parameters, and the choice of equation, made once, carries more uncertainty than the parameters ever will. The physics-informed alternative fixes one residual and inherits the same problem. The question Fragua asks is structural: over a bank of published phenomenological families, which ones does the data support, with what probability, and how wide is the prediction band once that structural doubt is carried instead of hidden. The research pass found the concept absent from the literature and from vendor tooling, and that verified gap is the reason the product exists.'
challengeEs: 'Una celda de flotación, un tanque de lixiviación o un circuito de molienda suele modelarse eligiendo una ecuación cinética de un libro de texto y ajustando sus parámetros, y la elección de la ecuación, hecha una vez, carga más incertidumbre de la que los parámetros cargarán jamás. La alternativa informada por física fija un residual y hereda el mismo problema. La pregunta que hace Fragua es estructural: sobre un banco de familias fenomenológicas publicadas, cuáles sostiene la evidencia, con qué probabilidad, y qué tan ancha es la banda de predicción una vez que esa duda estructural se lleva en lugar de esconderse. El pase de investigación encontró el concepto ausente de la literatura y de las herramientas de proveedores, y esa brecha verificada es la razón por la que existe el producto.'

approach: 'The engine is phenoforge, a separately published package (PyPI, MIT) from its own repository: the family bank, the multistart fitting, the bootstrap aggregation and the samplers. Fragua is the product on the CAOS archetype under the full scientific contract: a 14-case matrix over seven unit processes with clean, dense, noisy, rough and sparse variants, a misspecified control whose truth lies outside every family, and a twelve-rung ladder baked canonically over 30 variants: controls, the ensemble core with BAPE at rung 6, a BIC-weighted Bayesian model average through a Goodman-Weare sampler, ensemble SINDy with seeded bagging and blow-up-bounded integration, a Kennedy-O''Hagan Gaussian-process hybrid, and a learned tier of deep ensembles and a mixture of phenomenological experts on deterministic torch. The workbench shows the fan of realizations, the structural fingerprint per family, calibration and family cards, and a real live lane that installs the published phenoforge wheel in the browser through Pyodide and micropip. Every benchmark number ships as a committed artifact aggregated from traces after a completeness validator passes; the web reads only artifacts. The data vault holds SHA-256-frozen sources including the CC0 iron-ore flotation plant table and the Tennessee Eastman archive.'
approachEs: 'El motor es phenoforge, un paquete publicado por separado (PyPI, MIT) desde su propio repositorio: el banco de familias, el ajuste por multiarranque, la agregación bootstrap y los muestreadores. Fragua es el producto sobre el arquetipo CAOS bajo el contrato científico completo: una matriz de 14 casos sobre siete procesos unitarios con variantes limpias, densas, ruidosas, ásperas y escasas, un control mal especificado cuya verdad queda fuera de todas las familias, y una escalera de doce peldaños horneada canónicamente sobre 30 variantes: controles, el núcleo de ensambles con BAPE en el peldaño 6, un promedio bayesiano de modelos ponderado por BIC mediante un muestreador Goodman-Weare, SINDy de ensamble con bagging con semilla e integración acotada contra explosiones, un híbrido de proceso gaussiano Kennedy-O''Hagan, y un nivel aprendido de ensambles profundos y una mezcla de expertos fenomenológicos sobre torch determinista. El banco de trabajo muestra el abanico de realizaciones, la huella estructural por familia, calibración y tarjetas de familia, y una vía en vivo real que instala el wheel publicado de phenoforge en el navegador a través de Pyodide y micropip. Cada número de benchmark se entrega como artefacto versionado agregado desde trazas después de que pasa un validador de completitud; la web lee solo artefactos. La bóveda de datos guarda fuentes congeladas por SHA-256 incluida la tabla CC0 de la planta de flotación de mineral de hierro y el archivo Tennessee Eastman.'

businessContext: 'For a process engineer the deliverable is the question answered in the order it should be: which model describes this process and with what confidence, then the estimate with a band that reflects structural doubt rather than parameter noise alone. The misspecified control exists to show what the fingerprint does when no family is right. The plan was validated by its owner on 2026-08-25 before the build, the four dossiers are persisted, and the at-bar review of the shipped product is his call; the lifecycle stays building and no adoption is claimed.'
businessContextEs: 'Para un ingeniero de procesos el entregable es la pregunta respondida en el orden en que debe: qué modelo describe este proceso y con qué confianza, y luego la estimación con una banda que refleja la duda estructural y no solo el ruido de parámetros. El control mal especificado existe para mostrar qué hace la huella cuando ninguna familia es correcta. El plan fue validado por su dueño el 2026-08-25 antes de la construcción, los cuatro dosieres están persistidos, y la revisión de altura del producto entregado es su decisión; el ciclo de vida sigue en construcción y no se afirma adopción.'

strategicValue: 'Fragua is a research product with its own coined method and a package boundary that holds: phenoforge is public on PyPI from its own repository, the product declares none. Its CI had a workflow whose triggers had never registered, found and fixed on 2026-09-18 (0.05.001); the live-content check after the first deploy caught a residue title and a stale engine version, both fixed the same day. Its sibling Porvenir learns latent dynamics from data where Fragua fits and ensembles closed-form equations: same industry, different object, different engine.'
strategicValueEs: 'Fragua es un producto de investigación con un método propio acuñado y un límite de paquete que se sostiene: phenoforge es público en PyPI desde su propio repositorio, el producto no declara ninguno. Su CI tenía un flujo cuyos disparadores nunca se habían registrado, encontrado y corregido el 2026-09-18 (0.05.001); el chequeo de contenido en vivo tras el primer despliegue atrapó un título residual y una versión de motor obsoleta, ambos corregidos el mismo día. Su hermana Porvenir aprende dinámicas latentes de los datos donde Fragua ajusta y ensambla ecuaciones de forma cerrada: misma industria, distinto objeto, distinto motor.'

kpis:
  - label: 'Structure as an estimated quantity'
    labelEs: 'La estructura como cantidad estimada'
    baseline: 'One kinetic equation chosen once, its parameters fitted'
    baselineEs: 'Una ecuación cinética elegida una vez, sus parámetros ajustados'
    result: 'Families times multistarts times bootstrap resamples aggregated into a calibrated ensemble with structural inclusion probabilities per family'
    resultEs: 'Familias por multiarranques por remuestreos bootstrap agregados en un ensamble calibrado con probabilidades de inclusión estructural por familia'
    impact: 'The model choice carries its uncertainty into the prediction band'
    impactEs: 'La elección de modelo lleva su incertidumbre a la banda de predicción'
  - label: 'A control that no family can fit'
    labelEs: 'Un control que ninguna familia puede ajustar'
    baseline: 'Cases where some family is always right'
    baselineEs: 'Casos donde alguna familia siempre acierta'
    result: 'A misspecified control with a linear-ramp truth outside every family, so the fingerprint can be seen behaving when the bank is wrong'
    resultEs: 'Un control mal especificado con una verdad de rampa lineal fuera de todas las familias, para ver cómo se comporta la huella cuando el banco está equivocado'
    impact: 'The method is shown failing where it should'
    impactEs: 'El método se muestra fallando donde debe'
  - label: 'A ladder, not a single method'
    labelEs: 'Una escalera, no un solo método'
    baseline: 'BAPE alone'
    baselineEs: 'BAPE solo'
    result: 'Twelve rungs baked over 30 variants: controls, the ensemble core, a Bayesian model average, ensemble SINDy, a Kennedy-O''Hagan hybrid, deep ensembles and a mixture of experts; a 360-row benchmark artifact'
    resultEs: 'Doce peldaños horneados sobre 30 variantes: controles, el núcleo de ensambles, un promedio bayesiano de modelos, SINDy de ensamble, un híbrido Kennedy-O''Hagan, ensambles profundos y una mezcla de expertos; un artefacto de benchmark de 360 filas'
    impact: 'BAPE is compared against the discovery and hybrid alternatives'
    impactEs: 'BAPE se compara contra las alternativas de descubrimiento e híbridas'

metrics:
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'phenoforge on PyPI (MIT) from its own repository: the family bank, multistart fitting, bootstrap aggregation, the Goodman-Weare sampler; installed in the browser through Pyodide and micropip for the live lane'
    valueEs: 'phenoforge en PyPI (MIT) desde su propio repositorio: el banco de familias, ajuste por multiarranque, agregación bootstrap, el muestreador Goodman-Weare; instalado en el navegador a través de Pyodide y micropip para la vía en vivo'
  - label: 'Cases'
    labelEs: 'Casos'
    value: '14 cases over seven unit processes with clean, dense, noisy, rough and sparse variants and a misspecified control; 30 variants baked canonically; frozen sources include the CC0 iron-ore flotation plant table and the Tennessee Eastman archive'
    valueEs: '14 casos sobre siete procesos unitarios con variantes limpias, densas, ruidosas, ásperas y escasas y un control mal especificado; 30 variantes horneadas canónicamente; las fuentes congeladas incluyen la tabla CC0 de la planta de flotación de mineral de hierro y el archivo Tennessee Eastman'
  - label: 'Workbench'
    labelEs: 'Banco de trabajo'
    value: 'Fan of realizations, structural fingerprint per family, calibration and family cards on uPlot; Field, Live, Charts and Context sub-tabs; six pages on the shared shell, EN and ES, light and dark'
    valueEs: 'Abanico de realizaciones, huella estructural por familia, calibración y tarjetas de familia en uPlot; sub-pestañas Field, Live, Charts y Context; seis páginas en el shell compartido, EN y ES, claro y oscuro'
  - label: 'Research'
    labelEs: 'Investigación'
    value: 'Four persisted dossiers; a novelty verdict that the BAPE crossing is absent from the literature and vendor tooling; a 36-family bank catalogued; the plan validated by its owner on 2026-08-25 before the build'
    valueEs: 'Cuatro dosieres persistidos; un veredicto de novedad de que el cruce BAPE está ausente de la literatura y de las herramientas de proveedores; un banco de 36 familias catalogado; el plan validado por su dueño el 2026-08-25 antes de la construcción'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Private repository; static site on the ML VPS over HTTPS; version 0.05.001; MIT; lifecycle building, at-bar review pending'
    valueEs: 'Repositorio privado; sitio estático en el VPS de ML sobre HTTPS; versión 0.05.001; MIT; ciclo de vida en construcción, revisión de altura pendiente'

stack: [Python, phenoforge, SciPy, PySINDy, PyTorch, Pyodide, TypeScript, React, Vite, uPlot, KaTeX]
---
