---
title: 'Mantia — Agentic Industrial-Maintenance Suite'
titleEs: 'Mantia — Suite Agéntica de Mantenimiento Industrial'
slug: mantia
date: 2026-06-12
category: agentic-ai
excerpt: 'A private suite of agentic assistants for industrial asset maintenance, shaped to enterprise EAM data via OData. A portal hub catalogs three specialist agents — work-order generation, spares planning, and notification triage — all built on one shared agent core with a mock-or-real connector.'
excerptEs: 'Una suite privada de asistentes agénticos para el mantenimiento de activos industriales, modelada sobre datos EAM empresariales vía OData. Un portal-hub cataloga tres agentes especialistas — generación de órdenes de trabajo, planificación de repuestos y triage de avisos — todos sobre un núcleo de agente compartido con conector simulado o real.'
icon: tabler:robot
tags: [agentic-ai, maintenance, odata, eam, llm, automation, private]
proprietary: true
featured: false
demo: 'https://mantia.fasl-work.com'
website: 'https://mantia.fasl-work.com'

challenge: 'Industrial maintenance planning is repetitive, knowledge-heavy, and bound to enterprise systems whose data is awkward to work with. Each task — raising a work order, planning spare parts, triaging a notification — needs the same enterprise context but is usually done by hand, one transaction at a time.'
challengeEs: 'La planificación de mantenimiento industrial es repetitiva, intensiva en conocimiento y atada a sistemas empresariales cuyos datos son incómodos de manejar. Cada tarea — levantar una orden de trabajo, planificar repuestos, triar un aviso — necesita el mismo contexto empresarial pero suele hacerse a mano, transacción por transacción.'
approach: 'Mantia is a hub-and-agents suite. A portal hub presents a data-driven catalog of agents with lifecycle tiles and a business case per agent. Three specialist agents sit behind it — one drafts maintenance work orders, one plans spares and reservations against material stock, one triages plant notifications — and all share a single agent core: a generic OData V2 connector (with CSRF), an agent base, and a common web baseline. The connector runs against a faithful mock of the enterprise schema in development and a real backend in production, so the same agent code ships to both.'
approachEs: 'Mantia es una suite hub-y-agentes. Un portal-hub presenta un catálogo de agentes guiado por datos, con fichas de ciclo de vida y un caso de negocio por agente. Tres agentes especialistas operan detrás — uno redacta órdenes de trabajo de mantenimiento, otro planifica repuestos y reservas contra stock de material, otro tría avisos de planta — y todos comparten un mismo núcleo de agente: un conector genérico OData V2 (con CSRF), una base de agente y una línea base web común. El conector corre contra un mock fiel del esquema empresarial en desarrollo y un backend real en producción, de modo que el mismo código de agente va a ambos.'
businessContext: 'Maintenance is where uptime is won or lost, and most of its planning work is structured enough to assist with agents — but only if the assistant speaks the enterprise system''s language safely. Mantia''s mock-or-real connector lets the agents be developed, demoed, and validated without touching a production backend, then promoted to the real one unchanged.'
businessContextEs: 'El mantenimiento es donde se gana o pierde la disponibilidad, y gran parte de su planificación es lo bastante estructurada como para asistirse con agentes — pero solo si el asistente habla el lenguaje del sistema empresarial de forma segura. El conector simulado-o-real de Mantia permite desarrollar, demostrar y validar los agentes sin tocar un backend productivo, y luego promoverlos al real sin cambios.'
strategicValue: 'Mantia demonstrates a reusable accelerator pattern: a shared agent core (connector + agent base + web baseline) that turns each new use case into a thin, fast-to-build specialist agent. The hub makes the suite legible to a business audience (catalog, lifecycle, business case), and the mock-first connector de-risks integration with heavyweight enterprise systems.'
strategicValueEs: 'Mantia demuestra un patrón de acelerador reutilizable: un núcleo de agente compartido (conector + base de agente + línea base web) que convierte cada nuevo caso de uso en un agente especialista delgado y rápido de construir. El hub hace la suite legible para una audiencia de negocio (catálogo, ciclo de vida, caso de negocio), y el conector mock-primero reduce el riesgo de integración con sistemas empresariales pesados.'

kpis:
  - label: 'New use case → working agent'
    labelEs: 'Nuevo caso de uso → agente funcional'
    baseline: 'Bespoke build per integration'
    baselineEs: 'Construcción a medida por integración'
    result: 'Thin agent on a shared core'
    resultEs: 'Agente delgado sobre un núcleo compartido'
    impact: 'Faster, consistent delivery'
    impactEs: 'Entrega más rápida y consistente'
  - label: 'Integration risk'
    labelEs: 'Riesgo de integración'
    baseline: 'Dev against a live backend'
    baselineEs: 'Desarrollo contra un backend en vivo'
    result: 'Mock-first connector, real in prod'
    resultEs: 'Conector mock-primero, real en prod'
    impact: 'Build & demo without touching production'
    impactEs: 'Construir y demostrar sin tocar producción'

metrics:
  - label: 'Composition'
    labelEs: 'Composición'
    value: 'Portal hub + 3 specialist agents'
    valueEs: 'Portal-hub + 3 agentes especialistas'
  - label: 'Shared core'
    labelEs: 'Núcleo compartido'
    value: 'OData V2 (+CSRF) connector + agent base + web baseline'
    valueEs: 'Conector OData V2 (+CSRF) + base de agente + línea base web'
  - label: 'Connector mode'
    labelEs: 'Modo del conector'
    value: 'Mock (dev) ↔ real (prod), same agent code'
    valueEs: 'Mock (dev) ↔ real (prod), mismo código de agente'
  - label: 'Deployment'
    labelEs: 'Despliegue'
    value: 'Live (private); dual-target VPS + Azure Container Apps'
    valueEs: 'En vivo (privado); doble destino VPS + Azure Container Apps'

stack: [Python, FastAPI, Pydantic-AI, LiteLLM, HTMX, OData, Docker, Azure Container Apps]
---

## A suite, not a one-off

Mantia is a **private** suite of agentic assistants for industrial maintenance. A portal hub catalogs the agents; each specialist (work-order generation, spares planning, notification triage) is a thin layer on one shared agent core, talking to an enterprise EAM schema through a connector that is a faithful mock in development and the real backend in production.

*This is proprietary work; the live deployment is private and behind access control. The card describes the architecture and intent without exposing client data, names, or internal logic.*
