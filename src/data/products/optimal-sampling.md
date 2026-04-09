---
title: "Optimal Spatial Sampling via Information Theory"
titleEs: "Muestreo Espacial Óptimo vía Teoría de la Información"
slug: optimal-sampling
date: 2016-03-01
category: research
excerpt: "Implements the AdSEMES algorithm for optimal spatial sampling in binary random fields — specifically channelized geological reservoirs. Companion code to published papers in Mathematical Geosciences and Natural Resources Research."
excerptEs: "Implementa el algoritmo AdSEMES para muestreo espacial óptimo en campos aleatorios binarios — específicamente reservorios geológicos canalizados. Código acompañante de artículos publicados en Mathematical Geosciences y Natural Resources Research."
icon: tabler:map-pin
tags: [information-theory, entropy, sampling, geostatistics, python, fastapi]
proprietary: false
featured: false
assetPatterns: [ids_owp, owp]
github: "https://github.com/fsantibanezleal/IDS_OWP"
video: "https://www.youtube.com/watch?v=KnTyQgQcpCQ"

challenge: "Given K measurements on an H×W binary field, minimize posterior uncertainty. The combinatorial search over C(H×W, K) candidates is NP-hard, requiring efficient approximation with provable quality bounds."
challengeEs: "Dadas K mediciones en un campo binario H×W, minimizar incertidumbre posterior. La búsqueda combinatoria sobre C(H×W, K) candidatos es NP-hard, requiriendo aproximación eficiente con cotas de calidad demostrables."

approach: "Greedy sequential selection exploiting submodularity achieves 63.2% approximation guarantee. Compares six sampling strategies (random, stratified, multiscale, oracle, adaptive entropy, regular grid) with spatial penalty functions. Three reconstruction methods: nearest neighbor, indicator kriging, entropy-weighted inverse-distance."
approachEs: "Selección secuencial greedy explotando submodularidad logra garantía de aproximación de 63.2%. Compara seis estrategias de muestreo (aleatorio, estratificado, multiescala, oráculo, entropía adaptiva, grilla regular) con funciones de penalización espacial. Tres métodos de reconstrucción: vecino más cercano, kriging indicador, distancia inversa ponderada por entropía."

kpis:
  - label: "Sampling Strategies"
    labelEs: "Estrategias de Muestreo"
    baseline: "Regular grid or random"
    baselineEs: "Grilla regular o aleatorio"
    result: "6 strategies with entropy optimization"
    resultEs: "6 estrategias con optimización de entropía"
    impact: "Information-theoretic placement"
    impactEs: "Ubicación basada en teoría de información"
  - label: "Reconstruction"
    labelEs: "Reconstrucción"
    baseline: "Single method"
    baselineEs: "Método único"
    result: "3 methods compared systematically"
    resultEs: "3 métodos comparados sistemáticamente"
    impact: "Best method per scenario"
    impactEs: "Mejor método por escenario"

metrics:
  - label: "Strategies"
    labelEs: "Estrategias"
    value: "6 sampling methods"
    valueEs: "6 métodos de muestreo"
  - label: "Approximation"
    labelEs: "Aproximación"
    value: "63.2% of global optimum"
    valueEs: "63.2% del óptimo global"
  - label: "Reconstruction"
    labelEs: "Reconstrucción"
    value: "3 methods"
    valueEs: "3 métodos"
  - label: "Funding"
    labelEs: "Financiamiento"
    value: "Fondecyt 1140840"
    valueEs: "Fondecyt 1140840"

stack: [Python, FastAPI, NumPy, SciPy, Information Theory, Indicator Kriging, Shannon Entropy]
---

## The Problem

Given K measurements on an H×W binary random field, where should we place them to minimize posterior uncertainty? The search space is C(H×W, K) — combinatorially explosive and NP-hard. Traditional approaches (regular grids, random sampling) ignore spatial information content entirely.

## Six Sampling Strategies

The system compares six fundamentally different approaches:

1. **Random** — uniform random placement (baseline)
2. **Stratified** — random within regular grid cells (better spatial coverage)
3. **Multiscale** — hierarchical refinement from coarse to fine
4. **Oracle** — uses true field knowledge (theoretical upper bound, unreachable in practice)
5. **Adaptive Entropy (AdSEMES)** — sequential entropy maximization (our method)
6. **Regular Grid** — evenly-spaced measurements (standard practice)

Each strategy can be combined with **spatial penalty functions** that discourage clustering, ensuring measurements are well-distributed even when entropy-optimal placement might favor certain regions.

## Three Reconstruction Methods

Given sparse observations, the unknown field is reconstructed using:

1. **Nearest Neighbor** — simple Voronoi-based assignment (fast, no assumptions)
2. **Indicator Kriging** — geostatistical interpolation exploiting spatial correlation (optimal under stationarity)
3. **Entropy-Weighted Inverse Distance** — hybrid approach weighting by both distance and information content

## The Submodularity Guarantee

The key theoretical result: because entropy maximization in this setting satisfies **submodularity** (diminishing returns), the greedy sequential algorithm achieves at least **(1 - 1/e) ≈ 63.2%** of the globally optimal information gain.

This is not an empirical observation — it is a **mathematical guarantee**. The greedy algorithm provably produces high-quality solutions despite the combinatorial explosion of the search space.

Developed at the IDS Group, Universidad de Chile (2014–2016), under **Fondecyt Grant 1140840**.
