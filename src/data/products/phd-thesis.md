---
title: "Information-Theoretic Sampling for Geological Image Recovery"
titleEs: "Muestreo Basado en Teoría de la Información para Recuperación de Imágenes Geológicas"
slug: phd-thesis
date: 2019-12-17
category: research
excerpt: "Doctoral thesis addressing optimal sensor placement — where to place N measurements to minimize posterior uncertainty in binary random fields. Introduced AdSEMES algorithm with submodularity guarantees. Published in Mathematical Geosciences and Natural Resources Research."
excerptEs: "Tesis doctoral que aborda el posicionamiento óptimo de sensores — dónde ubicar N mediciones para minimizar incertidumbre posterior en campos aleatorios binarios. Introdujo el algoritmo AdSEMES con garantías de submodularidad. Publicado en Mathematical Geosciences y Natural Resources Research."
icon: tabler:school
tags: [phd-thesis, information-theory, entropy, geostatistics, optimal-sampling, mining]
proprietary: false
featured: false
assetPatterns: [ids_owp, owp]
github: "https://github.com/fsantibanezleal/IDS_OWP"
publication: "http://repositorio.uchile.cl/handle/2250/175050"

challenge: "Given N measurements budget, where to place them to minimize posterior uncertainty? The combinatorial search over C(H×W, K) candidates is NP-hard. Traditional sampling strategies (regular grids, random) ignore spatial information content."
challengeEs: "Dado un presupuesto de N mediciones, ¿dónde ubicarlas para minimizar la incertidumbre posterior? La búsqueda combinatoria sobre C(H×W, K) candidatos es NP-hard. Las estrategias de muestreo tradicionales (grillas regulares, aleatorias) ignoran el contenido informacional espacial."

approach: "AdSEMES (Adaptive Sequential Empirical Maximum Entropy Sampling) algorithm exploiting submodularity for (1-1/e) approximation to global optimum. Compares six sampling strategies with spatial penalty functions and three reconstruction methods. Applied to drill hole placement for mineral resource estimation and ore-waste boundary discrimination."
approachEs: "Algoritmo AdSEMES (Muestreo Empírico Secuencial Adaptivo de Máxima Entropía) explotando submodularidad para aproximación (1-1/e) al óptimo global. Compara seis estrategias de muestreo con funciones de penalización espacial y tres métodos de reconstrucción. Aplicado a ubicación de sondajes para estimación de recursos minerales y discriminación de contactos mineral-estéril."
businessContext: "The Optimal Sensor Placement problem is fundamental to mineral exploration, environmental monitoring, and any domain where data collection is expensive. Given a budget of N measurements, where should they be placed to learn as much as possible about an unknown spatial field? For a modest 50x50 field with 20 measurements, the search space exceeds 10^26 possible configurations. Exhaustive search is NP-hard, and traditional approaches — regular grids, random placement — ignore spatial information content entirely."
businessContextEs: "El problema de Posicionamiento Óptimo de Sensores es fundamental para exploración mineral, monitoreo ambiental, y cualquier dominio donde la recolección de datos es costosa. Dado un presupuesto de N mediciones, ¿dónde deben ubicarse para aprender lo máximo posible sobre un campo espacial desconocido? Para un campo modesto de 50x50 con 20 mediciones, el espacio de búsqueda excede 10^26 configuraciones posibles. La búsqueda exhaustiva es NP-hard, y los enfoques tradicionales — grillas regulares, ubicación aleatoria — ignoran completamente el contenido informacional espacial."
strategicValue: "The thesis introduces AdSEMES (Adaptive Sequential Empirical Maximum Entropy Sampling), exploiting a key mathematical property: entropy maximization in this setting is submodular, guaranteeing that greedy sequential selection achieves at least (1-1/e) ≈ 63.2% of the global optimum — a provable bound, not an empirical observation. The framework compares six sampling strategies with spatial penalty functions and three reconstruction methods (nearest neighbor, indicator kriging, entropy-weighted inverse distance). Applied to drill hole placement for mineral resource estimation and ore-waste boundary discrimination. Published in Mathematical Geosciences (2019) and Natural Resources Research (2020)."
strategicValueEs: "La tesis introduce AdSEMES (Muestreo Empírico Secuencial Adaptivo de Máxima Entropía), explotando una propiedad matemática clave: la maximización de entropía en este contexto es submodular, garantizando que la selección secuencial greedy alcanza al menos (1-1/e) ≈ 63.2% del óptimo global — una cota demostrable, no una observación empírica. El framework compara seis estrategias de muestreo con funciones de penalización espacial y tres métodos de reconstrucción (vecino más cercano, kriging indicador, distancia inversa ponderada por entropía). Aplicado a ubicación de sondajes para estimación de recursos minerales y discriminación de contactos mineral-estéril. Publicado en Mathematical Geosciences (2019) y Natural Resources Research (2020)."

kpis:
  - label: "Optimality Guarantee"
    labelEs: "Garantía de Optimalidad"
    baseline: "Heuristic placement"
    baselineEs: "Ubicación heurística"
    result: "(1-1/e) ≈ 63.2% of global optimum"
    resultEs: "(1-1/e) ≈ 63.2% del óptimo global"
    impact: "Provable quality bound"
    impactEs: "Cota de calidad demostrable"
  - label: "Publications"
    labelEs: "Publicaciones"
    baseline: "N/A"
    baselineEs: "N/A"
    result: "3 journal papers (Math Geosci, NRR)"
    resultEs: "3 artículos en revistas (Math Geosci, NRR)"
    impact: "Peer-reviewed validation"
    impactEs: "Validación por revisión de pares"

metrics:
  - label: "Algorithm"
    labelEs: "Algoritmo"
    value: "AdSEMES"
    valueEs: "AdSEMES"
  - label: "Theory"
    labelEs: "Teoría"
    value: "Shannon Entropy, Mutual Information"
    valueEs: "Entropía de Shannon, Información Mutua"
  - label: "Publications"
    labelEs: "Publicaciones"
    value: "3 journal papers"
    valueEs: "3 artículos en revistas"
  - label: "Applications"
    labelEs: "Aplicaciones"
    value: "Drill hole placement, facies recovery"
    valueEs: "Ubicación de sondajes, recuperación de facies"

stack: [Python, NumPy, SciPy, Information Theory, Geostatistics, Indicator Kriging, LaTeX]
---

## The Question

Given a budget of N measurements, where should you place them to learn as much as possible about an unknown spatial field? This is the Optimal Sensor Placement problem — fundamental to mineral exploration (where to drill next), environmental monitoring (where to install sensors), and any domain where data collection is expensive.

The search space is C(H×W, K) — combinatorially explosive. For a modest 50×50 field with 20 measurements, that's over 10²⁶ possible configurations. Exhaustive search is impossible.

## The Information-Theoretic Approach

The thesis frames the problem through **Shannon entropy** and **mutual information**:

- `H(X) = -Σ p(x) log p(x)` — total uncertainty about the unknown field
- `H(X^f | X_f)` — residual uncertainty after observing at locations f
- `I(X_f; X^f) = H(X^f) - H(X^f | X_f)` — information gained by measuring at f

The goal: choose locations that maximize mutual information. The breakthrough: entropy maximization in this setting satisfies **submodularity** — adding a measurement to a small set yields more information gain than adding it to a large set. This mathematical property guarantees that greedy sequential selection achieves at least **(1 - 1/e) ≈ 63.2%** of the global optimum. Not an empirical observation — a provable bound.

The **AdSEMES** (Adaptive Sequential Empirical Maximum Entropy Sampling) algorithm implements this with spatial penalty functions that prevent clustering and three reconstruction methods (nearest neighbor, indicator kriging, entropy-weighted inverse distance) for recovering the full field from sparse observations.

## Publications

1. "Sampling Strategies for Uncertainty Reduction in Categorical Random Fields" — *Mathematical Geosciences*, 2019
2. "Optimal Sampling Strategy for Spatial Estimation of Ore-Waste Contacts" — *Natural Resources Research*, 2020
3. "Geological Facies Recovery Based on Weighted L1-Regularization" — *Mathematical Geosciences*, 2019
