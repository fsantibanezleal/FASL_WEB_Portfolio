---
title: 'PitForge — Exact Ultimate Pit Limit & Nested Whittle Pit-Shell Workbench'
titleEs: 'PitForge — Banco de Trabajo de Pit Final Exacto y Cascaras de Pit Whittle Anidadas'
slug: pitforge
date: 2026-07-15
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

approach: 'PitForge solves the ultimate pit limit as a maximum-weight closure, reduced to a minimum cut via Picard''s 1976 construction and solved by a Dinic max-flow engine written in TypeScript, running live in the browser. The exact result is what it is described as: this is the max-closure / min-cut equivalent of Lerchs-Grossmann, not a re-implementation of Lerchs-Grossmann, and not Hochbaum''s pseudoflow (referenced only as computing the same cut). From the exact pit it derives the nested Whittle pit shells over an ascending revenue-factor schedule, yielding value, tonnage and strip-ratio curves. Grade estimation runs three ways live (IDW, ordinary kriging, and a grade-nn ONNX surrogate over a 27-vector neighbour stencil), plus a pit-inclusion surrogate. A CPIT LP relaxation (scipy HiGHS) with greedy integer rounding is computed offline and rendered from JSON, never live. Every solve asserts pitValue = sum(positiveValue) minus maxflow. Static on GitHub Pages, with an in-app drag-and-drop CSV path for bring-your-own block models.'
approachEs: 'PitForge resuelve el pit final como cierre de peso maximo, reducido a un corte minimo via la construccion de Picard de 1976 y resuelto por un motor de flujo maximo Dinic escrito en TypeScript, corriendo en vivo en el navegador. El resultado exacto se describe por lo que es: es el equivalente de cierre maximo / corte minimo de Lerchs-Grossmann, no una reimplementacion de Lerchs-Grossmann, y no el pseudoflow de Hochbaum (referenciado solo como quien computa el mismo corte). Desde el pit exacto deriva las cascaras de pit Whittle anidadas sobre un calendario ascendente de factor de ingreso, entregando curvas de valor, tonelaje y razon de descarga. La estimacion de ley corre de tres maneras en vivo (IDW, kriging ordinario y un surrogate grade-nn ONNX sobre un stencil de vecinos de 27 vectores), mas un surrogate de inclusion en el pit. Una relajacion LP de CPIT (scipy HiGHS) con redondeo entero voraz se computa offline y se renderiza desde JSON, nunca en vivo. Cada resolucion asevera pitValue = suma(valorPositivo) menos maxflow. Estatico en GitHub Pages, con una via de arrastrar y soltar CSV en la app para modelos de bloques propios.'

businessContext: 'The ultimate pit and its nested shells set the envelope for reserves, phasing and cash flow, so a wrong or unauditable pit propagates into every downstream number. PitForge''s value is that its exact answer is checkable two ways: against published third-party optima it did not create, and against the max-flow duality identity on every single solve. A 14,153-block instance with 219,778 precedences solves exactly in about 259 ms median in the browser, which puts a design-grade optimiser on a static page with no server and no licence. The learned surrogates are positioned honestly as fast approximations for what-if exploration, never as replacements for the exact result.'
businessContextEs: 'El pit final y sus cascaras anidadas fijan la envolvente de reservas, fases y flujo de caja, por lo que un pit erroneo o no auditable se propaga a cada numero aguas abajo. El valor de PitForge es que su respuesta exacta es verificable de dos maneras: contra optimos publicados por terceros que no creo, y contra la identidad de dualidad de flujo maximo en cada resolucion. Una instancia de 14.153 bloques con 219.778 precedencias se resuelve de forma exacta en cerca de 259 ms de mediana en el navegador, lo que pone un optimizador de grado de diseno en una pagina estatica sin servidor y sin licencia. Los surrogates aprendidos se posicionan con honestidad como aproximaciones rapidas para exploracion de escenarios, nunca como reemplazo del resultado exacto.'

strategicValue: 'PitForge is the most strongly validated of the Faena four, and the validation is third-party: its exact ultimate pit reproduces three published MineLib optima (newman1, zuck_small, kd) to at most 2e-9 relative error, with the largest solved in about 259 ms in the browser. Two honesty properties reinforce it. Scenario knobs are locked in real mode because the MineLib instances publish their own net values and precedences, so re-deriving them would break comparability with the published optimum, a deliberate decision to protect the benchmark. And the learned grade-nn is reported as a tie, not a win: R2 0.9613 against ordinary kriging 0.958, a 0.0033 margin the artifact itself calls a fast approximation that never beats the exact result. The CPIT relaxation publishes its 10.46% integrality gap rather than hiding it. It is a reusable pattern for an auditable, self-checking optimiser that proves itself against numbers it did not author.'
strategicValueEs: 'PitForge es el mas fuertemente validado de los cuatro de Faena, y la validacion es de terceros: su pit final exacto reproduce tres optimos publicados de MineLib (newman1, zuck_small, kd) a lo mas con 2e-9 de error relativo, con el mayor resuelto en cerca de 259 ms en el navegador. Dos propiedades de honestidad lo refuerzan. Las perillas de escenario quedan bloqueadas en modo real porque las instancias de MineLib publican sus propios valores netos y precedencias, de modo que rederivarlas romperia la comparabilidad con el optimo publicado, una decision deliberada para proteger el benchmark. Y el grade-nn aprendido se reporta como empate, no como victoria: R2 0,9613 frente a kriging ordinario 0,958, un margen de 0,0033 que el propio artefacto llama una aproximacion rapida que nunca supera al resultado exacto. La relajacion CPIT publica su brecha de integralidad de 10,46% en vez de ocultarla. Es un patron reutilizable para un optimizador auditable y autoverificable que se prueba contra numeros que no escribio.'

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
    result: '14,153 blocks / 219,778 precedences solved exactly in ~259 ms median (Dinic min-cut over Picard reduction)'
    resultEs: '14.153 bloques / 219.778 precedencias resueltos de forma exacta en ~259 ms de mediana (corte minimo Dinic sobre reduccion de Picard)'
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
    result: 'grade-nn R2 0.9613 vs ordinary kriging 0.958 (a tie); reported as a fast approximation, never beating the exact result'
    resultEs: 'grade-nn R2 0,9613 vs kriging ordinario 0,958 (empate); reportado como aproximacion rapida, nunca superando el resultado exacto'
    impact: 'A 0.0033 margin is a tie, and the card says so'
    impactEs: 'Un margen de 0,0033 es un empate, y la ficha lo dice'

metrics:
  - label: 'Exact pit engine'
    labelEs: 'Motor de pit exacto'
    value: 'Ultimate pit = maximum-weight closure -> min-cut via Picard 1976 reduction on a Dinic max-flow engine (TypeScript, live in browser); the max-closure equivalent of Lerchs-Grossmann, not pseudoflow'
    valueEs: 'Pit final = cierre de peso maximo -> corte minimo via reduccion de Picard 1976 sobre motor de flujo maximo Dinic (TypeScript, en vivo en navegador); el equivalente de cierre maximo de Lerchs-Grossmann, no pseudoflow'
  - label: 'MineLib validation'
    labelEs: 'Validacion MineLib'
    value: 'newman1 (1,060 blocks, 5.2 ms), zuck_small (9,400 blocks, 237 ms), kd (14,153 blocks, 259 ms) all match: true, rel. error <= 1.86e-10 to 9.96e-10; 2 instances excluded with committed reasons'
    valueEs: 'newman1 (1.060 bloques, 5,2 ms), zuck_small (9.400 bloques, 237 ms), kd (14.153 bloques, 259 ms) todos match: true, error rel. <= 1,86e-10 a 9,96e-10; 2 instancias excluidas con razones commiteadas'
  - label: 'Pit shells & grade'
    labelEs: 'Cascaras de pit y ley'
    value: 'Nested Whittle pit shells by revenue factor (value / tonnage / strip-ratio curves); live grade estimation via IDW, ordinary kriging, and grade-nn (ONNX); pit-surrogate AUC 0.9811 vs 0.7642 baseline'
    valueEs: 'Cascaras de pit Whittle anidadas por factor de ingreso (curvas de valor / tonelaje / razon de descarga); estimacion de ley en vivo via IDW, kriging ordinario y grade-nn (ONNX); pit-surrogate AUC 0,9811 vs 0,7642 base'
  - label: 'Scheduling (offline)'
    labelEs: 'Programacion (offline)'
    value: 'CPIT LP relaxation (scipy HiGHS) gives a certified NPV upper bound with a 10.46% reported integrality gap (newman1, 8 periods); artifact-only, rendered from JSON, never live'
    valueEs: 'Relajacion LP de CPIT (scipy HiGHS) da una cota superior certificada de VAN con una brecha de integralidad reportada de 10,46% (newman1, 8 periodos); solo artefacto, renderizado desde JSON, nunca en vivo'
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

The exact result is the **max-closure / min-cut equivalent of Lerchs-Grossmann**, via Picard's 1976 reduction on a Dinic engine. It is not a re-implementation of Lerchs-Grossmann, and it is not Hochbaum's pseudoflow, which is referenced only as computing the same cut. From the exact pit, nested Whittle shells over an ascending revenue-factor schedule give value, tonnage and strip-ratio curves.

## Validated against MineLib, not against itself

The exact pit reproduces the published optima of three real MineLib instances:

- **newman1**: 1,060 blocks, solved in 5.2 ms median, relative error 9.96e-10
- **zuck_small**: 9,400 blocks, 237 ms, 1.86e-10
- **kd**: 14,153 blocks / 219,778 precedences, 259 ms, 1.30e-10

All three `match: true`. Two further instances (`marvin`, `mclaughlin_limit`) are **excluded with committed reasons** (`marvin` ships with commercial Whittle software; neither has a verified public mirror) rather than silently dropped. In real mode the scenario knobs are **locked**, because the instances publish their own net values and precedences and re-deriving them would break comparability with the published optimum.

## Honest about the learned and offline rungs

Every solve asserts the duality identity `pitValue = sum(positive) - maxflow`, so the optimiser checks itself. Grade estimation runs three ways live (IDW, ordinary kriging, and a grade-nn ONNX surrogate); the learned **grade-nn is a tie, not a win** (R2 0.9613 vs ordinary kriging 0.958, a 0.0033 margin), and the artifact calls it a fast approximation that never beats the exact result. Scheduling is a **CPIT LP relaxation computed offline** with scipy HiGHS, rendered from JSON, never live; it publishes a certified NPV upper bound with a **10.46% integrality gap**, and states plainly that the rounded schedule is a heuristic and is never optimal. It is a design optimiser, not a JORC or NI 43-101 resource estimate.

[Live demo](https://pitforge.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_PitForge)
