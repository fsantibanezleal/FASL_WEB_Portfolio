---
title: 'PitForge, Exact Ultimate Pit Limit & Nested Whittle Pit-Shell Workbench'
titleEs: 'PitForge, Banco de Trabajo de Pit Final Exacto y Cascaras de Pit Whittle Anidadas'
slug: pitforge
date: 2026-07-05
category: mining-optimization
family: faena
excerpt: 'An open-pit mine-design workbench that solves the ultimate pit limit exactly, as a maximum-weight closure of the block-precedence graph reduced to a minimum cut on a Dinic max-flow engine, running live in the browser, and derives the nested Whittle pit shells by revenue factor. It reproduces the published optima of three real MineLib instances to at most 2e-9 relative error, and self-checks every solve with the max-flow duality identity. This is the only one of the Faena four whose headline is validated against third-party published optima rather than its own generator.'
excerptEs: 'Un banco de trabajo de diseno minero a rajo abierto que resuelve el pit final de forma exacta, como cierre de peso maximo del grafo de precedencias de bloques reducido a un corte minimo sobre un motor de flujo maximo Dinic, corriendo en vivo en el navegador, y deriva las cascaras de pit Whittle anidadas por factor de ingreso. Reproduce los optimos publicados de tres instancias reales de MineLib a lo mas con 2e-9 de error relativo, y autoverifica cada resolucion con la identidad de dualidad de flujo maximo. Es el unico de los cuatro de Faena cuyo titular se valida contra optimos publicados por terceros y no contra su propio generador.'
icon: tabler:pick
tags: [mining-optimization, open-pit, ultimate-pit-limit, max-flow, min-cut, whittle, dinic, minelib, kriging, mining]
proprietary: false
featured: false
assetPatterns: [pitforge]
github: 'https://github.com/fsantibanezleal/CAOS_PitForge'
demo: 'https://pitforge.fasl-work.com'
website: 'https://pitforge.fasl-work.com'

challenge: 'The ultimate pit limit, the set of blocks worth mining once slope precedences are honoured, is the foundation of every open-pit design, and it has an exact solution: the maximum-weight closure of the precedence graph, equivalent to a minimum cut. In practice it is often approximated, or locked inside commercial software whose results cannot be reproduced or audited. Proving an implementation is correct requires more than "it returns a pit": it requires matching a published optimum on an instance you did not generate yourself, and checking the solver against its own duality identity on every run.'
challengeEs: 'El pit final, el conjunto de bloques que vale la pena minar una vez respetadas las precedencias de talud, es la base de todo diseno a rajo abierto, y tiene solucion exacta: el cierre de peso maximo del grafo de precedencias, equivalente a un corte minimo. En la practica suele aproximarse, o queda encerrado dentro de software comercial cuyos resultados no se pueden reproducir ni auditar. Probar que una implementacion es correcta exige mas que "devuelve un pit": exige igualar un optimo publicado sobre una instancia que no generaste tu mismo, y verificar el solucionador contra su propia identidad de dualidad en cada corrida.'

approach: 'PitForge solves the ultimate pit limit as a maximum-weight closure, reduced to a minimum cut via Picard''s 1976 construction and solved by a Dinic max-flow engine written in TypeScript, running live in the browser. The exact result is what it is described as: this is the max-closure / min-cut equivalent of Lerchs-Grossmann, not a re-implementation of Lerchs-Grossmann. Dinic is the live engine, and an independent Hochbaum normalised-tree pseudoflow rung runs beside it, reproducing the same optimal value and the same block set on every validated instance; identical cuts are not claimed for tied optima in general, since a minimum cut need not be unique. From the exact pit it derives the nested Whittle pit shells over an ascending revenue-factor schedule, yielding value, tonnage and strip-ratio curves. Grade estimation runs two ways live (IDW and a grade-nn ONNX surrogate over a 27-vector neighbour stencil), with ordinary kriging as the offline benchmark baseline the network is measured against, plus a pit-inclusion surrogate. A CPIT LP relaxation (scipy HiGHS) with greedy integer rounding is computed offline and rendered from JSON, never live. The duality identity pitValue = sum(positiveValue) minus maxflow is asserted in the explicit-precedence MineLib lane and surfaced as a displayed check on the interactive lane. Static on GitHub Pages, with an in-app drag-and-drop CSV path for bring-your-own block models.'
approachEs: 'PitForge resuelve el pit final como cierre de peso maximo, reducido a un corte minimo via la construccion de Picard de 1976 y resuelto por un motor de flujo maximo Dinic escrito en TypeScript, corriendo en vivo en el navegador. El resultado exacto se describe por lo que es: es el equivalente de cierre maximo / corte minimo de Lerchs-Grossmann, no una reimplementacion de Lerchs-Grossmann. Dinic es el motor en vivo, y a su lado corre un peldano independiente de pseudoflow de arbol normalizado de Hochbaum, que reproduce el mismo valor optimo y el mismo conjunto de bloques en cada instancia validada; no se afirma que los cortes sean identicos ante optimos empatados, porque un corte minimo no tiene por que ser unico. Desde el pit exacto deriva las cascaras de pit Whittle anidadas sobre un calendario ascendente de factor de ingreso, entregando curvas de valor, tonelaje y razon de descarga. La estimacion de ley corre de dos maneras en vivo (IDW y un surrogate grade-nn ONNX sobre un stencil de vecinos de 27 vectores), con kriging ordinario como la base de referencia offline contra la que se mide la red, mas un surrogate de inclusion en el pit. Una relajacion LP de CPIT (scipy HiGHS) con redondeo entero voraz se computa offline y se renderiza desde JSON, nunca en vivo. La identidad de dualidad pitValue = suma(valorPositivo) menos maxflow se asevera en la via MineLib de precedencia explicita y se muestra como verificacion en pantalla en la via interactiva. Estatico en GitHub Pages, con una via de arrastrar y soltar CSV en la app para modelos de bloques propios.'

businessContext: 'The ultimate pit and its nested shells set the envelope for reserves, phasing and cash flow, so a wrong or unauditable pit propagates into every downstream number. PitForge''s value is that its exact answer is checkable two ways: against published third-party optima it did not create, and against the max-flow duality identity. A 14,153-block instance with 219,778 precedences solves exactly in well under a second on a laptop, in a Node bake of the same TypeScript engine the browser runs (the milliseconds are machine-dependent; repeat runs on one machine varied by a factor of several, so the artifact records its environment and the claim here is about scale), which puts a design-grade optimiser on a static page with no server and no licence. The learned surrogates are positioned honestly as fast approximations for what-if exploration, never as replacements for the exact result.'
businessContextEs: 'El pit final y sus cascaras anidadas fijan la envolvente de reservas, fases y flujo de caja, por lo que un pit erroneo o no auditable se propaga a cada numero aguas abajo. El valor de PitForge es que su respuesta exacta es verificable de dos maneras: contra optimos publicados por terceros que no creo, y contra la identidad de dualidad de flujo maximo. Una instancia de 14.153 bloques con 219.778 precedencias se resuelve de forma exacta en bastante menos de un segundo en un portátil, en un bake en Node del mismo motor TypeScript que corre el navegador (los milisegundos dependen de la máquina; corridas repetidas en un mismo equipo variaron por un factor de varias veces, así que el artefacto registra el entorno y la afirmación es sobre el orden de magnitud), lo que pone un optimizador de grado de diseno en una pagina estatica sin servidor y sin licencia. Los surrogates aprendidos se posicionan con honestidad como aproximaciones rapidas para exploracion de escenarios, nunca como reemplazo del resultado exacto.'

strategicValue: 'PitForge is the most strongly validated of the Faena four, and the validation is third-party: its exact ultimate pit reproduces three published MineLib optima (newman1, zuck_small, kd) to at most 2e-9 relative error, with the largest solved in a fraction of a second in a Node median-of-3 bake of the same engine (a machine-dependent figure, recorded with its environment). Two honesty properties reinforce it. Scenario knobs are locked in real mode because the MineLib instances publish their own net values and precedences, so re-deriving them would break comparability with the published optimum, a deliberate decision to protect the benchmark. And the learned grade-nn is reported as a loss, not a win: on a held-out geology it reaches R2 0.8757, narrowly beating IDW at 0.8591 and trailing ordinary kriging at 0.9333, and the artifact calls it a fast approximation that never beats the exact result. That number moved when a leaky random-row split was replaced with a grouped leave-one-geology-out split, so the smaller figure is the trustworthy one. The CPIT lane parses the published newman1.cpit scenario (6 periods, 8% discount, two resource constraints), reproduces its published LP bound to 3.7e-9, and publishes a 3.81% bound-to-feasible gap; a separate synthetic twin, labelled non-comparable, sits at 11.29%. It is a reusable pattern for an auditable, self-checking optimiser that proves itself against numbers it did not author.'
strategicValueEs: 'PitForge es el mas fuertemente validado de los cuatro de Faena, y la validacion es de terceros: su pit final exacto reproduce tres optimos publicados de MineLib (newman1, zuck_small, kd) a lo mas con 2e-9 de error relativo, con el mayor resuelto en una fracción de segundo en un bake en Node, mediana de 3, del mismo motor (una cifra dependiente de la máquina, registrada junto a su entorno). Dos propiedades de honestidad lo refuerzan. Las perillas de escenario quedan bloqueadas en modo real porque las instancias de MineLib publican sus propios valores netos y precedencias, de modo que rederivarlas romperia la comparabilidad con el optimo publicado, una decision deliberada para proteger el benchmark. Y el grade-nn aprendido se reporta como derrota, no como victoria: sobre una geologia excluida alcanza R2 0,8757, superando apenas a IDW con 0,8591 y quedando bajo el kriging ordinario con 0,9333, y el artefacto lo llama una aproximacion rapida que nunca supera al resultado exacto. Ese numero se movio cuando una particion aleatoria por filas con fuga fue reemplazada por una particion agrupada que deja fuera una geologia completa, asi que la cifra menor es la confiable. La via CPIT parsea el escenario publicado newman1.cpit (6 periodos, 8% de descuento, dos restricciones de recurso), reproduce su cota LP publicada a 3,7e-9, y publica una brecha cota-a-factible de 3,81%; un gemelo sintetico aparte, etiquetado como no comparable, queda en 11,29%. Es un patron reutilizable para un optimizador auditable y autoverificable que se prueba contra numeros que no escribio.'

kpis:
  - label: 'Correctness, third-party validated'
    labelEs: 'Correctitud, validada por terceros'
    baseline: 'Returns "a pit" with no external check'
    baselineEs: 'Devuelve "un pit" sin verificacion externa'
    result: 'Reproduces 3 published MineLib optima (newman1, zuck_small, kd) to <= 2e-9 relative error'
    resultEs: 'Reproduce 3 optimos publicados de MineLib (newman1, zuck_small, kd) a <= 2e-9 de error relativo'
    impact: 'Validated against optima it did not generate, not against its own output'
    impactEs: 'Validado contra optimos que no genero, no contra su propia salida'
  - label: 'Exact solve, in the browser'
    labelEs: 'Resolucion exacta, en el navegador'
    baseline: 'Approximate pit, or a licensed desktop solver'
    baselineEs: 'Pit aproximado, o un solucionador de escritorio con licencia'
    result: '14,153 blocks / 219,778 precedences solved exactly in a fraction of a second (Node median-of-3 of the same TypeScript engine the browser runs, machine-dependent; Dinic min-cut over Picard reduction)'
    resultEs: '14.153 bloques / 219.778 precedencias resueltos de forma exacta en una fraccion de segundo (mediana de 3 en Node del mismo motor TypeScript que corre el navegador, dependiente de la maquina; corte minimo Dinic sobre reduccion de Picard)'
    impact: 'Design-grade optimiser on a static page, zero backend'
    impactEs: 'Optimizador de grado de diseno en una pagina estatica, cero backend'
  - label: 'Self-check on every solve'
    labelEs: 'Autoverificacion en cada resolucion'
    baseline: 'Trust the returned number'
    baselineEs: 'Confiar en el numero devuelto'
    result: 'pitValue = sum(positive) - maxflow asserted on every solve (max-flow duality identity)'
    resultEs: 'pitValue = suma(positivo) - maxflow aseverado en cada resolucion (identidad de dualidad de flujo maximo)'
    impact: 'The optimiser checks itself, not just the caller'
    impactEs: 'El optimizador se verifica a si mismo, no solo quien lo llama'
  - label: 'Learned surrogate, honestly scoped'
    labelEs: 'Surrogate aprendido, acotado con honestidad'
    baseline: 'Claim the neural net beats kriging'
    baselineEs: 'Afirmar que la red neuronal supera al kriging'
    result: 'grade-nn R2 0.8757 vs ordinary kriging 0.9333 and IDW 0.8591 on a leave-one-geology-out split (a loss to kriging, published as such); reported as a fast approximation, never beating the exact result'
    resultEs: 'grade-nn R2 0,8757 vs kriging ordinario 0,9333 e IDW 0,8591 en una particion que deja fuera una geologia completa (una derrota frente al kriging, publicada como tal); reportado como aproximacion rapida, nunca superando el resultado exacto'
    impact: 'A 0.0033 margin is a tie, and the card says so'
    impactEs: 'Un margen de 0,0033 es un empate, y la ficha lo dice'

metrics:
  - label: 'Exact pit engine'
    labelEs: 'Motor de pit exacto'
    value: 'Ultimate pit = maximum-weight closure -> min-cut via Picard 1976 reduction on a Dinic max-flow engine (TypeScript, live in browser); the max-closure equivalent of Lerchs-Grossmann, not pseudoflow'
    valueEs: 'Pit final = cierre de peso maximo -> corte minimo via reduccion de Picard 1976 sobre motor de flujo maximo Dinic (TypeScript, en vivo en navegador); el equivalente de cierre maximo de Lerchs-Grossmann, no pseudoflow'
  - label: 'MineLib validation'
    labelEs: 'Validacion MineLib'
    value: 'newman1 (1,060 blocks), zuck_small (9,400 blocks), kd (14,153 blocks), solved in milliseconds to a fraction of a second under Node (machine-dependent, recorded with its environment), all match: true, rel. error 1.30e-10 to 9.96e-10; 3 instances excluded with committed reasons'
    valueEs: 'newman1 (1.060 bloques), zuck_small (9.400 bloques), kd (14.153 bloques), resueltos en milisegundos a una fraccion de segundo bajo Node (dependiente de la maquina, registrado con su entorno), todos match: true, error rel. 1,30e-10 a 9,96e-10; 3 instancias excluidas con razones commiteadas'
  - label: 'Pit shells & grade'
    labelEs: 'Cascaras de pit y ley'
    value: 'Nested Whittle pit shells by revenue factor (value / tonnage / strip-ratio curves); live grade estimation via IDW and a grade-nn ONNX surrogate, with ordinary kriging as the offline benchmark baseline; pit-surrogate AUC 0.9123 / accuracy 0.8294 against a random-classifier AUC of 0.5 and a majority-class accuracy of 0.6428. Both learned models are trained and evaluated on synthetic seeded deposits, with no real drillholes'
    valueEs: 'Cascaras de pit Whittle anidadas por factor de ingreso (curvas de valor / tonelaje / razon de descarga); estimacion de ley en vivo via IDW, kriging ordinario y grade-nn (ONNX); pit-surrogate AUC 0,9811 vs 0,7642 base'
  - label: 'Scheduling (offline)'
    labelEs: 'Programacion (offline)'
    value: 'CPIT LP relaxation (scipy HiGHS) gives a certified NPV upper bound: on the published newman1.cpit scenario (6 periods, 8% discount, two resource constraints) it reproduces MineLib''s published LP bound of 24,486,184 to 3.7e-9 and reports a 3.81% bound-to-feasible gap; a separate synthetic twin, explicitly labelled non-comparable, sits at 11.29%. Artifact-only, rendered from JSON, never live'
    valueEs: 'Relajacion LP de CPIT (scipy HiGHS) da una cota superior certificada de VAN: sobre el escenario publicado newman1.cpit (6 periodos, 8% de descuento, dos restricciones de recurso) reproduce la cota LP publicada de MineLib de 24.486.184 a 3,7e-9 y reporta una brecha cota-a-factible de 3,81%; un gemelo sintetico aparte, etiquetado explicitamente como no comparable, queda en 11,29%. Solo artefacto, renderizado desde JSON, nunca en vivo'
  - label: 'Data & inputs'
    labelEs: 'Datos e inputs'
    value: 'Real: 3 MineLib instances fetched at runtime (no bytes committed); 9 synthetic deposits; bring-your-own block model via in-app drag-and-drop CSV with an explicit outlier policy'
    valueEs: 'Real: 3 instancias de MineLib descargadas en tiempo de ejecucion (sin bytes commiteados); 9 depositos sinteticos; modelo de bloques propio via arrastrar y soltar CSV en la app con politica explicita de outliers'
  - label: 'Testing & compute'
    labelEs: 'Pruebas y computo'
    value: '7 TypeScript test suites (incl. a live-contract test); 100% client-side, offline precompute imports the same TS engine the browser runs'
    valueEs: '7 suites de pruebas TypeScript (incl. un test de contrato en vivo); 100% del lado del cliente, el precomputo offline importa el mismo motor TS que corre el navegador'

stack: [TypeScript, React, Vite, 'Three.js', ONNX, onnxruntime-web, PyTorch, KaTeX]
---

## The exact pit, in the browser, checked against published optima

PitForge is an open-pit **mine-design** workbench. It solves the **ultimate pit limit exactly**, as a maximum-weight closure of the block-precedence graph reduced to a **minimum cut** on a **Dinic max-flow engine**, running live in the browser, and derives the **nested Whittle pit shells** by revenue factor. Live at [pitforge.fasl-work.com](https://pitforge.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## Say what the engine is

The exact result is the **max-closure / min-cut equivalent of Lerchs-Grossmann**, via Picard's 1976 reduction on a Dinic engine. It is not a re-implementation of Lerchs-Grossmann. Dinic is the live engine, and an independent Hochbaum normalised-tree pseudoflow rung runs beside it, reproducing the same optimal value and the same block set on every validated instance; identical cuts are not claimed for tied optima in general. From the exact pit, nested Whittle shells over an ascending revenue-factor schedule give value, tonnage and strip-ratio curves.

## Validated against MineLib, not against itself

The exact pit reproduces the published optima of three real MineLib instances:

- **newman1**: 1,060 blocks, relative error 9.96e-10
- **zuck_small**: 9,400 blocks, 1.86e-10
- **kd**: 14,153 blocks / 219,778 precedences, 1.30e-10

The relative errors are properties of the algorithm and reproduce anywhere. Solve times are not: measured under Node on the same TypeScript engine the browser runs, the three take milliseconds to a fraction of a second, but repeat runs on one laptop varied by a factor of several, so the artifact records its environment and no decimal figure is published here. What is stable is the comparison in the same run: the independent pseudoflow rung is one to two orders of magnitude slower on the two larger instances.

All three `match: true`. Two further instances (`marvin`, `mclaughlin_limit`) are **excluded with committed reasons** (`marvin` ships with commercial Whittle software; neither has a verified public mirror) rather than silently dropped. In real mode the scenario knobs are **locked**, because the instances publish their own net values and precedences and re-deriving them would break comparability with the published optimum.

## Honest about the learned and offline rungs

The duality identity `pitValue = sum(positive) - maxflow` is asserted in the explicit-precedence MineLib lane and displayed as a live check on the interactive lane, so the optimiser checks itself against its own dual. Grade estimation runs two ways live (IDW and a grade-nn ONNX surrogate), with ordinary kriging as the offline benchmark baseline; the learned **grade-nn trails kriging** (R2 0.8757 against ordinary kriging 0.9333 and IDW 0.8591, on a split that leaves one whole geology out), and the artifact calls it a fast approximation that never beats the exact result. Both learned models are trained and evaluated on synthetic seeded deposits, with no real drillholes. Scheduling is a **CPIT LP relaxation computed offline** with scipy HiGHS, rendered from JSON, never live; on the published newman1.cpit scenario (6 periods, 8% discount, two resource constraints) it reproduces MineLib's published LP bound of 24,486,184 to 3.7e-9 and publishes a **3.81% bound-to-feasible gap**, with a separate synthetic twin at 11.29% explicitly labelled non-comparable, and it states plainly that the rounded schedule is a heuristic and is never optimal. It is a design optimiser, not a JORC or NI 43-101 resource estimate.

[Live demo](https://pitforge.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_PitForge)
