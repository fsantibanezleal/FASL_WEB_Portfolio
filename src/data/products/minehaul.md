---
title: 'MineHaul, Mine-Haulage Discrete-Event Simulation'
titleEs: 'MineHaul, Simulación de Eventos Discretos de Acarreo Minero'
slug: minehaul
date: 2026-07-02
category: simulation
excerpt: 'An open-source Python package (minehaulsim) for deterministic discrete-event simulation of open-pit and underground mine haulage on constrained road networks, with seeded parametric mine generators. Byte-deterministic, numpy-only, well-tested, the companion generator that feeds structure-real scenarios to DispatchLab.'
excerptEs: 'Un paquete Python de código abierto (minehaulsim) para simulación de eventos discretos, determinista, del acarreo minero de rajo y subterráneo sobre redes viales restringidas, con generadores paramétricos de minas por semilla. Determinista byte a byte, solo-numpy, bien testeado, el generador companion que alimenta escenarios structure-real a DispatchLab.'
icon: tabler:truck
tags: [simulation, des, mining, haulage, python, open-source, package]
proprietary: false
featured: false
assetPatterns: [minehaul]
github: 'https://github.com/fsantibanezleal/CAOS_MINEHAUL'

challenge: 'Testing a haulage dispatch policy, or any mine-logistics idea, needs a stream of realistic, varied mine layouts and truck-shovel dynamics to run against, but the open-source options are thin. Real operations are proprietary, and existing haulage simulators are commercial closed tools; there was no open-source Python package that simulates open-pit and underground haulage on a genuinely constrained road network with reproducible, generatable mines.'
challengeEs: 'Probar una política de despacho de acarreo, o cualquier idea de logística minera, necesita un flujo de layouts de mina realistas y variados y de dinámica camión-pala contra los cuales correr, pero las opciones de código abierto son escasas. Las operaciones reales son propietarias, y los simuladores de acarreo existentes son herramientas comerciales cerradas; no había un paquete Python de código abierto que simule acarreo de rajo y subterráneo sobre una red vial genuinamente restringida con minas reproducibles y generables.'

approach: 'minehaulsim is a small, dependency-light (numpy-only core) Python package. Seeded parametric generators build open-pit and underground mines (ramp topologies, underground flow modes, a constrained road network) and a deterministic discrete-event engine simulates the truck-shovel cycle on them, with real physics (rimpull/retarder speed-by-grade, emergent bunching, constrained routing), five dispatch baselines and zone-arbitration policies. Every run passes named validity gates and is byte-deterministic (asserted in CI), and results export as a cycle log, a provenance record and the 3D topology. It is used via a Python API or a CLI, and it is the generator side of a pair: it feeds structure-real scenarios to DispatchLab (the deployed web app that consumes and optimizes them).'
approachEs: 'minehaulsim es un paquete Python pequeño y liviano en dependencias (núcleo solo-numpy). Generadores paramétricos por semilla construyen minas de rajo y subterráneas (topologías de rampa, modos de flujo subterráneo, una red vial restringida) y un motor determinista de eventos discretos simula el ciclo camión-pala sobre ellas, con física real (velocidad por pendiente con rimpull/retarder, bunching emergente, ruteo restringido), cinco baselines de despacho y políticas de arbitraje de zonas. Cada corrida pasa compuertas de validez nombradas y es determinista byte a byte (asegurado en CI), y los resultados exportan como un cycle log, un registro de proveniencia y la topología 3D. Se usa vía una API Python o una CLI, y es el lado generador de un par: alimenta escenarios structure-real a DispatchLab (la app web desplegada que los consume y optimiza).'

businessContext: 'Reproducible, generatable test scenarios are the unglamorous foundation of any credible logistics or dispatch study, without them you are tuning against one hand-built case. An open, deterministic mine-haulage simulator lets a dispatch idea be tested across dozens of varied layouts, with every result reproducible from a seed, which is exactly what a fair comparison of policies needs.'
businessContextEs: 'Los escenarios de prueba reproducibles y generables son la base poco glamorosa de cualquier estudio creíble de logística o despacho, sin ellos estás ajustando contra un único caso hecho a mano. Un simulador de acarreo minero abierto y determinista permite probar una idea de despacho sobre decenas de layouts variados, con cada resultado reproducible desde una semilla, que es justo lo que necesita una comparación justa de políticas.'
strategicValue: 'MineHaul is the open, reproducible substrate under a dispatch study: a real discrete-event engine with honest, literature-ordered physics, seeded mine generators, validity gates and byte-determinism, released as an Apache-2.0 package on PyPI with a documented API, CLI and a docs wiki. It is deliberately scoped and honest: the mines are synthetic (realistic structure, fabricated data), the equipment curves are class-representative rather than OEM, and it neither predicts nor optimizes a real operation (that is DispatchLab''s job). Its niche is precise: the first open-source package to do mine haulage on a genuinely constrained road network.'
strategicValueEs: 'MineHaul es el sustrato abierto y reproducible bajo un estudio de despacho: un motor real de eventos discretos con física honesta y ordenada según la literatura, generadores de minas por semilla, compuertas de validez y determinismo byte a byte, publicado como paquete Apache-2.0 en PyPI con API documentada, CLI y una docs wiki. Está deliberadamente acotado y es honesto: las minas son sintéticas (estructura realista, datos fabricados), las curvas de equipo son representativas de clase y no OEM, y ni predice ni optimiza una operación real (ese es el trabajo de DispatchLab). Su nicho es preciso: el primer paquete de código abierto que hace acarreo minero sobre una red vial genuinamente restringida.'

kpis:
  - label: 'Reproducible scenarios'
    labelEs: 'Escenarios reproducibles'
    baseline: 'One hand-built test case'
    baselineEs: 'Un único caso de prueba a mano'
    result: 'Seeded generators → dozens of distinct mines, byte-deterministic'
    resultEs: 'Generadores por semilla → decenas de minas distintas, deterministas byte a byte'
    impact: 'Fair, repeatable policy comparisons'
    impactEs: 'Comparaciones de políticas justas y repetibles'
  - label: 'Open-source niche'
    labelEs: 'Nicho de código abierto'
    baseline: 'Commercial closed simulators only'
    baselineEs: 'Solo simuladores comerciales cerrados'
    result: 'First OSS package: haulage on a constrained road network'
    resultEs: 'Primer paquete OSS: acarreo sobre red vial restringida'
    impact: 'A reusable, inspectable substrate'
    impactEs: 'Un sustrato reutilizable e inspeccionable'
  - label: 'Trust in the engine'
    labelEs: 'Confianza en el motor'
    baseline: 'Unverified simulation'
    baselineEs: 'Simulación sin verificar'
    result: '227 tests, 7 validity gates, CI on Linux + Windows'
    resultEs: '227 tests, 7 compuertas de validez, CI en Linux + Windows'
    impact: 'Determinism and physics orderings are checked'
    impactEs: 'El determinismo y los órdenes de física se verifican'

metrics:
  - label: 'Package'
    labelEs: 'Paquete'
    value: 'minehaulsim v0.10.0 on PyPI · Apache-2.0 · numpy-only · Python 3.11–3.13 (Alpha)'
    valueEs: 'minehaulsim v0.10.0 en PyPI · Apache-2.0 · solo-numpy · Python 3.11–3.13 (Alpha)'
  - label: 'Coverage'
    labelEs: 'Cobertura'
    value: '2 mine domains · 3 ramp topologies · 3 underground flow modes · 5 dispatch baselines · 3 zone policies'
    valueEs: '2 dominios de mina · 3 topologías de rampa · 3 modos de flujo subterráneo · 5 baselines de despacho · 3 políticas de zona'
  - label: 'Rigor'
    labelEs: 'Rigor'
    value: '227/227 tests · 7 validity gates · byte-deterministic (CI-asserted) · ≥20k events/s (measured ~63–77k)'
    valueEs: '227/227 tests · 7 compuertas de validez · determinista byte a byte (CI) · ≥20k eventos/s (medido ~63–77k)'
  - label: 'Outputs'
    labelEs: 'Salidas'
    value: 'cycle log (CSV) · provenance (JSON) · 3D topology (JSON); a committed 12-seed pit gallery'
    valueEs: 'cycle log (CSV) · proveniencia (JSON) · topología 3D (JSON); una galería committeada de 12 pits'
  - label: 'Interface'
    labelEs: 'Interfaz'
    value: 'Python API + CLI (generate / batch / run / render / validate / demo); no web app'
    valueEs: 'API Python + CLI (generate / batch / run / render / validate / demo); sin app web'

stack: [Python, NumPy, Discrete-Event Simulation, PyPI, Apache-2.0]
---

## The generator behind a dispatch study

MineHaul (`minehaulsim`) is an **open-source Python package** for deterministic **discrete-event simulation of open-pit and underground mine haulage** on constrained road networks, with seeded parametric mine generators. It is the companion **generator** for [DispatchLab](https://fasl-work.com/portfolio), MineHaul builds and simulates the mines, DispatchLab consumes and optimizes them. On [PyPI](https://pypi.org/project/minehaulsim/) (v0.10, Apache-2.0) with a documented API, CLI and docs wiki.

## Real engine, synthetic mines, said plainly

The discrete-event engine and its physics are genuine and hand-verified: rimpull/retarder speed-by-grade, emergent truck bunching, routing on a constrained network, five dispatch baselines and zone-arbitration policies. Every run passes named **validity gates** and is **byte-deterministic** (asserted in CI, 227 tests on Linux + Windows). The mines themselves are **synthetic**: seeded generators produce *realistic structure with fabricated data* (labelled `structure-real`), and equipment values use public spec-sheet magnitudes with **class-representative, not OEM, curves**.

## Honest scope

It is early (Alpha) and deliberately bounded: it **does not predict or optimize a real operation** (no calibration to a real mine, that is DispatchLab's role), its physics anchors are qualitative literature orderings used as tests rather than field-validated numbers, and its novelty claim keeps its qualifier, the first **open-source** package to do mine haulage on a genuinely constrained road network (commercial closed tools exist).

[Source on GitHub](https://github.com/fsantibanezleal/CAOS_MINEHAUL) · [minehaulsim on PyPI](https://pypi.org/project/minehaulsim/)
