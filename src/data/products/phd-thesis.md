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

## The Problem

Given a budget of N measurements, where should they be placed to maximize information gained about an unknown spatial field? This is the **Optimal Sensor Placement (OSP) problem** — fundamental to mineral exploration, environmental monitoring, and any domain where data collection is expensive.

## Theoretical Foundations

### Information-Theoretic Framework

- **Shannon Entropy**: `H(X) = -Σ p(x) log p(x)` — measures total uncertainty about the unknown field
- **Conditional Entropy**: `H(X^f | X_f)` — residual uncertainty after observing at locations f
- **Mutual Information**: `I(X_f; X^f) = H(X^f) - H(X^f | X_f)` — the information gained by measuring at f

The goal: choose measurement locations f that maximize mutual information — or equivalently, minimize conditional entropy.

### The Computational Challenge

For a field of size H×W with K measurement locations, the search space is C(H×W, K) — combinatorially explosive. Exhaustive search is NP-hard.

### The AdSEMES Algorithm

**Adaptive Sequential Empirical Maximum Entropy Sampling** exploits a key mathematical property: entropy maximization in this setting is **submodular** — adding a measurement to a small set yields more information gain than adding it to a large set. This guarantees that greedy sequential selection achieves at least **(1-1/e) ≈ 63.2%** of the global optimum. Not just empirically — this is a provable bound.

## Applications

- **Drill hole placement** for mineral resource estimation — where to drill next for maximum geological information
- **Ore-waste boundary discrimination** — delineating contacts with minimal samples
- **Geological facies recovery** — reconstructing subsurface geological images from sparse observations

## Publications

1. "Sampling Strategies for Uncertainty Reduction in Categorical Random Fields" — *Mathematical Geosciences*, 2019
2. "Optimal Sampling Strategy for Spatial Estimation of Ore-Waste Contacts Using Maximum Entropy" — *Natural Resources Research*, 2020
3. "Geological Facies Recovery Based on Weighted L1-Regularization" — *Mathematical Geosciences*, 2019

**Thesis repository**: [Universidad de Chile](http://repositorio.uchile.cl/handle/2250/175050)
