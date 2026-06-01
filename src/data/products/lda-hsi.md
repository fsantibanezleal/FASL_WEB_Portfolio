---
title: 'LDA-HSI — Wordification Design-Space Platform'
titleEs: 'LDA-HSI — Plataforma del Espacio de Diseño de Wordification'
slug: lda-hsi
date: 2026-05-15
category: spectral-analysis
excerpt: 'A research platform that asks which representation a hyperspectral topic model should see: 19 wordification recipes × 4 topic-model backbones × Q∈{8,16,32}, scored on a 12-axis battery across six public scenes, with a live web app and API.'
excerptEs: 'Plataforma de investigación que pregunta qué representación debería ver un modelo de tópicos hiperespectral: 19 recetas de wordification × 4 backbones de modelos de tópicos × Q∈{8,16,32}, evaluadas en una batería de 12 ejes sobre seis escenas públicas, con una app web y API en vivo.'
icon: tabler:chart-histogram
tags: [hyperspectral, topic-modelling, representation-learning, lda, etm, fastapi, react]
proprietary: false
featured: true
assetPatterns: [lda_hsi_platform]
github: 'https://github.com/fsantibanezleal/CAOS_LDA_HSI'
demo: 'https://lda-hsi.fasl-work.com'

challenge: 'In hyperspectral topic modelling almost all attention goes to the model and almost none to the representation fed into it. But a topic model is only as good as its vocabulary — and the open question is whether the wordification choice actually changes the conclusions, and which recipe to trust when.'
challengeEs: 'En el modelado de tópicos hiperespectral casi toda la atención va al modelo y casi nada a la representación que se le entrega. Pero un modelo de tópicos es tan bueno como su vocabulario — y la pregunta abierta es si la elección de wordification realmente cambia las conclusiones, y en qué receta confiar y cuándo.'

approach: 'Treat spectral variability as a corpus, then sweep the full design space: 19 wordification recipes (V1–V20, V16 reserved) in 7 families × 4 topic-model backbones (LDA, HDP, ProdLDA, ETM) × quantisation Q ∈ {8,16,32}, each combination scored on a 12-axis evaluation battery (coherence, topic–label NMI, seed stability, reliability, diversity, counterfactual robustness, cross-scene transfer, spatial coherence, endmember and LLM-judge baselines) with a hierarchical-Bayesian dominance test per axis. Run over six public labelled scenes plus spectral libraries, unmixing benchmarks, HIDSAG mineral subsets and MSI field data.'
approachEs: 'Tratar la variabilidad espectral como un corpus, luego barrer todo el espacio de diseño: 19 recetas de wordification (V1–V20, V16 reservada) en 7 familias × 4 backbones de modelos de tópicos (LDA, HDP, ProdLDA, ETM) × cuantización Q ∈ {8,16,32}, cada combinación evaluada en una batería de 12 ejes (coherencia, NMI tópico–etiqueta, estabilidad de semilla, fiabilidad, diversidad, robustez contrafactual, transferencia entre escenas, coherencia espacial, líneas base de endmember y juez-LLM) con un test de dominancia jerárquico-bayesiano por eje. Sobre seis escenas públicas etiquetadas más librerías espectrales, benchmarks de unmixing, subsets minerales HIDSAG y datos MSI de campo.'

businessContext: 'Hyperspectral sensing is increasingly available, but choosing how to turn raw spectra into a topic-model corpus is treated as an afterthought — when in fact it can flip which method appears to win. Without a systematic comparison, a practitioner has no principled basis for picking a representation, and published results can hinge on an unexamined preprocessing choice.'
businessContextEs: 'El sensado hiperespectral está cada vez más disponible, pero cómo convertir espectros crudos en un corpus de modelo de tópicos se trata como algo secundario — cuando de hecho puede invertir qué método parece ganar. Sin una comparación sistemática, un practicante no tiene base fundamentada para elegir una representación, y los resultados publicados pueden depender de una decisión de preprocesamiento no examinada.'
strategicValue: 'The defensible headline is a finding about methodology, not a single accuracy record: the wordification choice materially changes the conclusions, and there is no universal winner — there are two poles and a non-discriminating axis. V8 (NFINDR endmembers) is the portable, reproducible recipe (highest cross-backbone topic–label NMI 0.431, +0.034 over rank two; reseed reliability ≈0.96, stable across Q) — what you reach for when the backbone is uncertain. V20 (MI-weighted bands) is the LDA Q-scaling peak (F-7 NMI climbs to 0.563 at Q=32; it trails V12 at Q=8 then the ranking inverts to lead by +0.030 at Q=32) — what you reach for when LDA is fixed and Q≥16 is affordable. V11 is a backbone specialist (wins HDP and ETM, collapses under LDA). And F-1 classification accuracy does not discriminate — every recipe lands ~0.86–0.92 — so the platform refuses to headline an accuracy win. It is fully reproducible (1140-cell Q=8 grid, 100% populated; ~1726 committed artefacts; 133/133 API smoke per deploy) and surfaced through a 28-tab interactive web app, a public Q-extension API, and a P3/P4/P5 manuscript set.'
strategicValueEs: 'El titular defendible es un hallazgo sobre metodología, no un récord de exactitud: la elección de wordification cambia materialmente las conclusiones, y no hay ganador universal — hay dos polos y un eje no discriminante. V8 (endmembers NFINDR) es la receta portable y reproducible (mayor NMI tópico–etiqueta entre backbones 0.431, +0.034 sobre el segundo; fiabilidad de re-semilla ≈0.96, estable en Q) — la que se elige cuando el backbone es incierto. V20 (bandas ponderadas por IM) es el pico de escalamiento en Q bajo LDA (el NMI F-7 sube a 0.563 en Q=32; va detrás de V12 en Q=8 y luego el ranking se invierte liderando por +0.030 en Q=32) — la que se elige cuando LDA está fijo y Q≥16 es viable. V11 es un especialista de backbone (gana HDP y ETM, colapsa bajo LDA). Y la exactitud de clasificación F-1 no discrimina — todas las recetas caen ~0.86–0.92 — por lo que la plataforma se niega a titular con una victoria de exactitud. Es totalmente reproducible (grilla Q=8 de 1140 celdas, 100% poblada; ~1726 artefactos versionados; smoke de API 133/133 por despliegue) y se expone vía una app web de 28 pestañas, una API pública de extensión-Q, y un conjunto de manuscritos P3/P4/P5.'

kpis:
  - label: 'Design space swept'
    labelEs: 'Espacio de diseño barrido'
    baseline: '1 recipe, 1 backbone (the field default)'
    baselineEs: '1 receta, 1 backbone (el default del campo)'
    result: '19 recipes × 4 backbones × Q∈{8,16,32}'
    resultEs: '19 recetas × 4 backbones × Q∈{8,16,32}'
    impact: 'Representation choice made measurable'
    impactEs: 'Elección de representación hecha medible'
  - label: 'Portable leader (cross-backbone)'
    labelEs: 'Líder portable (entre backbones)'
    baseline: 'no portability analysis'
    baselineEs: 'sin análisis de portabilidad'
    result: 'V8 — F-7 NMI 0.431 (+0.034), reliability ≈0.96'
    resultEs: 'V8 — NMI F-7 0.431 (+0.034), fiabilidad ≈0.96'
    impact: 'Use when backbone is uncertain'
    impactEs: 'Usar cuando el backbone es incierto'
  - label: 'LDA Q-scaling peak'
    labelEs: 'Pico de escalamiento Q en LDA'
    baseline: 'V20 trails V12 at Q=8'
    baselineEs: 'V20 va detrás de V12 en Q=8'
    result: 'ranking inverts; V20 leads +0.030 at Q=32'
    resultEs: 'el ranking se invierte; V20 lidera +0.030 en Q=32'
    impact: 'Use when LDA fixed, Q≥16'
    impactEs: 'Usar cuando LDA fijo, Q≥16'

metrics:
  - label: 'Recipes / backbones'
    labelEs: 'Recetas / backbones'
    value: '19 (V1–V20) × 4 (LDA, HDP, ProdLDA, ETM)'
    valueEs: '19 (V1–V20) × 4 (LDA, HDP, ProdLDA, ETM)'
  - label: 'Scenes'
    labelEs: 'Escenas'
    value: '6 public + HIDSAG + libraries (Indian Pines = headline)'
    valueEs: '6 públicas + HIDSAG + librerías (Indian Pines = principal)'
  - label: 'Evaluation'
    labelEs: 'Evaluación'
    value: '12-axis battery, Bayesian dominance'
    valueEs: 'batería de 12 ejes, dominancia bayesiana'
  - label: 'Reproducibility'
    labelEs: 'Reproducibilidad'
    value: '1140-cell grid 100%; ~1726 artefacts'
    valueEs: 'grilla 1140 celdas 100%; ~1726 artefactos'

stack: [Python, FastAPI, scikit-learn, gensim, tomotopy, PyTorch, Pyro, React, Vite, Three.js]
---

## Which Wordification Matters?

LDA-HSI is the current state of the hyperspectral topic-modelling line that began as a [2022 conference paper](/portfolio/hsi-topic-modelling-2022/). It treats spectral variability as a **corpus** — pixel spectra become documents of quantised spectral tokens — and asks the question the original paper only gestured at: **which "wordification" should a topic model actually see, and does that choice change the conclusions?** The offline experiment grid is the product; the public web app is a validated projection of its outputs.

## The Design Space

Nineteen wordification recipes (V1–V20, V16 reserved) span seven families — band intensities, wavelet/derivative responses, absorption & endmember fractions, learnt codebooks, manifold coordinates, spatial regions, and label-aware MI weights. Each is run across four topic-model backbones (LDA, HDP, ProdLDA, ETM) and three quantisation levels (Q ∈ {8,16,32}), scored on a 12-axis evaluation battery with a hierarchical-Bayesian dominance test per axis. The Q=8 base grid is 1140 cells, 100% populated.

## Datasets — Indian Pines Is Only the Headline

Where the 2022 work used a few small private mineral sets, the platform spans a deliberately broad surface so a representation's win has to hold across sensors and scene types: **six public labelled scenes** (Indian Pines as the headline, plus Salinas, Salinas-A, Pavia University, KSC, Botswana), **public spectral libraries** (USGS splib07, ECOSTRESS), **unmixing benchmarks** (Samson, Jasper Ridge, Urban), the **HIDSAG** mineral subsets (the bridge back to the geometallurgy origin), and **MicaSense MSI** field samples.

## The Verdict: Two Poles, No Leaderboard

**V8 (NFINDR endmembers) is the portable recipe** — highest topic–label NMI averaged across all four backbones (0.431, +0.034 over rank two) and reliable across reseeds (≈0.96). **V20 (MI-weighted bands) is the LDA Q-scaling peak** — its F-7 NMI climbs to 0.563 at Q=32; it trails V12 at Q=8, then the ranking _inverts_ and V20 leads by +0.030 at Q=32. **V11 is a backbone specialist** (wins HDP and ETM, collapses under LDA). And **F-1 classification accuracy does not discriminate** — every recipe sits within ~0.86–0.92 — so no recipe is headlined on accuracy. An earlier "triple-axis win" framing was walked back after an internal audit (F-1 ties; V20 ties V12 on F-2 coherence); the surviving claim is the narrow, true one above.

## Live, Reproducible

A React/Vite web app exposes a 28-tab interactive workspace + benchmarks; a public **Q-extension API** serves the topic-count trajectories; ~1726 reproducible artefacts back every figure, with 133/133 API smoke on each deploy. Companion manuscripts (P3 nineteen-recipe sweep, P4 backbone factorial, P5 interpretability) are in preparation. Live at [lda-hsi.fasl-work.com](https://lda-hsi.fasl-work.com).
