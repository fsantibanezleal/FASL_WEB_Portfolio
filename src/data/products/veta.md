---
title: 'Veta — Agentic Mineral-Tracking Decision Support'
titleEs: 'Veta — Soporte de Decisión Agéntico para Trazabilidad Mineral'
slug: veta
date: 2026-06-10
category: mining-optimization
excerpt: 'A private decision-support system that turns a natural-language question (typed or spoken) about a mineral-processing operation into a traceable, evidence-backed answer — a multi-stage agent pipeline routes the query to tiered solvers and grounds every recommendation in plant data with RAG.'
excerptEs: 'Un sistema privado de soporte a la decisión que convierte una pregunta en lenguaje natural (escrita o hablada) sobre una operación de procesamiento mineral en una respuesta trazable y respaldada por evidencia — un pipeline de agentes enruta la consulta a solvers por niveles y fundamenta cada recomendación en datos de planta con RAG.'
icon: tabler:pick
tags: [mining, decision-support, agents, rag, voice, optimization, private]
proprietary: true
featured: false
demo: 'https://veta.fasl-work.com'
website: 'https://veta.fasl-work.com'

challenge: 'In a mineral-processing operation, the knowledge needed to answer "what should we do about this feed and these operating constraints?" is spread across telemetry, historical runs, and expert intuition. Pulling it together is slow, manual, and hard to audit — and an answer with no traceable evidence is hard to trust on the plant floor.'
challengeEs: 'En una operación de procesamiento mineral, el conocimiento para responder "¿qué hacemos con esta alimentación y estas restricciones operativas?" está disperso entre telemetría, corridas históricas e intuición experta. Reunirlo es lento, manual y difícil de auditar — y una respuesta sin evidencia trazable cuesta confiar en planta.'
approach: 'Veta exposes a single chat surface (text and voice). Each request flows through a multi-stage agent pipeline that interprets intent, assembles the relevant plant state, and routes to a tiered solver (cheap heuristics first, heavier optimization only when warranted). Every recommendation is grounded with retrieval over the tracked sites'' data (RAG), so the answer arrives with its supporting evidence attached. An offline pipeline builds per-site artifacts that are content-addressed (sha256-manifested) for reproducibility.'
approachEs: 'Veta expone una sola superficie de chat (texto y voz). Cada solicitud fluye por un pipeline de agentes que interpreta la intención, ensambla el estado de planta relevante y enruta a un solver por niveles (heurísticas baratas primero, optimización pesada solo cuando se justifica). Cada recomendación se fundamenta con recuperación sobre los datos de los sitios trazados (RAG), de modo que la respuesta llega con su evidencia adjunta. Un pipeline offline construye artefactos por sitio direccionados por contenido (manifestados con sha256) para reproducibilidad.'
businessContext: 'Plant decisions are high-stakes and time-sensitive, yet the supporting analysis is often locked in spreadsheets and specialists'' heads. A conversational, evidence-first assistant compresses the loop from question to defensible recommendation, and makes the reasoning auditable rather than a black box.'
businessContextEs: 'Las decisiones de planta son críticas y sensibles al tiempo, pero el análisis de soporte suele quedar atrapado en planillas y en la cabeza de especialistas. Un asistente conversacional y centrado en evidencia comprime el ciclo de pregunta a recomendación defendible, y hace el razonamiento auditable en vez de una caja negra.'
strategicValue: 'Veta is a working pattern for agentic decision support in heavy industry: a voice/text front door, a staged agent pipeline, solver tiers that spend compute only when justified, and RAG that keeps every answer grounded and traceable. The same architecture generalizes to any operation where decisions must be fast, defensible, and reproducible.'
strategicValueEs: 'Veta es un patrón funcional de soporte a la decisión agéntico para industria pesada: una puerta de entrada por voz/texto, un pipeline de agentes por etapas, niveles de solver que gastan cómputo solo cuando se justifica, y RAG que mantiene cada respuesta fundamentada y trazable. La misma arquitectura se generaliza a cualquier operación donde las decisiones deban ser rápidas, defendibles y reproducibles.'

kpis:
  - label: 'Question → recommendation'
    labelEs: 'Pregunta → recomendación'
    baseline: 'Manual analysis across tools/people'
    baselineEs: 'Análisis manual entre herramientas/personas'
    result: 'Single conversational surface (text + voice)'
    resultEs: 'Una sola superficie conversacional (texto + voz)'
    impact: 'Compressed decision loop'
    impactEs: 'Ciclo de decisión comprimido'
  - label: 'Trust in the answer'
    labelEs: 'Confianza en la respuesta'
    baseline: 'Opaque, untraceable'
    baselineEs: 'Opaca, no trazable'
    result: 'Every answer carries its RAG evidence'
    resultEs: 'Cada respuesta lleva su evidencia RAG'
    impact: 'Auditable recommendations'
    impactEs: 'Recomendaciones auditables'

metrics:
  - label: 'Interface'
    labelEs: 'Interfaz'
    value: 'Conversational — text + voice'
    valueEs: 'Conversacional — texto + voz'
  - label: 'Pipeline'
    labelEs: 'Pipeline'
    value: 'Multi-stage agents → tiered solvers + RAG evidence'
    valueEs: 'Agentes multi-etapa → solvers por niveles + evidencia RAG'
  - label: 'Reproducibility'
    labelEs: 'Reproducibilidad'
    value: 'Per-site, sha256-manifested artifacts'
    valueEs: 'Artefactos por sitio, manifestados con sha256'
  - label: 'Deployment'
    labelEs: 'Despliegue'
    value: 'Live (private); dual-target VPS + Azure Container Apps'
    valueEs: 'En vivo (privado); doble destino VPS + Azure Container Apps'

stack: [Python, FastAPI, LLM agents, RAG, Speech-to-Text, Optimization, Docker, Azure Container Apps]
---

## A conversational front door to plant decisions

Veta is a **private** decision-support system for mineral-processing operations. Ask it a question — typed or spoken — and a multi-stage agent pipeline interprets the intent, gathers the relevant plant state, routes to the right solver tier, and answers with the supporting evidence attached.

*This is proprietary work; the live deployment is private. The card describes the architecture and intent without exposing internal data or logic.*
