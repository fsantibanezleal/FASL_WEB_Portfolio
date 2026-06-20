---
title: 'CAOS SimLab — A Didactic Lab for Simulation (DES & ABM)'
titleEs: 'CAOS SimLab — Un Laboratorio Didáctico de Simulación (DES y ABM)'
slug: simlab
date: 2026-06-19
category: simulation
excerpt: 'Land straight in a running simulation, move the sliders, and watch the dynamics change. An open lab for Discrete-Event Simulation and Agent-Based Modeling — ten worked scenarios across six visualization families, each a pure function of (params, seed) so replay is exact, validated against theory where it exists.'
excerptEs: 'Aterriza directamente en una simulación corriendo, mueve los sliders y observa cómo cambia la dinámica. Un laboratorio abierto de Simulación de Eventos Discretos y Modelado Basado en Agentes — diez escenarios sobre seis familias de visualización, cada uno función pura de (parámetros, semilla) para que el replay sea exacto, validado contra la teoría donde existe.'
icon: tabler:chart-grid-dots
tags: [simulation, des, abm, operations-research, simpy, mesa, pyodide, education]
proprietary: false
featured: false
assetPatterns: [simlab, caos-simlab]
github: 'https://github.com/fsantibanezleal/CAOS_SIMLAB'
demo: 'https://simlab.fasl-work.com'
website: 'https://simlab.fasl-work.com'

challenge: 'Most simulation tutorials stop at a toy script, and most simulation tools hide the model behind a GUI. Neither teaches the thing that actually matters: how to model a system from zero — define a case, write the rules, run it, and read the dynamics honestly — including the parts demos skip, like the fact that a single run is noisy and an animation is a hypothesis, not evidence.'
challengeEs: 'La mayoría de los tutoriales de simulación se quedan en un script de juguete, y la mayoría de las herramientas esconden el modelo tras una GUI. Ninguno enseña lo que de verdad importa: cómo modelar un sistema desde cero — definir un caso, escribir las reglas, correrlo y leer la dinámica con honestidad — incluyendo lo que los demos omiten, como que una sola corrida es ruidosa y una animación es una hipótesis, no evidencia.'
approach: 'CAOS SimLab does both halves honestly. A from-zero curriculum teaches the real libraries (SimPy, Mesa, OR-Tools) — their utility, their pitfalls, and when each method applies — and a modern web app drops you into a running simulation you can tune live. One shared Python engine drives both: a run is a pure function of (params, seed) producing a compact trace, and the front end only animates the trace, so "replay is truth". A measured 3-gate rule decides each scenario''s lane — light pure-Python scenarios run in the browser via Pyodide and re-run on every slider move; heavy ones (native solvers, large agent counts) are precomputed offline into a seeded trace and replayed with a scrubber under a clear "precomputed due to cost" banner.'
approachEs: 'CAOS SimLab hace ambas mitades con honestidad. Un currículum desde cero enseña las librerías reales (SimPy, Mesa, OR-Tools) — su utilidad, sus trampas y cuándo aplica cada método — y una app web moderna te deja dentro de una simulación corriendo que puedes ajustar en vivo. Un único motor Python impulsa ambos: una corrida es función pura de (parámetros, semilla) que produce una traza compacta, y el front end solo anima la traza, así "el replay es la verdad". Una regla medida de 3 compuertas decide el carril de cada escenario — los livianos en Python puro corren en el navegador vía Pyodide y se recalculan en cada movimiento de slider; los pesados (solvers nativos, muchos agentes) se precomputan offline en una traza sembrada y se reproducen con una barra de tiempo bajo un aviso claro de "precomputado por costo".'
businessContext: 'Simulation and operations research are how teams reason about systems before building or changing them — queues, epidemics, schedules, routes, supply chains. But the gap between a slide-deck model and a trustworthy one is large, and it is exactly where decisions go wrong. A lab that makes the model legible, tunable, and validated turns simulation from a specialist black art into something a wider audience can learn, inspect, and trust.'
businessContextEs: 'La simulación y la investigación de operaciones son cómo los equipos razonan sobre sistemas antes de construirlos o cambiarlos — colas, epidemias, agendas, rutas, cadenas de suministro. Pero la brecha entre un modelo de presentación y uno confiable es grande, y es justo donde las decisiones fallan. Un laboratorio que hace el modelo legible, ajustable y validado convierte la simulación de un arte de especialistas en algo que una audiencia más amplia puede aprender, inspeccionar y confiar.'
strategicValue: 'CAOS SimLab is a teaching instrument and a credibility statement at once: the same engine that powers the lessons powers the live app, so what you learn is what runs, and every result is reproducible from (params, seed). It demonstrates the discipline that separates a real simulation from a pretty animation — replications and confidence intervals, warm-up cuts for steady-state metrics, seed reproducibility, and validation against closed-form theory (the M/M/c queue against Erlang-C). The static deterministic-replay architecture (no backend, traces committed as data) makes it cheap to host and fully auditable.'
strategicValueEs: 'CAOS SimLab es a la vez un instrumento de enseñanza y una declaración de credibilidad: el mismo motor que impulsa las lecciones impulsa la app en vivo, así que lo que aprendes es lo que corre, y cada resultado es reproducible desde (parámetros, semilla). Demuestra la disciplina que separa una simulación real de una animación bonita — replicaciones e intervalos de confianza, cortes de warm-up para métricas de estado estable, reproducibilidad por semilla, y validación contra teoría cerrada (la cola M/M/c contra Erlang-C). La arquitectura estática de replay determinista (sin backend, trazas versionadas como datos) la hace barata de alojar y totalmente auditable.'

kpis:
  - label: 'From script to running model'
    labelEs: 'De script a modelo corriendo'
    baseline: 'Tutorials stop at a toy script'
    baselineEs: 'Los tutoriales paran en un script de juguete'
    result: 'Land in a live sim; tune params and watch'
    resultEs: 'Aterrizas en una sim viva; ajustas y observas'
    impact: 'Learn the method by running it'
    impactEs: 'Aprender el método corriéndolo'
  - label: 'Trust in the result'
    labelEs: 'Confianza en el resultado'
    baseline: 'A single, noisy run / pretty animation'
    baselineEs: 'Una sola corrida ruidosa / animación bonita'
    result: 'Replications + CIs, warm-up, seed-reproducible'
    resultEs: 'Replicaciones + IC, warm-up, reproducible por semilla'
    impact: 'Honest simulation, not a demo'
    impactEs: 'Simulación honesta, no un demo'
  - label: 'Cost of a scenario'
    labelEs: 'Costo de un escenario'
    baseline: 'Hidden or guessed'
    baselineEs: 'Oculto o adivinado'
    result: 'Measured 3-gate rule picks live vs precomputed'
    resultEs: 'Regla medida de 3 compuertas elige vivo vs precomputado'
    impact: 'Each lane choice is justified by numbers'
    impactEs: 'Cada carril se justifica con números'

metrics:
  - label: 'Scenarios live'
    labelEs: 'Escenarios en vivo'
    value: '10 / 10 (queue, Schelling, SIR, ED flow, beer game, job-shop, haul, VRP, dispatch, MC/CI)'
    valueEs: '10 / 10 (cola, Schelling, SIR, flujo de urgencias, beer game, job-shop, transporte, VRP, despacho, MC/IC)'
  - label: 'Visualization families'
    labelEs: 'Familias de visualización'
    value: '6 (queue · agent-grid · chart · flow · gantt · route)'
    valueEs: '6 (cola · grilla de agentes · gráfico · flujo · gantt · ruta)'
  - label: 'Live lane'
    labelEs: 'Carril en vivo'
    value: 'In-browser Pyodide (pure-Python, <3 s, trace <1 MB)'
    valueEs: 'Pyodide en navegador (Python puro, <3 s, traza <1 MB)'
  - label: 'Determinism'
    labelEs: 'Determinismo'
    value: '(params, seed) → trace; byte-reproducible replay'
    valueEs: '(parámetros, semilla) → traza; replay reproducible byte a byte'
  - label: 'Validation'
    labelEs: 'Validación'
    value: 'M/M/c queue validated against Erlang-C'
    valueEs: 'Cola M/M/c validada contra Erlang-C'

stack: [Python, SimPy, Mesa, OR-Tools, Pyodide, TypeScript, React, Vite, KaTeX]
---

## Land in a running simulation

CAOS SimLab is an open, didactic lab for **Discrete-Event Simulation (DES)** and **Agent-Based Modeling (ABM)**. Instead of a toy script or a GUI that hides the model, you arrive directly in a running simulation, move the sliders, and watch the dynamics change — across ten worked scenarios, with a from-zero curriculum that teaches the real tools. Live at [simlab.fasl-work.com](https://simlab.fasl-work.com).

## Two lanes, decided by measurement

A run is a pure function of `(params, seed)` that produces a compact **trace**; the front end only animates it, so live and precomputed render through one code path — **replay is truth**. A measured 3-gate rule (pure-Python **and** under 3 s **and** trace under 1 MB) decides the lane:

- **Live** — light scenarios run in your browser via Pyodide; edit parameters, re-run, watch it animate in real time. No server, nothing to install.
- **Precomputed** — heavy scenarios (native solvers like OR-Tools, large agent counts) are run offline into a seeded trace and replayed with a timeline scrubber under a clear "precomputed due to cost" banner.

## Honest simulation

The lab teaches what most demos skip: a single run is noisy, so results come from **replications + confidence intervals**; steady-state metrics need a **warm-up** cut; the same seed must reproduce the same result; and an animation is a hypothesis generator, not evidence. Each scenario validates against theory or a baseline where one exists — the M/M/c queue against the closed-form Erlang-C.

[Live demo](https://simlab.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_SIMLAB)
