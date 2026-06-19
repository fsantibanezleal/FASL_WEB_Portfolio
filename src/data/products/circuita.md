---
title: 'Circuita — Stochastic Mineral-Tracking Engine & Console'
titleEs: 'Circuita — Motor Estocástico de Trazabilidad Mineral y Consola'
slug: circuita
date: 2026-06-08
category: mining-optimization
excerpt: 'A private analysis console built on a stochastic cellular-automaton engine that tracks material through a processing circuit. It produces fan, balance, delta and inventory views per pile and exports a self-contained, bilingual report with inline-SVG charts.'
excerptEs: 'Una consola de análisis privada construida sobre un motor de autómata celular estocástico que rastrea material a través de un circuito de procesamiento. Produce vistas de abanico, balance, delta e inventario por pila y exporta un reporte autocontenido y bilingüe con gráficos SVG embebidos.'
icon: tabler:circuit-changeover
tags: [mining, cellular-automaton, simulation, material-tracking, reporting, private]
proprietary: true
featured: false

challenge: 'Material moving through a processing circuit mixes, splits, and lags in ways that simple mass balances miss. Operators need to see how a pile''s composition evolves across the circuit, compare expected vs. actual, and share that analysis without a heavyweight tool on the other end.'
challengeEs: 'El material que se mueve por un circuito de procesamiento se mezcla, divide y desfasa de formas que un balance de masa simple no captura. Los operadores necesitan ver cómo evoluciona la composición de una pila a lo largo del circuito, comparar esperado vs. real, y compartir ese análisis sin una herramienta pesada del otro lado.'
approach: 'Circuita drives a stochastic cellular-automaton engine that simulates material tracking through the circuit, then renders the result in an analysis console: per-pile fan, balance, delta and inventory views, with monitor tabs for the circuit and for individual objects. A report builder downsamples the original series per analyzed pile and emits a self-contained bilingual HTML export with inline-SVG charts — no server needed to read it. An architecture modal documents the engine and the full pipeline flow.'
approachEs: 'Circuita impulsa un motor de autómata celular estocástico que simula la trazabilidad del material por el circuito, y luego renderiza el resultado en una consola de análisis: vistas por pila de abanico, balance, delta e inventario, con pestañas de monitor para el circuito y para objetos individuales. Un constructor de reportes submuestrea las series originales por pila analizada y emite una exportación HTML bilingüe autocontenida con gráficos SVG embebidos — sin servidor para leerla. Un modal de arquitectura documenta el motor y el flujo completo del pipeline.'
businessContext: 'Understanding where material actually goes in a circuit — not where a static balance says it should — is the difference between chasing a phantom loss and fixing a real one. A shareable, self-contained report means the analysis travels to whoever needs it.'
businessContextEs: 'Entender a dónde va realmente el material en un circuito — no a dónde un balance estático dice que debería — es la diferencia entre perseguir una pérdida fantasma y corregir una real. Un reporte compartible y autocontenido hace que el análisis llegue a quien lo necesite.'
strategicValue: 'Circuita pairs a principled stochastic engine with an operator-grade console and a zero-dependency report format. The same approach — simulate the real stochastic behavior, then make it legible and shareable — applies to any flow system where mixing and lag defeat naive accounting.'
strategicValueEs: 'Circuita combina un motor estocástico con fundamento, una consola de nivel operador y un formato de reporte sin dependencias. El mismo enfoque — simular el comportamiento estocástico real y luego hacerlo legible y compartible — aplica a cualquier sistema de flujo donde la mezcla y el desfase derrotan la contabilidad ingenua.'

kpis:
  - label: 'Circuit visibility'
    labelEs: 'Visibilidad del circuito'
    baseline: 'Static mass balance'
    baselineEs: 'Balance de masa estático'
    result: 'Stochastic per-pile tracking (fan/balance/delta/inventory)'
    resultEs: 'Trazabilidad estocástica por pila (abanico/balance/delta/inventario)'
    impact: 'See where material actually goes'
    impactEs: 'Ver a dónde va realmente el material'
  - label: 'Sharing the analysis'
    labelEs: 'Compartir el análisis'
    baseline: 'Tool required on both ends'
    baselineEs: 'Herramienta requerida en ambos extremos'
    result: 'Self-contained bilingual HTML + inline SVG'
    resultEs: 'HTML bilingüe autocontenido + SVG embebido'
    impact: 'Open and read anywhere'
    impactEs: 'Abrir y leer en cualquier parte'

metrics:
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'Stochastic cellular automaton'
    valueEs: 'Autómata celular estocástico'
  - label: 'Views'
    labelEs: 'Vistas'
    value: 'Fan · balance · delta · inventory, per pile'
    valueEs: 'Abanico · balance · delta · inventario, por pila'
  - label: 'Report'
    labelEs: 'Reporte'
    value: 'Self-contained bilingual HTML, inline-SVG charts'
    valueEs: 'HTML bilingüe autocontenido, gráficos SVG embebidos'
  - label: 'Deployment'
    labelEs: 'Despliegue'
    value: 'Private; Azure Container Apps (Next build → Python serves)'
    valueEs: 'Privado; Azure Container Apps (build Next → Python sirve)'

stack: [TypeScript, Next.js, Python, FastAPI, Cellular Automata, SVG, Docker, Azure Container Apps]
---

## See where material actually goes

Circuita is a **private** analysis console for mineral-tracking through a processing circuit. A stochastic cellular-automaton engine simulates how material mixes and lags; the console renders per-pile fan, balance, delta and inventory views; and a one-click report exports a self-contained, bilingual HTML file with inline-SVG charts that opens anywhere.

*This is proprietary work; the deployment is private. The card describes the architecture and intent without exposing internal data or logic.*
