---
title: 'Hyperspectral Mineral Analysis by Topic Modelling (2022)'
titleEs: 'Análisis Mineral Hiperespectral por Modelado de Tópicos (2022)'
slug: hsi-topic-modelling-2022
date: 2022-09-01
category: spectral-analysis
excerpt: 'The original 2022 conference work that reframed hyperspectral mineral characterisation as a topic-modelling problem: spectra as documents, LDA topics as a routing layer for per-topic regression. Cut copper-recovery error an order of magnitude on private drill-core data.'
excerptEs: 'El trabajo original de conferencia 2022 que replanteó la caracterización mineral hiperespectral como un problema de modelado de tópicos: espectros como documentos, tópicos LDA como capa de enrutamiento para regresión por tópico. Redujo el error de recuperación de cobre un orden de magnitud sobre datos privados de sondaje.'
icon: tabler:file-text
tags: [hyperspectral, topic-modelling, lda, geometallurgy, mineralogy, regression]
proprietary: false
featured: false
assetPatterns: [hsi_mineral_classification]
github: 'https://github.com/fsantibanezleal/CAOS_LDA_HSI'

challenge: 'Geometallurgical targets (copper/molybdenum recovery, acid consumption, Bond work index) need slow, costly lab assays on every drill-core composite. Hyperspectral imaging is fast and cheap, but a raw spectrum is hundreds of correlated bands with no obvious link to a recovery number — and a naive per-spectrum regressor is effectively useless.'
challengeEs: 'Los objetivos geometalúrgicos (recuperación de cobre/molibdeno, consumo de ácido, índice de trabajo de Bond) requieren ensayos de laboratorio lentos y costosos sobre cada compósito de sondaje. La imagen hiperespectral es rápida y barata, pero un espectro crudo son cientos de bandas correlacionadas sin vínculo obvio a un número de recuperación — y un regresor ingenuo por espectro es prácticamente inútil.'

approach: 'Reframe each mineral sample as a document. Three "wordification" recipes were compared — Version 1 (word = wavelength band, count = summed quantised intensity), V2 (word = quantised intensity level), V3 (joint per-spectrum band intensities). A gensim LDA infers a per-sample topic distribution; then a separate regressor is trained per topic, and a new sample is estimated by weighting the per-topic regressors by its inferred topic mixture — a probabilistic extension of an earlier hierarchical clustered-regression scheme.'
approachEs: 'Replantea cada muestra mineral como un documento. Se compararon tres recetas de "wordification" — Versión 1 (palabra = banda de longitud de onda, conteo = intensidad cuantizada sumada), V2 (palabra = nivel de intensidad cuantizado), V3 (intensidades de banda conjuntas por espectro). Un LDA de gensim infiere una distribución de tópicos por muestra; luego se entrena un regresor por tópico, y una muestra nueva se estima ponderando los regresores por su mezcla de tópicos inferida — una extensión probabilística de un esquema previo de regresión jerárquica por clusters.'

businessContext: 'In geometallurgy, knowing how an ore will behave in processing requires lab work that is too slow and expensive to run on everything. Hyperspectral imaging promises a cheap proxy, but only if the spectral evidence can be mapped reliably to the lab targets. This 2022 work was the first to show that the document/topic metaphor from text mining does exactly that on real mineral samples.'
businessContextEs: 'En geometalurgia, saber cómo se comportará un mineral en el procesamiento requiere trabajo de laboratorio demasiado lento y costoso para aplicarlo a todo. La imagen hiperespectral promete un proxy barato, pero solo si la evidencia espectral puede mapearse de forma confiable a los objetivos de laboratorio. Este trabajo de 2022 fue el primero en mostrar que la metáfora documento/tópico de la minería de texto hace exactamente eso sobre muestras minerales reales.'
strategicValue: 'To our knowledge the first formalisation of HSI mineral-sample characterisation as a probabilistic topic-modelling problem. The contribution over the prior hierarchical scheme (Egaña et al., Minerals 2020) was to make the clustering stage probabilistic and interpretable — each sample is a soft mixture of latent mineral topics inferred by LDA, rather than a hard cluster assignment. On the DB1 drill-core holdout, topic-routed regression with LDA Version 1 cut copper-recovery MAE from 4.568 (naive baseline) to 0.422 — roughly a 10x error reduction — and Version 3 was comparable. This is the seed idea that later scaled into the full LDA-HSI research platform; here it stays modest and period-accurate: three recipes, one backbone (LDA), small private datasets.'
strategicValueEs: 'Hasta donde sabemos, la primera formalización de la caracterización mineral hiperespectral como un problema probabilístico de modelado de tópicos. La contribución sobre el esquema jerárquico previo (Egaña et al., Minerals 2020) fue hacer la etapa de clustering probabilística e interpretable — cada muestra es una mezcla suave de tópicos minerales latentes inferidos por LDA, en lugar de una asignación dura a un cluster. En el holdout de sondaje DB1, la regresión enrutada por tópicos con LDA Versión 1 redujo el MAE de recuperación de cobre de 4.568 (línea base ingenua) a 0.422 — cerca de 10x de reducción de error — y la Versión 3 fue comparable. Esta es la idea semilla que luego escaló a la plataforma de investigación LDA-HSI completa; aquí se mantiene modesta y fiel a la época: tres recetas, un backbone (LDA), datasets privados pequeños.'

kpis:
  - label: 'Copper-recovery error (DB1)'
    labelEs: 'Error recuperación cobre (DB1)'
    baseline: 'Naive per-spectrum MAE 4.568'
    baselineEs: 'MAE ingenuo por espectro 4.568'
    result: 'LDA Version 1 MAE 0.422'
    resultEs: 'LDA Versión 1 MAE 0.422'
    impact: '~10x error reduction'
    impactEs: '~10x reducción de error'
  - label: 'Method'
    labelEs: 'Método'
    baseline: 'Hard clustering + regression'
    baselineEs: 'Clustering duro + regresión'
    result: 'Probabilistic LDA topic routing'
    resultEs: 'Enrutamiento de tópicos LDA probabilístico'
    impact: 'Soft, interpretable membership'
    impactEs: 'Pertenencia suave e interpretable'

metrics:
  - label: 'Wordification recipes'
    labelEs: 'Recetas de wordification'
    value: '3 (V1 band-frequency, V2, V3)'
    valueEs: '3 (V1 frecuencia-banda, V2, V3)'
  - label: 'Backbone'
    labelEs: 'Backbone'
    value: 'LDA (gensim, Gibbs)'
    valueEs: 'LDA (gensim, Gibbs)'
  - label: 'Data'
    labelEs: 'Datos'
    value: 'Private drill-core (DB1 146, DB2 27) + early HIDSAG'
    valueEs: 'Sondaje privado (DB1 146, DB2 27) + HIDSAG inicial'
  - label: 'Venue'
    labelEs: 'Publicación'
    value: 'Procemin Geomet 2022 (Gecamin)'
    valueEs: 'Procemin Geomet 2022 (Gecamin)'

stack: [Python, gensim, pyLDAvis, scikit-learn, NumPy, SciPy]
---

## The Founding Idea (2022)

Presented as _"Geometallurgical Estimation of Mineral Samples from Hyperspectral Images and Statistical Topic Modelling"_ at the 18th International Conference on Mineral Processing and Geometallurgy (Procemin Geomet 2022, Gecamin), from postdoctoral research at ALGES / AMTC, Universidad de Chile. The idea: treat a hyperspectral mineral sample as a **document**, its quantised spectral patterns as **vocabulary**, and let an LDA topic model infer a small set of latent mineral "topics" — then use that topic mixture to route a per-topic regression onto the lab targets.

## Spectra as Documents

Three "wordification" recipes were compared (Table 2 of the paper): **Version 1** — each wavelength band is a word, the document counts summed quantised intensities per band (reduced and interpretable); **Version 2** — words are quantised intensity levels; **Version 3** — joint per-spectrum band intensities. Reflectance was quantised to Q levels; topic count chosen by coherence score; engine gensim LDA with pyLDAvis for inspection.

## The Result

On a 20% holdout of the DB1 drill-core set, topic-routed hierarchical regression with **LDA Version 1 cut copper-recovery MAE from 4.568 (naive per-spectrum baseline) to 0.422** — an order-of-magnitude reduction — with Version 3 comparable (0.432) and Version 2 weaker (0.714). Molybdenum recovery improved similarly (18.6 → 2.2). On the smaller DB2 set (7 topics) estimation error dropped ~10–15% versus baselines. Version 1 — band-frequency — was the strong, interpretable recipe and survives as the canonical baseline in the modern platform.

## Scope (Period-Accurate)

This entry stays faithful to the 2022 paper: **three recipes, one backbone (LDA), a few small private mineral datasets** (drill-core DB1/DB2 plus the early HIDSAG geological subsets) — no public benchmark scenes, no neural backbones, no design-space sweep. That breadth came later. The idea seeded here — spectra as documents, topics as structure — scaled into the **[LDA-HSI platform](/portfolio/lda-hsi/)**: 19 recipes, four backbones, six public scenes, and a live web app.
