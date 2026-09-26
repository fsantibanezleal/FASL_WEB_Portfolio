---
title: 'Plega, a Rigid-Paper Mechanism Workshop from Editable Design to Actual-Size Cut Files'
titleEs: 'Plega, un Taller de Mecanismos de Papel Rígido desde el Diseño Editable hasta Archivos de Corte a Tamaño Real'
slug: plega
date: 2026-09-10
category: 3d-visualization
family: outreach
excerpt: 'A paper-mechanism workshop that connects an original editable design to a moving rigid-paper view, explicit geometric diagnoses, pinned repair comparisons, actual-size vector export and assembly progress. Two restricted mechanism families, up to six separated lanes, six original starters and two deliberately invalid repair cases; every physical coordinate in millimetres; calibrated PDF, SVG, FOLD and JSON export; twelve editable cutwork compositions with transactional direct editing on the canvas. The model is rigid zero-thickness panels: it does not predict material stiffness, fold forces, glue performance or printer calibration, a lane-bound overlap means uncertified separation rather than a certain collision, and finite repair proposals do not claim global optimality. Lifecycle: building.'
excerptEs: 'Un taller de mecanismos de papel que conecta un diseño original editable con una vista móvil de papel rígido, diagnósticos geométricos explícitos, comparaciones de reparación fijadas, exportación vectorial a tamaño real y progreso de ensamblaje. Dos familias de mecanismos restringidas, hasta seis carriles separados, seis puntos de partida originales y dos casos de reparación deliberadamente inválidos; cada coordenada física en milímetros; exportación calibrada a PDF, SVG, FOLD y JSON; doce composiciones de calado editables con edición directa transaccional sobre el lienzo. El modelo son paneles rígidos de espesor cero: no predice rigidez del material, fuerzas de plegado, desempeño del pegamento ni calibración de la impresora, un traslape dentro de un carril significa separación no certificada y no una colisión segura, y las propuestas finitas de reparación no afirman optimalidad global. Ciclo de vida: en construcción.'
icon: tabler:fold
tags: [paper-engineering, origami, kinematics, geometry, fabrication, svg, pdf, three-js]
proprietary: false
assetPatterns: [plega]
github: 'https://github.com/fsantibanezleal/CAOS_Plega'
demo: 'https://plega.fasl-work.com'
website: 'https://plega.fasl-work.com'

challenge: 'A paper mechanism is designed flat, judged in motion and fabricated at actual size, and the three usually live in three tools that do not agree: a drawing that cannot move, a rendering that cannot be cut, and a print whose millimetres drifted somewhere in between. A workshop that keeps one editable design as the source, moves it as rigid panels, diagnoses what breaks (lanes that overlap, panels that collide, pins that will not hold) and exports the cut file at the size the printer will honour has to be honest about what a zero-thickness model can and cannot say about real paper.'
challengeEs: 'Un mecanismo de papel se diseña plano, se juzga en movimiento y se fabrica a tamaño real, y las tres cosas suelen vivir en tres herramientas que no coinciden: un dibujo que no se mueve, un render que no se puede cortar, y una impresión cuyos milímetros se desviaron en algún punto intermedio. Un taller que mantiene un solo diseño editable como fuente, lo mueve como paneles rígidos, diagnostica lo que se rompe (carriles que se traslapan, paneles que chocan, pasadores que no sostienen) y exporta el archivo de corte al tamaño que la impresora respetará tiene que ser honesto sobre lo que un modelo de espesor cero puede y no puede decir del papel real.'

approach: 'One editable design, twelve cutwork compositions and six original starters over two restricted mechanism families and up to six separated lanes, edited directly and transactionally on the canvas with valid creation, recovery and fabrication. The rigid-paper view moves the design as zero-thickness panels; geometric diagnoses are explicit (overlap within a lane, collision, separation); repair proposals are finite, pinned and compared side by side against the original; assembly progress is tracked; export is calibrated PDF and SVG at actual size, plus FOLD and JSON, with every physical coordinate in millimetres. The stack is React 19, TypeScript, Vite, Three.js and pdf-lib with a locked Playwright, and a Python standard-library data compiler; both languages and themes; anonymous use with no account. Two invalid repair cases are shipped on purpose so the diagnoses can be seen failing correctly.'
approachEs: 'Un solo diseño editable, doce composiciones de calado y seis puntos de partida originales sobre dos familias de mecanismos restringidas y hasta seis carriles separados, editados directa y transaccionalmente sobre el lienzo con creación válida, recuperación y fabricación. La vista de papel rígido mueve el diseño como paneles de espesor cero; los diagnósticos geométricos son explícitos (traslape dentro de un carril, colisión, separación); las propuestas de reparación son finitas, fijadas y comparadas lado a lado con el original; se sigue el progreso de ensamblaje; la exportación es PDF y SVG calibrados a tamaño real, más FOLD y JSON, con cada coordenada física en milímetros. La pila es React 19, TypeScript, Vite, Three.js y pdf-lib con un Playwright fijado, y un compilador de datos Python de biblioteca estándar; ambos idiomas y temas; uso anónimo sin cuenta. Dos casos de reparación inválidos se entregan a propósito para que los diagnósticos puedan verse fallando correctamente.'

businessContext: 'For a maker, a teacher or a designer of pop-up work, the value is that the file that leaves the workshop is the file that gets cut, at the size it was designed, with the failures found before the paper is. The boundaries are the product''s own words: the research model uses rigid zero-thickness panels; it does not predict material stiffness, fold forces, glue performance, printer calibration or physical assembly success; lane-bound overlap means uncertified separation, not necessarily a collision; finite repair proposals do not claim global optimality. Apache-2.0 code, MIT design data, the embedded Noto Sans under its OFL attribution.'
businessContextEs: 'Para un maker, un profesor o un diseñador de trabajos desplegables, el valor está en que el archivo que sale del taller es el archivo que se corta, al tamaño en que se diseñó, con las fallas encontradas antes que el papel. Los límites son las propias palabras del producto: el modelo de investigación usa paneles rígidos de espesor cero; no predice rigidez del material, fuerzas de plegado, desempeño del pegamento, calibración de la impresora ni éxito del ensamblaje físico; el traslape dentro de un carril significa separación no certificada, no necesariamente una colisión; las propuestas finitas de reparación no afirman optimalidad global. Código Apache-2.0, datos de diseño MIT, la Noto Sans incrustada bajo su atribución OFL.'

strategicValue: 'Plega grew out of the same rebuild discipline as its sibling Floraria and is kept separate from it, with its own history and deployment preserved. Each release is recorded with its exact main commit, release identifier and the Quality and Pages run that verified source and data, the production build, a locked Chromium, artifact immutability, the custom-domain binding and the publication: 0.01.000 on 2026-09-09, 0.02.000 with direct canvas editing, 0.05.000 as the current artifact. 105 frontend and 24 Python tests, 14 CI and 14 live browser groups. Not claimed, in writing: adoption, physical assembly certification, owner visual acceptance; the lifecycle stays building.'
strategicValueEs: 'Plega nació de la misma disciplina de reconstrucción que su hermana Floraria y se mantiene separada de ella, con su propia historia y despliegue preservados. Cada release está registrado con su commit exacto de main, su identificador de release y la corrida Quality y Pages que verificó fuente y datos, la construcción de producción, un Chromium fijado, la inmutabilidad del artefacto, el enlace al dominio propio y la publicación: 0.01.000 el 2026-09-09, 0.02.000 con edición directa en el lienzo, 0.05.000 como artefacto actual. 105 pruebas de frontend y 24 de Python, 14 grupos de CI y 14 grupos de navegador en vivo. No afirmado, por escrito: adopción, certificación de ensamblaje físico, aceptación visual del dueño; el ciclo de vida sigue en construcción.'

kpis:
  - label: 'Design, motion and cut file agree'
    labelEs: 'Diseño, movimiento y archivo de corte coinciden'
    baseline: 'Three tools, three copies, millimetres lost between them'
    baselineEs: 'Tres herramientas, tres copias, milímetros perdidos entre ellas'
    result: 'One editable design moved as rigid panels, diagnosed, repaired with pinned comparisons and exported at actual size in PDF, SVG, FOLD and JSON'
    resultEs: 'Un solo diseño editable movido como paneles rígidos, diagnosticado, reparado con comparaciones fijadas y exportado a tamaño real en PDF, SVG, FOLD y JSON'
    impact: 'The failure is found before the paper is cut'
    impactEs: 'La falla se encuentra antes de cortar el papel'
  - label: 'Diagnoses that can be seen failing'
    labelEs: 'Diagnósticos que pueden verse fallar'
    baseline: 'A checker that only shows successes'
    baselineEs: 'Un verificador que solo muestra éxitos'
    result: 'Two deliberately invalid repair cases ship with the six valid starters; overlap, collision and separation are reported as what they are'
    resultEs: 'Dos casos de reparación deliberadamente inválidos se entregan junto a los seis puntos de partida válidos; traslape, colisión y separación se reportan como lo que son'
    impact: 'A lane-bound overlap is uncertified separation, not a claimed collision'
    impactEs: 'Un traslape dentro de un carril es separación no certificada, no una colisión afirmada'
  - label: 'A model that states its limits'
    labelEs: 'Un modelo que declara sus límites'
    baseline: 'A render presented as a fabrication guarantee'
    baselineEs: 'Un render presentado como garantía de fabricación'
    result: 'Rigid zero-thickness panels; no stiffness, fold force, glue, printer calibration or assembly success predicted; finite repairs without a global-optimality claim'
    resultEs: 'Paneles rígidos de espesor cero; sin predicción de rigidez, fuerza de plegado, pegamento, calibración de impresora ni éxito de ensamblaje; reparaciones finitas sin afirmación de optimalidad global'
    impact: 'The physical build stays the maker''s responsibility, and the site says so'
    impactEs: 'La construcción física sigue siendo responsabilidad del maker, y el sitio lo dice'

metrics:
  - label: 'Scope'
    labelEs: 'Alcance'
    value: '2 restricted mechanism families, up to 6 separated lanes, 6 original starters, 2 invalid repair cases, 12 editable cutwork compositions; every coordinate in millimetres'
    valueEs: '2 familias de mecanismos restringidas, hasta 6 carriles separados, 6 puntos de partida originales, 2 casos de reparación inválidos, 12 composiciones de calado editables; cada coordenada en milímetros'
  - label: 'Export'
    labelEs: 'Exportación'
    value: 'Calibrated actual-size PDF and SVG (pdf-lib), FOLD and JSON; assembly progress tracked'
    valueEs: 'PDF y SVG calibrados a tamaño real (pdf-lib), FOLD y JSON; progreso de ensamblaje seguido'
  - label: 'Verification'
    labelEs: 'Verificación'
    value: '105 frontend and 24 Python tests; 14 CI and 14 live browser groups; each release recorded with its exact commit, release identifier and verified Quality and Pages run; 22 public files and 11 release downloads verified'
    valueEs: '105 pruebas de frontend y 24 de Python; 14 grupos de CI y 14 grupos de navegador en vivo; cada release registrado con su commit exacto, identificador y corrida Quality y Pages verificada; 22 archivos públicos y 11 descargas de release verificados'
  - label: 'Not claimed'
    labelEs: 'No afirmado'
    value: 'Material stiffness, fold forces, glue performance, printer calibration, physical assembly success, global optimality of repairs, adoption, owner visual acceptance'
    valueEs: 'Rigidez del material, fuerzas de plegado, desempeño del pegamento, calibración de impresora, éxito del ensamblaje físico, optimalidad global de las reparaciones, adopción, aceptación visual del dueño'
  - label: 'Deploy and licence'
    labelEs: 'Despliegue y licencia'
    value: 'GitHub Pages at a custom domain, no VPS; version 0.05.000; Apache-2.0 code, MIT design data, Noto Sans under OFL; lifecycle building'
    valueEs: 'GitHub Pages en dominio propio, sin VPS; versión 0.05.000; código Apache-2.0, datos de diseño MIT, Noto Sans bajo OFL; ciclo de vida en construcción'

stack: [TypeScript, React, Vite, Three.js, pdf-lib, Playwright, Python]
---
