---
title: 'Aerovia, an Underground Ventilation Design and Analysis Workbench in the Browser'
titleEs: 'Aerovia, un Banco de Trabajo de Diseño y Análisis de Ventilación Subterránea en el Navegador'
slug: aerovia
date: 2026-09-12
category: mining-simulation
family: platforms
excerpt: 'Draw a ventilation network in 3D, place boundaries and fans, and solve it: flow, pressure, paths, recirculation, fan duty, sensitivity, energy and baseline comparisons, then release a conservative passive tracer with pulse or continuous sources, scheduled changes, timeline playback and a complete mass ledger. Trained MLP and graph models ship as 24 ONNX exports with their held-out approximation limits stated. Twelve authored network cases, 33,792 learned dataset states and a 216-cell benchmark are reproducible from the public scripts; imports, numerical workers and inference all run in the browser. The networks are planning inputs, not measured operational mines, and no industrial saving or field calibration is claimed. A first version was rejected and rebuilt in full from the CAOS template.'
excerptEs: 'Dibuja una red de ventilación en 3D, coloca fronteras y ventiladores, y resuélvela: caudal, presión, rutas, recirculación, punto de operación de ventiladores, sensibilidad, energía y comparaciones contra línea base; luego libera un trazador pasivo conservativo con fuentes de pulso o continuas, cambios programados, reproducción en línea de tiempo y un libro de masa completo. Modelos MLP y de grafos entrenados se entregan como 24 exportaciones ONNX con sus límites de aproximación medidos fuera de muestra. Doce casos de red redactados a mano, 33.792 estados de dataset aprendido y un benchmark de 216 celdas son reproducibles desde los scripts públicos; importaciones, workers numéricos e inferencia corren en el navegador. Las redes son insumos de planificación, no minas operativas medidas, y no se afirma ningún ahorro industrial ni calibración en terreno. Una primera versión fue rechazada y reconstruida por completo desde la plantilla CAOS.'
icon: tabler:wind
tags: [mining, ventilation, network-solver, tracer-transport, onnx, three-js, browser-compute, energy]
proprietary: false
assetPatterns: [aerovia]
github: 'https://github.com/fsantibanezleal/CAOS_Aerovia'
demo: 'https://aerovia.fasl-work.com'
website: 'https://aerovia.fasl-work.com'

challenge: 'Underground ventilation is a network problem with a spatial body: airways have lengths, grades and resistances, fans have curves, and the questions a planner asks are about paths, recirculation and what happens to a contaminant released at one face over the next hour. The commercial tools that answer them are desktop products with closed formats. A browser workbench has to hold the whole loop, from drawing the network to reading a mass ledger, without a server, and it has to say what its learned surrogates can and cannot approximate. The first version of this product did not reach that bar and was rejected; the rebuild started again from the product template with the shared shell, and the rejected version is recorded as such.'
challengeEs: 'La ventilación subterránea es un problema de red con un cuerpo espacial: las galerías tienen largo, pendiente y resistencia, los ventiladores tienen curvas, y las preguntas que hace un planificador son sobre rutas, recirculación y qué pasa con un contaminante liberado en una frente durante la próxima hora. Las herramientas comerciales que las responden son productos de escritorio con formatos cerrados. Un banco de trabajo en el navegador tiene que sostener el ciclo completo, desde dibujar la red hasta leer un libro de masa, sin servidor, y tiene que decir qué pueden y qué no pueden aproximar sus sustitutos aprendidos. La primera versión de este producto no alcanzó ese nivel y fue rechazada; la reconstrucción partió de nuevo desde la plantilla de producto con el shell compartido, y la versión rechazada queda registrada como tal.'

approach: 'Direct spatial design in the 3D instrument: draw, connect, move and split airways, set boundaries and fans, import mapped node and airway CSV, undo and recover, and carry a project as a portable file. The numerical tools link flow, pressure, paths, recirculation, fan duty, sensitivity, energy and baseline comparisons on the same network. Transport is a conservative passive tracer with pulse or continuous sources, scheduled changes, timeline playback and complete mass ledgers, and since 0.02.001 the solved airflow field is animated: moving tracer particles from the signed transport field, concentration-aware colour, animated fan rotors and a live-airflow marker, paused while the architecture dialog is open. Trained MLP and graph models keep their checkpoints and ship as 24 ONNX exports with held-out approximation limits, so a learned answer is labelled by how far it may be from the solver. The published CAOS shell supplies six bilingual, themed routes and the architecture modal; one tool pane accompanies the dominant instrument and focus fills the viewport. GitHub Pages is sufficient because imports, numerical workers and inference run locally in the browser; the heavy reference and GPU processing runs with public local scripts, and twelve authored network cases, 33,792 learned dataset states and the complete 216-cell benchmark are reproducible from them.'
approachEs: 'Diseño espacial directo en el instrumento 3D: dibujar, conectar, mover y dividir galerías, fijar fronteras y ventiladores, importar CSV mapeados de nodos y galerías, deshacer y recuperar, y llevar un proyecto como archivo portable. Las herramientas numéricas enlazan caudal, presión, rutas, recirculación, punto de operación de ventiladores, sensibilidad, energía y comparaciones contra línea base sobre la misma red. El transporte es un trazador pasivo conservativo con fuentes de pulso o continuas, cambios programados, reproducción en línea de tiempo y libros de masa completos, y desde 0.02.001 el campo de flujo resuelto está animado: partículas trazadoras moviéndose según el campo de transporte con signo, color según concentración, rotores de ventilador animados y un marcador de flujo en vivo, en pausa mientras el diálogo de arquitectura está abierto. Modelos MLP y de grafos entrenados conservan sus checkpoints y se entregan como 24 exportaciones ONNX con límites de aproximación fuera de muestra, de modo que una respuesta aprendida queda etiquetada por cuánto puede alejarse del solver. El shell CAOS publicado entrega seis rutas bilingües con tema y el modal de arquitectura; un panel de herramienta acompaña al instrumento dominante y el foco llena la ventana. GitHub Pages basta porque importaciones, workers numéricos e inferencia corren localmente en el navegador; el procesamiento pesado de referencia y GPU corre con scripts locales públicos, y doce casos de red redactados a mano, 33.792 estados de dataset aprendido y el benchmark completo de 216 celdas son reproducibles desde ellos.'

businessContext: 'A ventilation plan decides fan energy, which is one of the largest continuous power loads of an underground mine, and it decides whether a face can be worked after a blast or a diesel event. A workbench that lets a planner draw an alternative, solve it and watch a tracer clear the circuit, with the energy and the fan duty on the same screen, shortens the loop between an idea and a number. The learned models exist to make that loop faster on repeated designs, and they ship with the limit at which they stop being trustworthy. What the product does not offer is the claim: the twelve networks are authored planning inputs, no operational mine was measured, and user acceptance, industrial savings, field calibration and adoption are explicitly not claimed.'
businessContextEs: 'Un plan de ventilación decide la energía de los ventiladores, una de las mayores cargas eléctricas continuas de una mina subterránea, y decide si una frente puede trabajarse después de una tronadura o de un evento diésel. Un banco de trabajo que le permite a un planificador dibujar una alternativa, resolverla y ver un trazador despejar el circuito, con la energía y el punto de operación en la misma pantalla, acorta el ciclo entre una idea y un número. Los modelos aprendidos existen para hacer ese ciclo más rápido en diseños repetidos, y se entregan con el límite en que dejan de ser confiables. Lo que el producto no ofrece es la afirmación: las doce redes son insumos de planificación redactados a mano, no se midió ninguna mina operativa, y la aceptación de usuario, los ahorros industriales, la calibración en terreno y la adopción explícitamente no se afirman.'

strategicValue: 'Aerovia is the case in the line where a rejected first version was replaced rather than patched. The v0.02.000 rebuild is recorded in a release receipt that ties source promotion, executed pipelines, public runtime verification and downloadable artifacts to exact commits, and the public site passed 34 Chromium journeys without retries, five direct-route refresh checks and all 24 model inference checks; every one of the 119 runtime files and a daily monitor are verified against the deployed commit. Code and authored networks are Apache-2.0. The separately authorised drillhole product, Sondara, is the sibling that grew from the same rebuild discipline.'
strategicValueEs: 'Aerovia es el caso de la línea en que una primera versión rechazada fue reemplazada en lugar de parchada. La reconstrucción v0.02.000 queda registrada en un recibo de release que ata la promoción del código, los pipelines ejecutados, la verificación pública en tiempo de ejecución y los artefactos descargables a commits exactos, y el sitio público pasó 34 recorridos en Chromium sin reintentos, cinco chequeos de recarga por ruta directa y los 24 chequeos de inferencia de modelos; cada uno de los 119 archivos de tiempo de ejecución y un monitor diario se verifican contra el commit desplegado. El código y las redes redactadas son Apache-2.0. El producto de sondajes autorizado por separado, Sondara, es el hermano que creció de la misma disciplina de reconstrucción.'

kpis:
  - label: 'The whole loop in the browser'
    labelEs: 'El ciclo completo en el navegador'
    baseline: 'Desktop tools with closed formats; a server for anything numerical'
    baselineEs: 'Herramientas de escritorio con formatos cerrados; un servidor para todo lo numérico'
    result: 'Draw, solve, trace and infer locally: imports, numerical workers and 24 ONNX models run client-side on a static site'
    resultEs: 'Dibujar, resolver, trazar e inferir localmente: importaciones, workers numéricos y 24 modelos ONNX corren del lado del cliente en un sitio estático'
    impact: 'No installation, no data leaves the machine'
    impactEs: 'Sin instalación, ningún dato sale de la máquina'
  - label: 'Learned answers with their limit attached'
    labelEs: 'Respuestas aprendidas con su límite adjunto'
    baseline: 'A surrogate returns a number with no statement of trust'
    baselineEs: 'Un sustituto devuelve un número sin declaración de confianza'
    result: 'MLP and graph models keep their checkpoints and ship with held-out approximation limits over 33,792 dataset states and a 216-cell benchmark'
    resultEs: 'Los modelos MLP y de grafos conservan sus checkpoints y se entregan con límites de aproximación fuera de muestra sobre 33.792 estados de dataset y un benchmark de 216 celdas'
    impact: 'The planner knows when to fall back to the solver'
    impactEs: 'El planificador sabe cuándo volver al solver'
  - label: 'A rejected version, replaced'
    labelEs: 'Una versión rechazada, reemplazada'
    baseline: 'v0.01.000, rejected by its owner'
    baselineEs: 'v0.01.000, rechazada por su dueño'
    result: 'v0.02.000 rebuilt from the product template on the shared shell, with a release receipt tying evidence to exact commits; v0.02.001 adds the animated airflow field'
    resultEs: 'v0.02.000 reconstruida desde la plantilla de producto sobre el shell compartido, con un recibo de release que ata la evidencia a commits exactos; v0.02.001 agrega el campo de flujo animado'
    impact: 'The rejection is part of the public record'
    impactEs: 'El rechazo es parte del registro público'

metrics:
  - label: 'Design'
    labelEs: 'Diseño'
    value: 'Draw, connect, move and split airways; boundaries and fans; mapped node and airway CSV import; undo and recovery; portable projects'
    valueEs: 'Dibujar, conectar, mover y dividir galerías; fronteras y ventiladores; importación CSV mapeada de nodos y galerías; deshacer y recuperación; proyectos portables'
  - label: 'Numerical tools'
    labelEs: 'Herramientas numéricas'
    value: 'Flow, pressure, paths, recirculation, fan duty, sensitivity, energy and baseline comparisons on one network'
    valueEs: 'Caudal, presión, rutas, recirculación, punto de operación de ventiladores, sensibilidad, energía y comparaciones contra línea base sobre una red'
  - label: 'Transport'
    labelEs: 'Transporte'
    value: 'Conservative passive tracer; pulse and continuous sources; scheduled changes; timeline playback; complete mass ledgers; animated field with particles, concentration colour and fan rotors (0.02.001)'
    valueEs: 'Trazador pasivo conservativo; fuentes de pulso y continuas; cambios programados; reproducción en línea de tiempo; libros de masa completos; campo animado con partículas, color por concentración y rotores (0.02.001)'
  - label: 'Verification'
    labelEs: 'Verificación'
    value: '34 Chromium journeys without retries, 5 direct-route refresh checks, 24 model inference checks; 119 runtime files and a daily monitor verified against the served commit'
    valueEs: '34 recorridos en Chromium sin reintentos, 5 chequeos de recarga por ruta directa, 24 chequeos de inferencia; 119 archivos de tiempo de ejecución y un monitor diario verificados contra el commit servido'
  - label: 'Not claimed'
    labelEs: 'No afirmado'
    value: 'User acceptance, industrial savings, field calibration, adoption; the twelve networks are authored planning inputs, not measured mines'
    valueEs: 'Aceptación de usuario, ahorros industriales, calibración en terreno, adopción; las doce redes son insumos de planificación redactados a mano, no minas medidas'
  - label: 'Deploy and licence'
    labelEs: 'Despliegue y licencia'
    value: 'GitHub Pages at a custom domain over HTTPS; Apache-2.0 code and authored networks; shared @fasl-work/caos-app-shell with six routes and the architecture modal'
    valueEs: 'GitHub Pages en dominio propio sobre HTTPS; código y redes redactadas Apache-2.0; shell compartido @fasl-work/caos-app-shell con seis rutas y el modal de arquitectura'

stack: [TypeScript, React, Vite, Three.js, Web Workers, ONNX Runtime Web, Python, PyTorch, NumPy]
---
