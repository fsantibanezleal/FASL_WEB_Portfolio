---
title: 'Faena, Mining-Analytics Hub'
titleEs: 'Faena, Hub de Analítica Minera'
slug: faena
date: 2026-06-28
category: mining-analytics
excerpt: 'A single open launcher that catalogues a growing set of independent, in-browser mining-analytics tools across the value chain, exploration → drill & blast → load/haul → comminution → processing → tailings → asset health → economics. Each tool is its own documented product on a named real dataset or a validated synthetic. Four live today, ten in active development, and more mapped on a visible roadmap.'
excerptEs: 'Un lanzador abierto que cataloga un conjunto creciente de herramientas de analítica minera en el navegador, a lo largo de la cadena de valor, exploración → perforación y tronadura → carguío/transporte → conminución → procesamiento → relaves → salud de activos → economía. Cada herramienta es su propio producto documentado sobre un dataset real citado o un sintético validado. Cuatro en vivo hoy, diez en desarrollo activo y 28 más en un roadmap visible.'
icon: tabler:layout-grid
tags: [mining, analytics, hub, launcher, astro, catalogue]
proprietary: false
featured: false
assetPatterns: [faena]
github: 'https://github.com/fsantibanezleal/CAOS_FAENA'
demo: 'https://faena.fasl-work.com'
website: 'https://faena.fasl-work.com'

challenge: 'Mining analytics spans the whole value chain (geology, drill & blast, haulage, comminution, flotation, tailings, asset health, economics) and useful tools for it tend to be one-off notebooks or heavyweight platforms. There was no single, honest place to see the pieces as one catalogue: what exists and works today, what is being built, and what is still just a plan.'
challengeEs: 'La analítica minera abarca toda la cadena de valor (geología, perforación y tronadura, transporte, conminución, flotación, relaves, salud de activos, economía) y las herramientas útiles para ella suelen ser notebooks aislados o plataformas pesadas. No había un solo lugar honesto para ver las piezas como un catálogo: qué existe y funciona hoy, qué se está construyendo y qué es todavía solo un plan.'

approach: 'Faena is a static launcher, not an app: a fast, crawlable index that lists each tool and links out to its own repo and subdomain, it never bundles or proxies the apps. It is fully data-driven from a registry: two organizing axes (value-chain stage as swimlanes, solution-type as a colour facet) and a three-state lifecycle, planned → building → live, so the roadmap is visible and honest by construction. Adding a tool is a data edit. Built with Astro (ships almost no JavaScript), bilingual EN/ES, light/dark, deployed to GitHub Pages.'
approachEs: 'Faena es un lanzador estático, no una app: un índice rápido y rastreable que lista cada herramienta y enlaza a su propio repo y subdominio, nunca las empaqueta ni las proxea. Está totalmente dirigido por datos desde un registro: dos ejes de organización (etapa de la cadena de valor como swimlanes, tipo de solución como faceta de color) y un ciclo de vida de tres estados, planeado → en construcción → en vivo, para que el roadmap sea visible y honesto por construcción. Agregar una herramienta es una edición de datos. Construido con Astro (envía casi nada de JavaScript), bilingüe EN/ES, claro/oscuro, desplegado en GitHub Pages.'

businessContext: 'A portfolio of analytics tools is only useful if you can find the right one and trust its status. Faena is the map: it groups the tools by where they sit in the productive cycle and by what kind of method they are, and it is explicit about maturity, so a visitor sees at a glance the few that are production-quality today versus the many that are in progress or planned, without any tool overselling itself.'
businessContextEs: 'Un portafolio de herramientas de analítica solo sirve si puedes encontrar la correcta y confiar en su estado. Faena es el mapa: agrupa las herramientas por dónde están en el ciclo productivo y por qué tipo de método son, y es explícito sobre la madurez, así un visitante ve de un vistazo las pocas que son de calidad productiva hoy versus las muchas en progreso o planeadas, sin que ninguna herramienta se sobre-venda.'
strategicValue: 'Faena turns a scattered set of mining-analytics experiments into one coherent, honest catalogue with a visible lifecycle. The launcher pattern keeps every tool independent (its own repo, subdomain, data and docs) while giving the whole a shared front door and a truthful roadmap (planned, building, live) that never claims more than what actually ships. It is the organizing surface that lets the collection grow tool by tool without losing the thread or the honesty.'
strategicValueEs: 'Faena convierte un conjunto disperso de experimentos de analítica minera en un catálogo coherente y honesto con un ciclo de vida visible. El patrón de lanzador mantiene cada herramienta independiente (su propio repo, subdominio, datos y docs) mientras le da al conjunto una puerta de entrada común y un roadmap veraz (planeado, en construcción, en vivo) que nunca afirma más de lo que realmente se entrega. Es la superficie organizadora que permite que la colección crezca herramienta por herramienta sin perder el hilo ni la honestidad.'

kpis:
  - label: 'Finding the right tool'
    labelEs: 'Encontrar la herramienta correcta'
    baseline: 'Scattered notebooks / repos'
    baselineEs: 'Notebooks / repos dispersos'
    result: 'One launcher, indexed by value-chain stage + solution type'
    resultEs: 'Un lanzador, indexado por etapa de la cadena + tipo de solución'
    impact: 'The whole collection is navigable at a glance'
    impactEs: 'Toda la colección se navega de un vistazo'
  - label: 'Honest maturity'
    labelEs: 'Madurez honesta'
    baseline: '"N apps" with no status'
    baselineEs: '"N apps" sin estado'
    result: 'A visible lifecycle: planned → building → live'
    resultEs: 'Un ciclo de vida visible: planeado → en construcción → en vivo'
    impact: 'You see what actually ships vs what is in progress'
    impactEs: 'Ves qué se entrega de verdad vs qué está en progreso'

metrics:
  - label: 'Status (honest)'
    labelEs: 'Estado (honesto)'
    value: '4 live · 10 in active development · 28 planned on the roadmap'
    valueEs: '3 en vivo · 7 en desarrollo activo · ~29 planeadas en el roadmap'
  - label: 'Live today'
    labelEs: 'En vivo hoy'
    value: 'ChargeCascade · RotorVitals · CutoffGrade Studio'
    valueEs: 'ChargeCascade · RotorVitals · CutoffGrade Studio'
  - label: 'Organization'
    labelEs: 'Organización'
    value: 'Value-chain swimlanes × solution-type facet (CV · 3D physics · optimization · condition-monitoring · geospatial · forecasting)'
    valueEs: 'Swimlanes por cadena de valor × faceta por tipo de solución (CV · física 3D · optimización · monitoreo de condición · geoespacial · forecasting)'
  - label: 'Model'
    labelEs: 'Modelo'
    value: 'Static launcher, lists and links out, never bundles the apps'
    valueEs: 'Lanzador estático, lista y enlaza, nunca empaqueta las apps'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'Astro (static, minimal JS) · i18n EN/ES · light/dark · data-driven registry · GitHub Pages'
    valueEs: 'Astro (estático, mínimo JS) · i18n EN/ES · claro/oscuro · registro dirigido por datos · GitHub Pages'

stack: [Astro, TypeScript, i18n, GitHub Pages]
---

## One launcher, many tools

Faena is the open **hub** for a growing family of independent, in-browser mining-analytics tools. It is not an app itself, it is a fast static index that catalogues each tool across the value chain (exploration → drill & blast → load/haul → comminution → processing → tailings → asset health → economics) and links out to its own repo and subdomain. It never bundles or proxies the apps. Live at [faena.fasl-work.com](https://faena.fasl-work.com).

## Honest by construction

Every tile carries a lifecycle status, so the catalogue tells the truth about maturity: **4 live today** (DispatchLab, ChancaDEM, ChargeCascade, RotorVitals), **10 in active development**, and **28 more mapped on the roadmap**, tiles advance *planned → building → live* as each one actually ships. "Live" here means brought to the quality bar, not merely deployed. There is no "39 mining apps" claim; there is a small set that works today and a visible plan for the rest.

## How it is organized

Two axes: **value-chain stage** as swimlanes and **solution-type** (computer vision, 3D physics, optimization/OR, condition monitoring, geospatial, forecasting) as a colour facet you can filter. The whole site is **data-driven** from a registry, adding a tool is a data edit, and built with **Astro** for a static, crawlable, near-zero-JS surface, bilingual EN/ES with a light/dark theme.

[Live hub](https://faena.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_FAENA)
