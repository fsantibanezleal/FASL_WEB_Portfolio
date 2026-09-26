---
title: 'Neuraxis and reflexmesh, an Event-Driven Software Controller with Learned Metacontrol'
titleEs: 'Neuraxis y reflexmesh, un Controlador de Software Dirigido por Eventos con Metacontrol Aprendido'
slug: neuraxis
date: 2026-09-24
category: agentic-ai
family: agentic
excerpt: 'A fast, typed controller for software, files, tools and agents, with the ability to recruit slower language-model reasoning only where the outcome justifies it. The reusable core, reflexmesh, is a public Rust/PyO3 and Python package on PyPI: typed event-driven admission, registered fast actions with verified effects, learned control. Neuraxis is the private app on top: three native file tasks with real findings (verify a software release, reconcile CSV records, audit sources), matched controller executions that expose the controller''s evidence, and the scientific pages with shared tabs and a bibliography. The research claim is outcome-grounded allocation of deliberation in a recurrent, resource-versioned asynchronous controller. The corrected evaluation, 19,488 episodes, does not establish learned superiority: the fitted allocation gates select never-defer, and four fixed gates match the learned one. No AGI or biological claim is made.'
excerptEs: 'Un controlador rápido y tipado para software, archivos, herramientas y agentes, capaz de reclutar razonamiento más lento de modelos de lenguaje solo donde el resultado lo justifica. El núcleo reutilizable, reflexmesh, es un paquete público Rust/PyO3 y Python en PyPI: admisión tipada dirigida por eventos, acciones rápidas registradas con efectos verificados, control aprendido. Neuraxis es la aplicación privada encima: tres tareas nativas sobre archivos con hallazgos reales (verificar un release de software, conciliar registros CSV, auditar fuentes), ejecuciones emparejadas del controlador que exponen su evidencia, y las páginas científicas con pestañas compartidas y bibliografía. La afirmación de investigación es la asignación de deliberación fundamentada en resultados en un controlador asíncrono recurrente y versionado por recursos. La evaluación corregida, 19.488 episodios, no establece superioridad aprendida: las compuertas de asignación ajustadas eligen nunca diferir, y cuatro compuertas fijas igualan a la aprendida. No se afirma AGI ni equivalencia biológica.'
icon: tabler:cpu
tags: [software-control, agent-systems, learned-metacontrol, rust, pyo3, event-driven, machine-learning, honesty]
proprietary: true
assetPatterns: [neuraxis]
demo: 'https://neuraxis.ml.fasl-work.com'
website: 'https://pypi.org/project/reflexmesh/'

challenge: 'Agent frameworks route everything through a language model, which is slow, expensive and unaccountable for effects on files and systems, or they hard-code fast paths and lose the ability to think when the situation is new. Fast and slow routing alone is prior art. The open question is whether a controller can learn, from outcomes, when deliberation is worth its cost: a recurrent, resource-versioned asynchronous controller whose fast actions are typed and verified, and whose slow path is recruited only where the expected outcome justifies it. That claim needs declared ablations and held-out experiments before anyone can call it superior, and the first version of the app, simulation-first with an invented page structure, was rejected by its owner.'
challengeEs: 'Los marcos de agentes enrutan todo a través de un modelo de lenguaje, lento, caro e irresponsable de sus efectos sobre archivos y sistemas, o codifican rutas rápidas a mano y pierden la capacidad de pensar cuando la situación es nueva. El enrutamiento rápido y lento por sí solo es arte previo. La pregunta abierta es si un controlador puede aprender, a partir de resultados, cuándo la deliberación vale su costo: un controlador asíncrono recurrente y versionado por recursos cuyas acciones rápidas son tipadas y verificadas, y cuya ruta lenta se recluta solo donde el resultado esperado lo justifica. Esa afirmación necesita ablaciones declaradas y experimentos con datos retenidos antes de que alguien pueda llamarla superior, y la primera versión de la aplicación, centrada en simulación y con una estructura de páginas inventada, fue rechazada por su dueño.'

approach: 'Two repositories with a package boundary. reflexmesh, public and on PyPI (0.1.0, nine wheels plus a source distribution), owns the Rust/PyO3 admission layer, the typed event model, the learned control and the Python integration. Neuraxis, the private app, owns orchestration, canonical artifacts, the API and the bilingual CAOS workbench, with no internal installable package. The 0.02.000 rebuild made the App do real work on supplied files: verify a software release (map input files, validate source and configuration, check records and relationships, verify declared hashes, build a content manifest, resolve task dependencies, separate accepted and rejected rows, nine verified steps in an execution map with an action inspector), reconcile CSV records, and audit native sources, with independently checked outputs exported and the original files left unchanged. Matched controller executions compare runs and expose the controller''s evidence; the five scientific routes carry shared tabs, per-paragraph citations and a complete bibliography. The evaluation is a frozen matrix of 19,488 episodes (14,400 core, 288 structural transfer, 4,800 ablations) plus 36 compound task runs, and a bounded public service consumes the published runtime.'
approachEs: 'Dos repositorios con un límite de paquete. reflexmesh, público y en PyPI (0.1.0, nueve wheels más una distribución de fuente), es dueño de la capa de admisión Rust/PyO3, el modelo de eventos tipado, el control aprendido y la integración Python. Neuraxis, la aplicación privada, es dueña de la orquestación, los artefactos canónicos, la API y el banco de trabajo CAOS bilingüe, sin paquete interno instalable. La reconstrucción 0.02.000 hizo que la App trabajara de verdad sobre archivos entregados: verificar un release de software (mapear archivos de entrada, validar fuente y configuración, revisar registros y relaciones, verificar hashes declarados, construir un manifiesto de contenido, resolver dependencias de tareas, separar filas aceptadas y rechazadas, nueve pasos verificados en un mapa de ejecución con un inspector de acciones), conciliar registros CSV y auditar fuentes nativas, con salidas verificadas de forma independiente exportadas y los archivos originales sin cambios. Las ejecuciones emparejadas del controlador comparan corridas y exponen su evidencia; las cinco rutas científicas llevan pestañas compartidas, citas por párrafo y una bibliografía completa. La evaluación es una matriz congelada de 19.488 episodios (14.400 centrales, 288 de transferencia estructural, 4.800 de ablación) más 36 corridas de tareas compuestas, y un servicio público acotado consume el runtime publicado.'

businessContext: 'A controller that acts on files and systems has to be accountable for every effect: registered fast actions, verified outputs, originals untouched, and a slow reasoning path that is a measured recruit rather than the default. That is what makes it usable for release verification, record reconciliation and source audits where a language model alone would be too slow, too costly or impossible to trust with the write. The honest result is part of the product: on the corrected matrix the learned controller M12 reached 1,160 of 1,200 core successes against 1,200 of 1,200 for the exact baseline, both fitted allocation gates chose never to defer, and four fixed-gate ablations matched M12. Learned superiority is not established, and the site, the plan and this card say so.'
businessContextEs: 'Un controlador que actúa sobre archivos y sistemas tiene que responder por cada efecto: acciones rápidas registradas, salidas verificadas, originales intactos, y una ruta lenta de razonamiento que es un recluta medido y no la opción por defecto. Eso es lo que lo hace usable para verificación de releases, conciliación de registros y auditorías de fuentes donde un modelo de lenguaje solo sería demasiado lento, demasiado caro o imposible de confiar con la escritura. El resultado honesto es parte del producto: en la matriz corregida el controlador aprendido M12 alcanzó 1.160 de 1.200 éxitos centrales contra 1.200 de 1.200 de la línea base exacta, ambas compuertas de asignación ajustadas eligieron nunca diferir, y cuatro ablaciones de compuerta fija igualaron a M12. La superioridad aprendida no está establecida, y el sitio, el plan y esta tarjeta lo dicen.'

strategicValue: 'The line''s pattern is complete here: research dossiers first (source ledgers that distinguish a source read from an experiment reproduced), a defined two-repository plan, the reusable core published from its own repository, and an app that was rebuilt after its owner rejected the simulation-first version and its invented page structure. Private hosted CI is blocked by account billing, and the record says so rather than hiding it; the app is deployed at 0.02 on the ML VPS over HTTPS with bounded native operations. No AGI, biological equivalence or learned superiority is claimed; novelty would require the declared ablations and held-out experiments to come out differently than they did.'
strategicValueEs: 'El patrón de la línea está completo aquí: primero dosieres de investigación (libros de fuentes que distinguen una fuente leída de un experimento reproducido), un plan definido de dos repositorios, el núcleo reutilizable publicado desde su propio repositorio, y una aplicación reconstruida después de que su dueño rechazó la versión centrada en simulación y su estructura de páginas inventada. La CI alojada privada está bloqueada por la facturación de la cuenta, y el registro lo dice en lugar de ocultarlo; la aplicación está desplegada en 0.02 en el VPS de ML sobre HTTPS con operaciones nativas acotadas. No se afirma AGI, equivalencia biológica ni superioridad aprendida; la novedad requeriría que las ablaciones declaradas y los experimentos retenidos resultaran distintos de como resultaron.'

kpis:
  - label: 'Accountable fast actions'
    labelEs: 'Acciones rápidas responsables'
    baseline: 'Every step through a language model, effects unverified'
    baselineEs: 'Cada paso a través de un modelo de lenguaje, efectos sin verificar'
    result: 'Registered typed actions with verified effects on supplied files; originals unchanged; outputs independently checked and exported; nine verified steps in the release-verification task'
    resultEs: 'Acciones tipadas registradas con efectos verificados sobre archivos entregados; originales sin cambios; salidas verificadas de forma independiente y exportadas; nueve pasos verificados en la tarea de verificación de release'
    impact: 'A controller that can be trusted with the write'
    impactEs: 'Un controlador al que se le puede confiar la escritura'
  - label: 'The claim, measured and not established'
    labelEs: 'La afirmación, medida y no establecida'
    baseline: 'Fast-and-slow routing declared superior by construction'
    baselineEs: 'Enrutamiento rápido y lento declarado superior por construcción'
    result: '19,488 frozen episodes: M12 1,160 of 1,200 core successes against 1,200 of 1,200 for the exact baseline; both fitted gates select never-defer; four fixed-gate ablations match M12'
    resultEs: '19.488 episodios congelados: M12 1.160 de 1.200 éxitos centrales contra 1.200 de 1.200 de la línea base exacta; ambas compuertas ajustadas eligen nunca diferir; cuatro ablaciones de compuerta fija igualan a M12'
    impact: 'Learned superiority is not claimed, in the app and in the plan'
    impactEs: 'La superioridad aprendida no se afirma, ni en la app ni en el plan'
  - label: 'A package boundary that holds'
    labelEs: 'Un límite de paquete que se sostiene'
    baseline: 'The core buried inside a private app'
    baselineEs: 'El núcleo enterrado dentro de una app privada'
    result: 'reflexmesh public on PyPI (0.1.0, nine wheels plus sdist) from its own repository; the app declares no installable package of its own'
    resultEs: 'reflexmesh público en PyPI (0.1.0, nueve wheels más sdist) desde su propio repositorio; la app no declara paquete instalable propio'
    impact: 'The reusable part is reusable by anyone'
    impactEs: 'La parte reutilizable la puede reutilizar cualquiera'

metrics:
  - label: 'The core, reflexmesh'
    labelEs: 'El núcleo, reflexmesh'
    value: 'Rust/PyO3 admission, typed event-driven control, learned metacontrol and Python integration; public, MIT, PyPI 0.1.0 with nine wheels and a source distribution'
    valueEs: 'Admisión Rust/PyO3, control tipado dirigido por eventos, metacontrol aprendido e integración Python; público, MIT, PyPI 0.1.0 con nueve wheels y una distribución de fuente'
  - label: 'The app, Neuraxis'
    labelEs: 'La app, Neuraxis'
    value: 'Private repository; three native file tasks (verify a software release, reconcile CSV records, audit sources), matched controller executions, five scientific routes with shared tabs, per-paragraph citations and a bibliography; version 0.02 rebuilt on 2026-09-24 after the first version was rejected'
    valueEs: 'Repositorio privado; tres tareas nativas sobre archivos (verificar un release de software, conciliar registros CSV, auditar fuentes), ejecuciones emparejadas del controlador, cinco rutas científicas con pestañas compartidas, citas por párrafo y bibliografía; versión 0.02 reconstruida el 2026-09-24 después de que la primera versión fue rechazada'
  - label: 'Evaluation'
    labelEs: 'Evaluación'
    value: '19,488 episodes (14,400 core, 288 structural transfer, 4,800 ablations) plus 36 compound task runs, frozen and versioned; the declared ablations and held-out experiments are the test of any novelty claim'
    valueEs: '19.488 episodios (14.400 centrales, 288 de transferencia estructural, 4.800 de ablación) más 36 corridas de tareas compuestas, congelados y versionados; las ablaciones declaradas y los experimentos retenidos son la prueba de cualquier afirmación de novedad'
  - label: 'Research first'
    labelEs: 'Investigación primero'
    value: 'Dossiers on decision models, neuroscience, learning and control, benchmarks and architecture, with source ledgers that separate a source read from an experiment reproduced; no third-party benchmark reproduced'
    valueEs: 'Dosieres sobre modelos de decisión, neurociencia, aprendizaje y control, benchmarks y arquitectura, con libros de fuentes que separan una fuente leída de un experimento reproducido; ningún benchmark de terceros reproducido'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'ML VPS over HTTPS with bounded native operations; private hosted CI blocked by account billing, stated in the record; the reusable core is the public surface'
    valueEs: 'VPS de ML sobre HTTPS con operaciones nativas acotadas; CI alojada privada bloqueada por la facturación de la cuenta, declarado en el registro; el núcleo reutilizable es la superficie pública'

stack: [Rust, PyO3, Python, FastAPI, React, Vite, TypeScript]
---
