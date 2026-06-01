---
title: 'UnderMine Risk — Geotechnical Risk Operator Dashboard'
titleEs: 'UnderMine Risk — Panel de Operador de Riesgo Geotécnico'
slug: undermine-risk
date: 2026-04-01
category: geotechnical
excerpt: 'An interactive operator dashboard that turns weekly geotechnical risk model output into an actionable mine map. Per-extraction-point risk on a deck.gl view, aggregation layers, per-lever actionables, and printable monthly reports. A portfolio demo running on fully synthetic data.'
excerptEs: 'Panel de operador interactivo que convierte la salida semanal de un modelo de riesgo geotécnico en un mapa de mina accionable. Riesgo por punto de extracción sobre una vista deck.gl, capas de agregación, acciones por palanca, e informes mensuales imprimibles. Demo de portafolio sobre datos completamente sintéticos.'
icon: tabler:map-2
tags: [geotechnical, mining-safety, deckgl, nextjs, dashboard, shap, visualization]
proprietary: false
featured: true
assetPatterns: [undermine, underrisk]
github: 'https://github.com/fsantibanezleal/CAOS_WEB_UnderMineRisk'
demo: 'https://underrisk.fasl-work.com'

challenge: 'A geotechnical risk model produces numbers; an operator needs a decision. The gap every mining-safety ML project hits is the last mile: turning weekly per-point risk scores and their explanations into something a shift can act on — see where risk is rising, why, and what to do — without reading a notebook.'
challengeEs: 'Un modelo de riesgo geotécnico produce números; un operador necesita una decisión. La brecha que enfrenta todo proyecto de ML para seguridad minera es la última milla: convertir los puntajes de riesgo semanales por punto y sus explicaciones en algo accionable por un turno — ver dónde sube el riesgo, por qué, y qué hacer — sin leer un notebook.'

approach: 'A Next.js 16 / React 19 web app renders per-PEX (extraction point) weekly risk on a deck.gl OrthographicView of the mine, with aggregation layers (street / sub-sector / cluster) driven by riskMax + maxDelta so escalating points never hide inside an average. SHAP history per point explains the drivers, an actionables engine suggests responses by lever, and any view exports to a print-optimized monthly report. Multi-area (Amatista + Zafiro), bilingual ES/EN, fed by a weekly synthetic GeoJSON pipeline.'
approachEs: 'Una app web Next.js 16 / React 19 renderiza el riesgo semanal por PEX (punto de extracción) sobre una OrthographicView deck.gl de la mina, con capas de agregación (calle / subsector / clúster) guiadas por riskMax + maxDelta para que los puntos en escalada nunca se escondan en un promedio. El historial SHAP por punto explica los factores, un motor de acciones sugiere respuestas por palanca, y cualquier vista se exporta a un informe mensual optimizado para impresión. Multi-área (Amatista + Zafiro), bilingüe ES/EN, alimentada por un pipeline semanal de GeoJSON sintético.'

businessContext: 'In mining, geotechnical risk information often lives in models and spreadsheets that operations teams can not act on directly. Risk that is summarized as an average hides the single escalating point that matters most, and explanations that live in a data-science notebook never reach the people making shift decisions. The result is information that exists but is not operational.'
businessContextEs: 'En minería, la información de riesgo geotécnico suele vivir en modelos y planillas que los equipos de operación no pueden accionar directamente. El riesgo resumido como promedio esconde el único punto en escalada que más importa, y las explicaciones que viven en un notebook de ciencia de datos nunca llegan a quienes toman decisiones de turno. El resultado es información que existe pero no es operacional.'
strategicValue: 'UnderMine Risk is an engineering demonstration of the operator-facing last mile for explainable risk. Two design choices carry it: aggregation layers roll up by riskMax + maxDelta (not the mean), because in a safety context an escalating point must never be buried in an average; and every view exports to a print-optimized monthly report, because the audience for mine-safety risk includes people who sign off on paper. SHAP history makes each score auditable week over week, and a per-lever actionables engine turns risk into response. It runs on fully synthetic data behind authentication — it shows the dashboard engineering (deck.gl, aggregation, actionables, audit-ready reporting), not a claim that any production mine runs on it. Next.js 16 + React 19 front end over a weekly Python data pipeline.'
strategicValueEs: 'UnderMine Risk es una demostración de ingeniería de la última milla orientada al operador para riesgo explicable. Dos decisiones de diseño lo sostienen: las capas de agregación acumulan por riskMax + maxDelta (no el promedio), porque en un contexto de seguridad un punto en escalada nunca debe quedar sepultado en un promedio; y cada vista se exporta a un informe mensual optimizado para impresión, porque la audiencia del riesgo de seguridad minera incluye a quienes firman en papel. El historial SHAP hace auditable cada puntaje semana a semana, y un motor de acciones por palanca convierte el riesgo en respuesta. Corre sobre datos completamente sintéticos tras autenticación — muestra la ingeniería del panel (deck.gl, agregación, acciones, reportería auditable), no una afirmación de que alguna mina en producción lo use. Front end Next.js 16 + React 19 sobre un pipeline de datos semanal en Python.'

kpis:
  - label: 'Last Mile'
    labelEs: 'Última Milla'
    baseline: 'Risk score in a notebook'
    baselineEs: 'Puntaje de riesgo en un notebook'
    result: 'Interactive operator map + actionables'
    resultEs: 'Mapa de operador interactivo + acciones'
    impact: 'Risk becomes a decision'
    impactEs: 'El riesgo se vuelve decisión'
  - label: 'Aggregation'
    labelEs: 'Agregación'
    baseline: 'Mean (hides escalations)'
    baselineEs: 'Promedio (esconde escaladas)'
    result: 'riskMax + maxDelta roll-up'
    resultEs: 'Acumulación riskMax + maxDelta'
    impact: 'Escalating points stay visible'
    impactEs: 'Los puntos en escalada se mantienen visibles'

metrics:
  - label: 'Frontend'
    labelEs: 'Frontend'
    value: 'Next.js 16 · React 19 · deck.gl'
    valueEs: 'Next.js 16 · React 19 · deck.gl'
  - label: 'Explainability'
    labelEs: 'Explicabilidad'
    value: 'SHAP history per PEX'
    valueEs: 'Historial SHAP por PEX'
  - label: 'Coverage'
    labelEs: 'Cobertura'
    value: 'Multi-area, weekly, bilingual'
    valueEs: 'Multi-área, semanal, bilingüe'
  - label: 'Data'
    labelEs: 'Datos'
    value: 'Synthetic (demo, auth-gated)'
    valueEs: 'Sintéticos (demo, con autenticación)'

stack: [TypeScript, Next.js, React, deck.gl, Plotly, Auth.js, Drizzle, SQLite, Tailwind, Python]
---

## From a Risk Score to an Operator Decision

A geotechnical risk model outputs a number per point per week. UnderMine Risk is the operator dashboard that closes the last mile — putting that risk on an interactive mine map where a shift can see where it is rising, why, and what to do. It is a portfolio/demo piece built on **fully synthetic data** for a fictional underground mine, behind authentication; the point is the operator-facing engineering, not a production safety claim.

## A Map, Not a Table

Every extraction point (PEX) gets its weekly risk rendered on a deck.gl 2D top-down view of the mine, across multiple areas (Amatista + Zafiro). The defining design choice is the **aggregation**: street, sub-sector, and cluster roll-ups are driven by **riskMax + maxDelta**, never the mean — because in a safety context the whole reason to summarize is exactly the one escalating point a mean would bury.

## Explainable and Auditable

Each point carries its **SHAP history**, so an operator can see _why_ the risk moved week over week, and a per-lever **actionables engine** turns elevated risk into concrete responses. Any view exports to a **print-optimized monthly report** (Print / Save as PDF) — because the audience for mine-safety risk still includes people who sign off on paper.

## Stack

A **Next.js 16 + React 19** bilingual (ES/EN) front end with **deck.gl** + Plotly visualizations, **Auth.js v5** sessions, and **Drizzle/SQLite** persistence, fed by a weekly **Python** synthetic-data pipeline that writes GeoJSON per area and date. Live (auth-gated) at [underrisk.fasl-work.com](https://underrisk.fasl-work.com).
