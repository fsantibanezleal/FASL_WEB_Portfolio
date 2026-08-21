---
title: 'Atalaya, A Watchtower over Chile''s Open Data'
titleEs: 'Atalaya, Una Atalaya sobre los Datos Abiertos de Chile'
slug: atalaya
date: 2026-07-01
category: data-engineering
excerpt: 'Atalaya harvests Chile''s Data Observatory open catalog, profiles every downloadable table, and mines five kinds of cross-dataset relation (same-source, semantic similarity, spatial overlap, joinability and statistical correlation) into an explorable knowledge graph, with client-side semantic search running in the browser. Honest about evidence strength, never causal.'
excerptEs: 'Atalaya cosecha el catálogo abierto del Data Observatory de Chile, perfila cada tabla descargable y mina cinco tipos de relación cruzada (misma fuente, similitud semántica, solapamiento espacial, joinabilidad y correlación estadística) en un grafo de conocimiento explorable, con búsqueda semántica corriendo en el navegador. Honesto sobre la fuerza de la evidencia, nunca causal.'
icon: tabler:affiliate
tags: [data-engineering, knowledge-graph, information-retrieval, embeddings, onnx, open-data]
proprietary: false
featured: false
assetPatterns: [atalaya]
github: 'https://github.com/fsantibanezleal/CAOS_ATALAYA'
demo: 'https://atalaya.fasl-work.com'
website: 'https://atalaya.fasl-work.com'

challenge: 'An open-data catalog is a list of tables, not a map of how they relate. Chile''s Data Observatory publishes over a thousand public datasets, but which two could be joined, which cover the same territory, which correlate, which come from the same source, the questions that make open data actually useful, are invisible. Answering them at catalog scale needs real data engineering (harvest, profile, entity-resolve) and statistical care, not a keyword search.'
challengeEs: 'Un catálogo de datos abiertos es una lista de tablas, no un mapa de cómo se relacionan. El Data Observatory de Chile publica más de mil datasets públicos, pero cuáles dos podrían unirse, cuáles cubren el mismo territorio, cuáles correlacionan, cuáles vienen de la misma fuente, las preguntas que hacen a los datos abiertos realmente útiles, son invisibles. Responderlas a escala de catálogo exige ingeniería de datos real (cosechar, perfilar, resolver entidades) y cuidado estadístico, no una búsqueda por palabra clave.'

approach: 'Atalaya is a data-engineering + information-retrieval pipeline, harvest → profile → relate → evaluate → export, run over 1,017 real datasets from the catalog (with a measured multi-GB partial mirror). It profiles every table, then mines five relation types into a knowledge graph: same-source, semantic similarity (a MiniLM sentence model exported to ONNX), spatial overlap, joinability (MinHash containment) and statistical correlation (Spearman with a permutation null, Benjamini-Hochberg FDR control and a partial-correlation guard). A novel calibrated multi-evidence "affinity" score fuses the signals against null-distribution percentiles and reliability weights, and can be re-weighted live. It ships as a static React SPA with the graph baked in and semantic search running client-side (transformers.js / onnxruntime-web), no backend.'
approachEs: 'Atalaya es un pipeline de ingeniería de datos + recuperación de información, cosechar → perfilar → relacionar → evaluar → exportar, corrido sobre 1.017 datasets reales del catálogo (con un espejo parcial medido de varios GB). Perfila cada tabla, luego mina cinco tipos de relación en un grafo de conocimiento: misma fuente, similitud semántica (un modelo de oraciones MiniLM exportado a ONNX), solapamiento espacial, joinabilidad (containment por MinHash) y correlación estadística (Spearman con un nulo por permutación, control de FDR Benjamini-Hochberg y un guardia de correlación parcial). Un score novel de "afinidad" multi-evidencia calibrado fusiona las señales contra percentiles de distribución nula y pesos de fiabilidad, y puede re-ponderarse en vivo. Se entrega como un SPA React estático con el grafo horneado y búsqueda semántica corriendo en el cliente (transformers.js / onnxruntime-web), sin backend.'

businessContext: 'Public data is only as useful as your ability to connect it, and the connective tissue (which datasets join, overlap or correlate) is exactly what catalogs never provide. Atalaya turns a flat catalog into a navigable graph of relationships, which is the difference between "here are a thousand tables" and "here are the two that, joined, answer your question." Doing it with statistical discipline (nulls, FDR, partial-correlation guards) is what keeps the connections honest.'
businessContextEs: 'Los datos públicos sirven solo tanto como tu capacidad de conectarlos, y el tejido conectivo (qué datasets se unen, solapan o correlacionan) es justo lo que los catálogos nunca proveen. Atalaya convierte un catálogo plano en un grafo navegable de relaciones, que es la diferencia entre "aquí hay mil tablas" y "aquí están las dos que, unidas, responden tu pregunta". Hacerlo con disciplina estadística (nulos, FDR, guardias de correlación parcial) es lo que mantiene honestas las conexiones.'
strategicValue: 'Atalaya demonstrates an end-to-end data-engineering + IR stack (catalog harvesting, profiling, entity-resolution/joinability, statistically-vetted relations and a calibrated fusion score) delivered as a static, backendless, client-inference web app. Its discipline is the point: it reports evidence strength honestly (of ~14,000 edges, the vast majority are cheap priors; the hard evidence is a few hundred joins and a handful of FDR-controlled correlations), it never implies causation, and the modern embedding model beats the classical baseline only modestly. That honest, reproducible framing is what makes it a credible relation explorer rather than a graph that overstates itself.'
strategicValueEs: 'Atalaya demuestra un stack completo de ingeniería de datos + IR (cosecha de catálogo, perfilado, resolución de entidades/joinabilidad, relaciones validadas estadísticamente y un score de fusión calibrado) entregado como una app web estática, sin backend, con inferencia en el cliente. Su disciplina es el punto: reporta la fuerza de la evidencia con honestidad (de ~14.000 aristas, la gran mayoría son priors baratos; la evidencia dura son unos cientos de joins y un puñado de correlaciones con FDR controlado), nunca implica causalidad, y el modelo de embeddings moderno supera a la línea base clásica solo modestamente. Ese encuadre honesto y reproducible es lo que lo hace un explorador de relaciones creíble en vez de un grafo que se exagera.'

kpis:
  - label: 'From catalog to map'
    labelEs: 'De catálogo a mapa'
    baseline: 'A flat list of tables'
    baselineEs: 'Una lista plana de tablas'
    result: 'A knowledge graph of 5 relation types over 1,017 datasets'
    resultEs: 'Un grafo de conocimiento de 5 tipos de relación sobre 1.017 datasets'
    impact: 'Find the datasets that actually connect'
    impactEs: 'Encontrar los datasets que realmente conectan'
  - label: 'Honest evidence'
    labelEs: 'Evidencia honesta'
    baseline: '"14,000 relationships"'
    baselineEs: '"14.000 relaciones"'
    result: 'Strength labelled: cheap priors vs 117 joins + 24 FDR-controlled correlations'
    resultEs: 'Fuerza etiquetada: priors baratos vs 117 joins + 24 correlaciones con FDR'
    impact: 'You know which edges to trust'
    impactEs: 'Sabes en qué aristas confiar'
  - label: 'Where it runs'
    labelEs: 'Dónde corre'
    baseline: 'A served backend'
    baselineEs: 'Un backend servido'
    result: 'Static SPA; semantic search runs client-side (ONNX)'
    resultEs: 'SPA estático; la búsqueda semántica corre en el cliente (ONNX)'
    impact: 'No server, fully inspectable'
    impactEs: 'Sin servidor, totalmente inspeccionable'

metrics:
  - label: 'Pipeline'
    labelEs: 'Pipeline'
    value: 'harvest → profile → relate → evaluate → export (1,017 datasets, multi-GB partial mirror)'
    valueEs: 'cosechar → perfilar → relacionar → evaluar → exportar (1.017 datasets, espejo parcial multi-GB)'
  - label: 'Relations mined'
    labelEs: 'Relaciones minadas'
    value: 'same-source · semantic (MiniLM/ONNX) · spatial · joinable (MinHash, 117) · correlated (Spearman+FDR, 24)'
    valueEs: 'misma-fuente · semántica (MiniLM/ONNX) · espacial · joinable (MinHash, 117) · correlada (Spearman+FDR, 24)'
  - label: 'Model ladder'
    labelEs: 'Escalera de modelos'
    value: 'classical (PCA/KMeans + TF-IDF foil) + SOTA (MiniLM embeddings) + a novel calibrated multi-evidence affinity score'
    valueEs: 'clásico (PCA/KMeans + TF-IDF) + SOTA (embeddings MiniLM) + un score novel de afinidad multi-evidencia calibrado'
  - label: 'Honesty'
    labelEs: 'Honestidad'
    value: 'Not causal; SOTA beats classical only ~+1.4 pts; small-n correlations flagged fragile'
    valueEs: 'No causal; SOTA supera al clásico solo ~+1,4 pts; correlaciones de n pequeño marcadas frágiles'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'Python pipeline → React SPA · transformers.js / onnxruntime-web · KaTeX · static, no backend'
    valueEs: 'Pipeline Python → SPA React · transformers.js / onnxruntime-web · KaTeX · estático, sin backend'

stack: [Python, NumPy, MiniLM, ONNX, React, TypeScript]
---

## A map of how open data connects

Atalaya is a **watchtower over Chile's open data**. It harvests the [Data Observatory](https://catalogo.dataobservatory.net) catalog, profiles every downloadable table, and mines **five kinds of cross-dataset relation** into an explorable knowledge graph: turning a flat list of a thousand-plus datasets into a map of which ones join, overlap, correlate or share a source. Live at [atalaya.fasl-work.com](https://atalaya.fasl-work.com).

## Five relations, mined with care

Over 1,017 real datasets: **same-source**, **semantic similarity** (a MiniLM model exported to ONNX), **spatial overlap**, **joinability** (MinHash containment) and **statistical correlation** (Spearman with a permutation null, Benjamini-Hochberg FDR control and a partial-correlation guard). A novel calibrated **affinity** score fuses the signals against null-distribution percentiles and can be re-weighted live. The whole thing ships as a static SPA with the graph baked in and **semantic search running client-side**, no backend.

## Honest about the graph

The number that matters is not "~14,000 relationships", most of those are cheap priors. The **hard evidence** is a few hundred joinable pairs and a handful of FDR-controlled correlations, and Atalaya labels that strength rather than hiding it. It never implies causation (some small-n correlations are flagged fragile), and the modern embedding model beats the classical TF-IDF baseline only **modestly** (~+1.4 points). It is a relation *explorer*, reported at the confidence the data supports.

[Live demo](https://atalaya.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_ATALAYA)
