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

businessContext: "In mineral exploration and geostatistics, every drill hole or sensor placement costs significant time and money. The question of where to place the next measurement to maximize geological information is a combinatorial optimization problem with C(H×W, K) possible configurations — computationally intractable for real-world field sizes."
businessContextEs: "En exploración mineral y geoestadística, cada sondaje o ubicación de sensor cuesta tiempo y dinero significativos. La pregunta de dónde ubicar la siguiente medición para maximizar información geológica es un problema de optimización combinatoria con C(H×W, K) configuraciones posibles — computacionalmente intratable para tamaños de campo del mundo real."
strategicValue: "This implementation of the AdSEMES algorithm provides optimal spatial sampling with a provable (1-1/e) ≈ 63.2% approximation guarantee via submodularity. Six sampling strategies are compared systematically (random, stratified, multiscale, oracle, adaptive entropy, regular grid) with spatial penalty functions preventing measurement clustering. Three reconstruction methods (nearest neighbor, indicator kriging, entropy-weighted inverse distance) recover the full field from sparse observations. Companion code to published papers in Mathematical Geosciences and Natural Resources Research. Developed under Fondecyt Grant 1140840."
strategicValueEs: "Esta implementación del algoritmo AdSEMES provee muestreo espacial óptimo con una garantía de aproximación demostrable de (1-1/e) ≈ 63.2% vía submodularidad. Seis estrategias de muestreo se comparan sistemáticamente (aleatorio, estratificado, multiescala, oráculo, entropía adaptiva, grilla regular) con funciones de penalización espacial que previenen agrupamiento de mediciones. Tres métodos de reconstrucción (vecino más cercano, kriging indicador, distancia inversa ponderada por entropía) recuperan el campo completo desde observaciones dispersas. Código acompañante de artículos publicados en Mathematical Geosciences y Natural Resources Research. Desarrollado bajo Proyecto Fondecyt 1140840."

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

## The Combinatorial Explosion

Given K measurements on an H×W binary random field, the number of possible placement configurations is C(H×W, K). For a 50×50 field with 20 measurements: over 10²⁶ possibilities. Exhaustive search is NP-hard. And traditional approaches — regular grids, random placement — ignore spatial information content entirely.

## Six Strategies Compared

The system implements six fundamentally different approaches: random placement (baseline), stratified sampling (random within grid cells), multiscale refinement (coarse to fine), an oracle using true field knowledge (theoretical upper bound), the AdSEMES entropy maximization method, and regular grid spacing (standard practice).

Each strategy can incorporate **spatial penalty functions** that discourage clustering — important because entropy-optimal placement can concentrate measurements in high-uncertainty regions at the expense of spatial coverage.

Three reconstruction methods complete the pipeline: nearest neighbor (fast, no assumptions), indicator kriging (optimal under stationarity), and entropy-weighted inverse distance (hybrid approach weighting by both proximity and information content).

## The Submodularity Guarantee

Entropy maximization satisfies **submodularity**: the marginal information gain from adding a measurement decreases as the existing set grows. This mathematical property guarantees the greedy sequential algorithm achieves at least **(1 - 1/e) ≈ 63.2%** of the globally optimal information gain. This is a **provable bound**, not an empirical observation — the greedy solution is certifiably close to optimal despite the combinatorial explosion of the search space.

Developed at the IDS Group, Universidad de Chile (2014–2016), under Fondecyt Grant 1140840.
