---
title: 'QLab — Quantum Laboratory'
titleEs: 'QLab — Laboratorio Cuántico'
slug: qlab
date: 2026-06-25
category: quantum-computing
excerpt: 'A public, didactic quantum-computing lab that runs real frameworks (Qiskit, PennyLane, Cirq, Stim) on 20 worked cases and puts every quantum method next to its classical baseline — and honestly shows that at lab scale, classical still wins.'
excerptEs: 'Un laboratorio cuántico público y didáctico que corre frameworks reales (Qiskit, PennyLane, Cirq, Stim) en 20 casos y compara cada método cuántico con su línea base clásica — y muestra honestamente que, a escala de laboratorio, lo clásico aún gana.'
icon: tabler:atom
tags: [quantum-computing, qiskit, pennylane, cirq, stim, education, honest-benchmarks]
proprietary: false
featured: false
assetPatterns: [qlab, quantum]
github: 'https://github.com/fsantibanezleal/CAOS_QLAB'
demo: 'https://qlab.fasl-work.com'
website: 'https://qlab.fasl-work.com'

challenge: 'Quantum computing is drowning in marketing. "Quantum advantage" is announced constantly, while a learner has almost no way to run a quantum method, run its classical equivalent, and see — with real numbers — which actually wins and at what cost. Most tutorials stop at one toy circuit on a hand-rolled simulator, and most claims are asserted, not reproducible.'
challengeEs: 'La computación cuántica está saturada de marketing. La "ventaja cuántica" se anuncia constantemente, mientras quien aprende casi no tiene forma de correr un método cuántico, correr su equivalente clásico y ver — con números reales — cuál gana de verdad y a qué costo. La mayoría de los tutoriales se quedan en un circuito de juguete sobre un simulador casero, y la mayoría de las afirmaciones se aseveran, no se reproducen.'

approach: 'QLab is a Problem × Solver engine: method-agnostic problem formulations and thin solver adapters over the real frameworks (Qiskit + Aer, PennyLane, Cirq, Stim, with scikit-learn / NumPy as the classical foils), each self-registering so adding a framework is one adapter plus one registry line. It ships 20 worked cases across six families (fundamentals → entanglement → oracles → flagship algorithms → variational/QML → noise & QEC) as 119 committed, reproducible JSON traces — every on-screen number is computed by a real engine and replayed, never typed in. The browser runs an exact TypeScript state-vector simulator (≤ 12 qubits) for the live lane, while heavier cases are precomputed offline. Each case shows a quantum-vs-classical comparison panel — qubits, gates, shots, wall-time side by side — with an honest verdict badge.'
approachEs: 'QLab es un motor Problema × Solver: formulaciones de problemas agnósticas al método y adaptadores delgados de solver sobre los frameworks reales (Qiskit + Aer, PennyLane, Cirq, Stim, con scikit-learn / NumPy como contrapartes clásicas), cada uno auto-registrado de modo que agregar un framework es un adaptador más una línea en el registro. Trae 20 casos en seis familias (fundamentos → entrelazamiento → oráculos → algoritmos insignia → variacional/QML → ruido y QEC) como 119 trazas JSON versionadas y reproducibles — cada número en pantalla lo calcula un motor real y se reproduce, nunca se escribe a mano. El navegador corre un simulador exacto de vector de estado en TypeScript (≤ 12 qubits) para el carril en vivo, mientras los casos pesados se precomputan offline. Cada caso muestra un panel de comparación cuántico-vs-clásico — qubits, compuertas, shots, tiempo — lado a lado, con una insignia de veredicto honesto.'

businessContext: 'Deciding whether quantum computing matters for a given problem — today, not in a hypothetical future — requires separating genuine quantum effects from speedups that do not yet exist in practice. QLab is a decision and education instrument for exactly that: it makes the honest field verdict legible by running both sides and putting the costs on screen, so the takeaway is evidence rather than a press release.'
businessContextEs: 'Decidir si la computación cuántica importa para un problema dado — hoy, no en un futuro hipotético — exige separar los efectos cuánticos genuinos de las aceleraciones que aún no existen en la práctica. QLab es un instrumento de decisión y educación justamente para eso: hace legible el veredicto honesto del campo corriendo ambos lados y poniendo los costos en pantalla, de modo que la conclusión sea evidencia y no un comunicado de prensa.'

strategicValue: 'QLab demonstrates fluency across the real quantum toolchain (Qiskit, PennyLane, Cirq, Stim) wrapped in a reproducible, replay-is-truth architecture — and, more rarely, the discipline to report the unflattering result: across 20 cases, zero show a practical pay-for-it speedup. It does flag genuine quantum phenomena (e.g. CHSH violating the classical bound, S = 2√2 > 2) while being explicit that nonlocality is not a speedup. The same static, no-backend, trace-as-data pattern used by the rest of the lab portfolio keeps it cheap to host and fully auditable.'
strategicValueEs: 'QLab demuestra fluidez en la cadena de herramientas cuánticas reales (Qiskit, PennyLane, Cirq, Stim) envuelta en una arquitectura reproducible donde "el replay es la verdad" — y, más raro aún, la disciplina de reportar el resultado incómodo: en 20 casos, ninguno muestra una aceleración práctica que valga su costo. Sí señala fenómenos cuánticos genuinos (p. ej. CHSH violando la cota clásica, S = 2√2 > 2) siendo explícito en que la no-localidad no es una aceleración. El mismo patrón estático, sin backend y con la traza como dato del resto del portafolio de labs lo mantiene barato de alojar y totalmente auditable.'

kpis:
  - label: 'Practical quantum speedups demonstrated'
    labelEs: 'Aceleraciones cuánticas prácticas demostradas'
    baseline: 'Marketed "quantum advantage"'
    baselineEs: '"Ventaja cuántica" de marketing'
    result: '0 of 20 cases'
    resultEs: '0 de 20 casos'
    impact: 'Teaches the honest field verdict, with costs on screen'
    impactEs: 'Enseña el veredicto honesto del campo, con los costos en pantalla'
  - label: 'Head-to-head worked cases'
    labelEs: 'Casos resueltos cara a cara'
    baseline: 'Tutorial = 1 toy circuit'
    baselineEs: 'Tutorial = 1 circuito de juguete'
    result: '20 cases, quantum vs classical'
    resultEs: '20 casos, cuántico vs clásico'
    impact: 'Fundamentals → entanglement → oracles → algorithms → QML → QEC'
    impactEs: 'Fundamentos → entrelazamiento → oráculos → algoritmos → QML → QEC'
  - label: 'Reproducibility'
    labelEs: 'Reproducibilidad'
    baseline: 'Numbers typed into slides'
    baselineEs: 'Números escritos en diapositivas'
    result: '119 committed traces, run = f(params, seed)'
    resultEs: '119 trazas versionadas, corrida = f(parámetros, semilla)'
    impact: 'Every number regenerable — replay is truth'
    impactEs: 'Cada número regenerable — el replay es la verdad'

metrics:
  - label: 'Worked cases'
    labelEs: 'Casos trabajados'
    value: '20 across 6 families'
    valueEs: '20 en 6 familias'
  - label: 'Real frameworks driven'
    labelEs: 'Frameworks reales usados'
    value: 'Qiskit+Aer · PennyLane · Cirq · Stim · scikit-learn (+ NumPy core)'
    valueEs: 'Qiskit+Aer · PennyLane · Cirq · Stim · scikit-learn (+ núcleo NumPy)'
  - label: 'Committed reproducible traces'
    labelEs: 'Trazas reproducibles versionadas'
    value: '119 (+ 119 manifests)'
    valueEs: '119 (+ 119 manifiestos)'
  - label: 'Live in-browser lane'
    labelEs: 'Carril en vivo en navegador'
    value: 'Exact TypeScript state-vector sim, ≤ 12 qubits'
    valueEs: 'Sim exacto de vector de estado en TypeScript, ≤ 12 qubits'
  - label: 'Real-hardware (QPU) runs committed'
    labelEs: 'Corridas en hardware real (QPU) versionadas'
    value: '0 — all traces ran on a simulator'
    valueEs: '0 — todas las trazas corrieron en simulador'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'Python engine + React 19 / Vite / TS · static (GitHub Pages) · v0.34'
    valueEs: 'Motor Python + React 19 / Vite / TS · estático (GitHub Pages) · v0.34'

stack: [Python, Qiskit, PennyLane, Cirq, Stim, scikit-learn, NumPy, TypeScript, React, Vite, KaTeX, GitHub Pages]
---

## Run both sides, show the costs

QLab is an open, didactic quantum-computing lab. It runs the **real** frameworks — Qiskit + Aer, PennyLane, Cirq, Stim — on 20 worked cases, and for each one it puts the quantum method next to its classical baseline so you can see, with real numbers, which wins and at what cost. Live at [qlab.fasl-work.com](https://qlab.fasl-work.com).

## The honest thesis

Across all 20 cases, **none shows a practical, pay-for-it quantum speedup** — at lab scale, classical still wins, and QLab shows the qubits / gates / shots / wall-time side by side so the verdict is evidence, not a slogan. It is careful about the difference between a genuine quantum *phenomenon* and a quantum *advantage*: the CHSH case really does violate the classical bound (S = 2√2 > 2), and QLab labels that as nonlocality, **not** a speedup.

## Architecture — Problem × Solver, replay is truth

A method-agnostic problem formulation meets a thin solver adapter; adapters self-register, so adding a framework is one adapter plus one registry line. A run is a pure function of `(params, seed)` → a committed JSON trace (119 of them, with manifests). The front end only replays traces, or runs an **exact TypeScript state-vector simulator** (≤ 12 qubits) for the live in-browser lane; heavier cases are precomputed offline by the real Python engines. No backend, no secrets — static GitHub Pages.

## What it is not

QLab runs on **simulators**: every committed trace is `ran_on: simulator`. The IBM-Quantum adapter exists but is dormant and opt-in, with zero committed QPU runs — so QLab makes no real-hardware or quantum-advantage claims. Qiskit runs **offline only** (the browser lane is the custom TS simulator, since Qiskit has no browser build). The flagship algorithms are at educational scale (Shor N = 15, VQE on H₂, small QEC codes).

[Live demo](https://qlab.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_QLAB)
