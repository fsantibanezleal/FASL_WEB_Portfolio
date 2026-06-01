---
title: 'Hyperspectral Mineral Analysis by Topic Modelling'
titleEs: 'Análisis Mineral Hiperespectral por Modelado de Tópicos'
slug: hyperspectral-topic-modelling
date: 2022-09-01
category: spectral-analysis
excerpt: 'A research platform that treats hyperspectral mineral images as documents and mines them with unsupervised topic models (LDA/ProdLDA/ETM). A design-space sweep over 17 spectral representations finds that mutual-information-weighted bands (V20) give the most separable mineral topics. Started as a 2022 conference paper, now a live interactive platform.'
excerptEs: 'Plataforma de investigación que trata las imágenes minerales hiperespectrales como documentos y las analiza con modelos de tópicos no supervisados (LDA/ProdLDA/ETM). Un barrido del espacio de diseño sobre 17 representaciones espectrales encuentra que las bandas ponderadas por información mutua (V20) dan los tópicos minerales más separables. Comenzó como un paper de conferencia en 2022, hoy es una plataforma interactiva en vivo.'
icon: tabler:chart-histogram
tags: [hyperspectral, topic-modelling, lda, unsupervised, mineralogy, representation-learning, fastapi]
proprietary: false
featured: true
assetPatterns: [lda, hsi, topic]
github: 'https://github.com/fsantibanezleal/CAOS_LDA_HSI'
demo: 'https://lda-hsi.fasl-work.com'
# publication: '<add the real Procemin/MinProGeo 2022 paper URL if available — left out rather than guessed>'

challenge: 'Hyperspectral images carry hundreds of bands per pixel, but most mineral-analysis pipelines need labelled training data that rarely exists. The open question is unsupervised: can topic models discover interpretable mineral "topics" directly from spectra — and which spectral representation makes those topics most separable?'
challengeEs: 'Las imágenes hiperespectrales tienen cientos de bandas por píxel, pero la mayoría de los pipelines de análisis mineral necesitan datos etiquetados que rara vez existen. La pregunta abierta es no supervisada: ¿pueden los modelos de tópicos descubrir "tópicos" minerales interpretables directamente desde los espectros — y qué representación espectral los hace más separables?'

approach: 'Spectra are framed as documents and spectral patterns as vocabulary, then modelled with LDA, ProdLDA, ETM and HDP backbones. The core contribution is a design-space sweep: 17 spectral representations (V1–V20, e.g. CWT-Morlet, sparse-dictionary, UMAP, VQ-VAE, graph-Laplacian, mutual-information-weighted bands) scored on an F-axis evaluation battery and extended across topic counts Q = 8 / 16 / 32. Validated on the Indian Pines benchmark (396 labelled cells).'
approachEs: 'Los espectros se plantean como documentos y los patrones espectrales como vocabulario, luego se modelan con LDA, ProdLDA, ETM y HDP. La contribución central es un barrido del espacio de diseño: 17 representaciones espectrales (V1–V20, p.ej. CWT-Morlet, diccionario disperso, UMAP, VQ-VAE, Laplaciano de grafo, bandas ponderadas por información mutua) evaluadas con una batería de ejes F y extendidas a través de conteos de tópicos Q = 8 / 16 / 32. Validado en el benchmark Indian Pines (396 celdas etiquetadas).'

businessContext: 'Hyperspectral sensing is increasingly available in geometallurgy, but turning hundreds of spectral bands into usable mineral information almost always assumes labelled ground truth — expensive lab assays that limit where and how often the analysis can run. Supervised classifiers also bake in the labels they were trained on, so they generalize poorly to new ore bodies or sensors.'
businessContextEs: 'El sensado hiperespectral está cada vez más disponible en geometalurgia, pero convertir cientos de bandas espectrales en información mineral utilizable casi siempre asume verdad de terreno etiquetada — ensayos de laboratorio costosos que limitan dónde y con qué frecuencia se puede correr el análisis. Los clasificadores supervisados también incorporan las etiquetas con que fueron entrenados, por lo que generalizan mal a nuevos cuerpos minerales o sensores.'
strategicValue: 'This is an unsupervised alternative: topic modelling discovers mineral structure directly from spectra, no labels required, which is what makes it transferable. The research payoff is a clear, reproducible answer to "which representation should you feed a spectral topic model?" — across 17 representations and three topic counts, mutual-information-weighted bands (V20) are the strongest, winning two of the evaluation axes (F-2 and F-7) on Indian Pines and producing the most distinct topics overall (lowest Jaccard overlap, 0.009 at Q=32). It improves as the topic count grows, where most representations plateau. Begun as a 2022 conference paper from postdoctoral work, the project is now a live interactive platform with a production API that serves topic counts at Q = 8 / 16 / 32, plus a companion manuscript.'
strategicValueEs: 'Es una alternativa no supervisada: el modelado de tópicos descubre estructura mineral directamente desde los espectros, sin etiquetas, y eso es lo que lo hace transferible. El resultado de investigación es una respuesta clara y reproducible a "¿qué representación conviene alimentar a un modelo de tópicos espectral?" — entre 17 representaciones y tres conteos de tópicos, las bandas ponderadas por información mutua (V20) son las más fuertes, ganando dos de los ejes de evaluación (F-2 y F-7) en Indian Pines y produciendo los tópicos más distintos en general (menor solapamiento Jaccard, 0.009 en Q=32). Mejora a medida que crece el conteo de tópicos, donde la mayoría de las representaciones se estanca. Iniciado como un paper de conferencia en 2022 desde trabajo postdoctoral, el proyecto es hoy una plataforma interactiva en vivo con una API de producción que sirve conteos de tópicos en Q = 8 / 16 / 32, más un manuscrito acompañante.'

kpis:
  - label: 'Supervision'
    labelEs: 'Supervisión'
    baseline: 'Supervised classifiers need labels'
    baselineEs: 'Clasificadores supervisados necesitan etiquetas'
    result: 'Unsupervised topic discovery'
    resultEs: 'Descubrimiento de tópicos no supervisado'
    impact: 'No lab labels required; transferable'
    impactEs: 'Sin etiquetas de laboratorio; transferible'
  - label: 'Best Representation'
    labelEs: 'Mejor Representación'
    baseline: '17 representations compared'
    baselineEs: '17 representaciones comparadas'
    result: 'V20 (MI-weighted bands) leads'
    resultEs: 'V20 (bandas ponderadas por IM) lidera'
    impact: 'Wins F-2 + F-7; lowest topic overlap'
    impactEs: 'Gana F-2 + F-7; menor solapamiento'

metrics:
  - label: 'Models'
    labelEs: 'Modelos'
    value: 'LDA, ProdLDA, ETM, HDP'
    valueEs: 'LDA, ProdLDA, ETM, HDP'
  - label: 'Design Space'
    labelEs: 'Espacio de Diseño'
    value: '17 representations (V1–V20), Q = 8/16/32'
    valueEs: '17 representaciones (V1–V20), Q = 8/16/32'
  - label: 'Benchmark'
    labelEs: 'Benchmark'
    value: 'Indian Pines (396 labelled cells)'
    valueEs: 'Indian Pines (396 celdas etiquetadas)'
  - label: 'Leading Result'
    labelEs: 'Resultado Líder'
    value: 'V20 — Jaccard 0.009 @ Q=32'
    valueEs: 'V20 — Jaccard 0.009 @ Q=32'

stack: [Python, FastAPI, scikit-learn, gensim, PyTorch, React, Vite, NumPy, SciPy]
---

## From a Conference Paper to a Live Platform

This project began in 2022 during postdoctoral research, presented as _"Geometallurgical estimation of mineral samples from hyperspectral images and topic modelling"_ at the 18th International Conference on Mineral Processing and Geometallurgy. The idea: treat a hyperspectral mineral image as a **document**, its spectral patterns as **vocabulary**, and let unsupervised **topic models** discover mineral structure with no labelled training data. Over the following years it grew into a full interactive research platform, live at [lda-hsi.fasl-work.com](https://lda-hsi.fasl-work.com).

## Spectra as Documents

Topic models (LDA, ProdLDA, ETM, HDP) were built for text, where a document is a mixture of topics and a topic is a distribution over words. Mapped to hyperspectral data, a pixel/region becomes a document and recurring spectral patterns become the vocabulary — so the model can discover mineral "topics" that mix across a scene, entirely unsupervised.

## The Real Question: Which Representation?

A topic model is only as good as what you feed it. The core contribution is a **design-space sweep** over 17 spectral representations (V1–V20) — continuous wavelet (CWT-Morlet), sparse-dictionary coding, UMAP embeddings, VQ-VAE codes, graph-Laplacian features, and mutual-information-weighted bands, among others — each scored on an **F-axis evaluation battery** and extended across topic counts **Q = 8 / 16 / 32** on the Indian Pines benchmark (396 labelled cells).

## The Result

**V20 — mutual-information-weighted bands — is the leading representation.** It wins evaluation axes **F-2 and F-7** on Indian Pines and produces the most distinct topics overall, with the **lowest Jaccard overlap (0.009 at Q=32)**. Crucially, it keeps improving as the topic count grows, where most representations plateau — MI weighting front-loads the bands that actually carry mineral-discriminative signal, so extra topics have somewhere useful to go. (On axis F-1 it ties rather than wins — a deliberately honest reading after an internal audit.)

## Live, Not Just a Slide

The sweep answers in production: a **Q-extension API** serves topic counts at Q = 8 / 16 / 32, with a React/Vite frontend over a FastAPI backend deployed on the VPS. A companion manuscript documents the methodology in full.
