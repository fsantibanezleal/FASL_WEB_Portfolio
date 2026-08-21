---
title: 'ProspectMap, Mineral Prospectivity Workbench with a Published Null Result'
titleEs: 'ProspectMap, Banco de Trabajo de Prospectividad Mineral con un Resultado Nulo Publicado'
slug: prospectmap
date: 2026-07-06
category: mining-analytics
family: faena
excerpt: 'A mineral-prospectivity workbench that computes a Weights-of-Evidence posterior P(deposit|evidence) live in the browser over stacked geophysical, geochemical and structural layers, and whose real reason to exist is adversarial honesty. On real US Midcontinent MVT Zn-Pb belt data (Lawley et al. 2022, USGS public domain) it publishes a recorded null: the proposed PU-Conformal method loses to 1989-vintage Weights of Evidence, and a trivial distance-to-deposit baseline already ties the best learned model, so most apparent skill is spatial proximity, not learned geology. It makes first-class the two ways prospectivity maps lie: conditional-independence violation and random-CV inflation.'
excerptEs: 'Un banco de trabajo de prospectividad mineral que computa un posterior de Pesos de Evidencia P(deposito|evidencia) en vivo en el navegador sobre capas geofisicas, geoquimicas y estructurales apiladas, y cuya verdadera razon de existir es la honestidad adversarial. Sobre datos reales del cinturon MVT Zn-Pb del Midcontinente de EE.UU. (Lawley et al. 2022, dominio publico USGS) publica un nulo registrado: el metodo propuesto PU-Conformal pierde frente a los Pesos de Evidencia de 1989, y una base trivial de distancia al deposito ya empata al mejor modelo aprendido, de modo que la mayor parte de la aparente destreza es proximidad espacial, no geologia aprendida. Vuelve de primera clase las dos formas en que los mapas de prospectividad mienten: violacion de independencia condicional e inflacion por validacion cruzada aleatoria.'
icon: tabler:map-search
tags: [mining-analytics, mineral-prospectivity, weights-of-evidence, null-result, spatial-cv, conformal, mvt, geoscience, onnx, mining]
proprietary: false
featured: false
assetPatterns: [prospectmap]
github: 'https://github.com/fsantibanezleal/CAOS_ProspectMap'
demo: 'https://prospectmap.fasl-work.com'
website: 'https://prospectmap.fasl-work.com'

challenge: 'Mineral-prospectivity maps are easy to make and easy to fool yourself with. Two failure modes dominate: stacked evidence layers are physically correlated, so the conditional-independence assumption behind Weights of Evidence is violated and the posterior inflates; and validating a spatial model with random cross-validation lets a fine-grained learner memorize the autocorrelated field, so the AUC looks strong under random folds and collapses under an honest contiguous spatial holdout. A prospectivity tool that does not confront both, and that does not compare itself against the trivial distance-to-known-deposit baseline, will report skill it does not have.'
challengeEs: 'Los mapas de prospectividad mineral son faciles de hacer y faciles para autoenganarse. Dominan dos modos de falla: las capas de evidencia apiladas estan fisicamente correlacionadas, por lo que el supuesto de independencia condicional detras de los Pesos de Evidencia se viola y el posterior se infla; y validar un modelo espacial con validacion cruzada aleatoria permite que un aprendiz de grano fino memorice el campo autocorrelacionado, de modo que el AUC luce fuerte bajo folds aleatorios y colapsa bajo un holdout espacial contiguo honesto. Una herramienta de prospectividad que no enfrente ambos, y que no se compare contra la base trivial de distancia al deposito conocido, reportara destreza que no tiene.'

approach: 'ProspectMap computes a Weights-of-Evidence posterior live in the browser (W+/W-, contrast, studentized contrast, posterior log-odds), with a maximizing-contrast threshold that binarizes continuous layers, and it puts the failure modes on the same footing as the map. It runs the conditional-independence machinery live (pairwise chi-square plus the Agterberg-Cheng omnibus test), a CI-free logistic regression by IRLS with ridge, and a validation suite that contrasts random folds against contiguous spatial-block folds and reports the inflation gap, plus a nearest-deposit distance null. Learned lanes ship as ONNX (a classifier, a geology-OOD autoencoder, and a PU-Conformal model combining nnPU risk with split conformal); random forest and gradient boosting are computed offline only. AlphaEarth and foundation-model embeddings are not used anywhere; they appear only as candidate future datasets. Everything is client-side, static on GitHub Pages, with the offline bake importing the same TypeScript engine the browser runs.'
approachEs: 'ProspectMap computa un posterior de Pesos de Evidencia en vivo en el navegador (W+/W-, contraste, contraste estudentizado, log-odds del posterior), con un umbral de contraste maximizante que binariza capas continuas, y pone los modos de falla al mismo nivel que el mapa. Corre en vivo la maquinaria de independencia condicional (chi-cuadrado por pares mas el test omnibus de Agterberg-Cheng), una regresion logistica libre de CI por IRLS con ridge, y una suite de validacion que contrasta folds aleatorios contra folds de bloque espacial contiguo y reporta la brecha de inflacion, mas un nulo de distancia al deposito mas cercano. Las vias aprendidas se despliegan como ONNX (un clasificador, un autoencoder geology-OOD, y un modelo PU-Conformal que combina riesgo nnPU con conformal por particion); random forest y gradient boosting se computan solo offline. AlphaEarth y los embeddings de modelos fundacionales no se usan en ninguna parte; aparecen solo como datasets candidatos a futuro. Todo del lado del cliente, estatico en GitHub Pages, con el horneado offline importando el mismo motor TypeScript que corre el navegador.'

businessContext: 'Exploration budgets follow prospectivity maps, so a map that reports inflated skill sends drilling to the wrong ground. ProspectMap''s value is not a better target map, it is an honest measurement of how little a regional geophysics stack can localize deposits under fair spatial transfer, quantified against the one baseline that exposes it: distance to a known deposit. On the real MVT belt, six models are scored on identical contiguous spatial-block folds with bootstrap confidence intervals, negative controls are shown collapsing as they must, and the split-conformal band is reported as near-vacuous rather than dressed up. That is what a prospectivity workflow should tell an explorer before committing a drill program.'
businessContextEs: 'Los presupuestos de exploracion siguen a los mapas de prospectividad, por lo que un mapa que reporta destreza inflada envia el sondaje al terreno equivocado. El valor de ProspectMap no es un mejor mapa de blancos, es una medicion honesta de cuan poco puede localizar depositos un stack de geofisica regional bajo transferencia espacial justa, cuantificada contra la unica base que lo expone: distancia a un deposito conocido. Sobre el cinturon MVT real, seis modelos se puntuan sobre folds de bloque espacial contiguo identicos con intervalos de confianza por bootstrap, se muestran los controles negativos colapsando como deben, y la banda conformal por particion se reporta como casi vacua en vez de disfrazada. Eso es lo que un flujo de prospectividad deberia decirle a un explorador antes de comprometer un programa de sondaje.'

strategicValue: 'ProspectMap is the clearest example in the Faena line of a product whose deliverable is a published null result. On the real US Midcontinent MVT Zn-Pb belt, the committed verdict records ranking_win: false, the proposed PU-Conformal method scores block-CV AUC 0.656 and does not beat classical Weights of Evidence at 0.732; and the trivial distance-to-known-deposit null already reaches AUC 0.783, so most apparent skill is spatial proximity, not learned geology. The negative controls collapse as they must (label permutation drops WofE to 0.506, PU to 0.490; a pure noise layer earns zero lift), and the split-conformal band delivers its coverage guarantee (empirical 0.977 vs nominal 0.90) only by flagging 88% of the belt, an honest near-vacuous set rather than a false-confidence point map. The card leads with that honesty and never quotes the leaky 0.9456 headline. It is a reusable pattern for prospectivity work that refuses to overclaim.'
strategicValueEs: 'ProspectMap es el ejemplo mas claro de la linea Faena de un producto cuyo entregable es un resultado nulo publicado. Sobre el cinturon MVT Zn-Pb real del Midcontinente de EE.UU., el veredicto commiteado registra ranking_win: false, el metodo propuesto PU-Conformal puntua AUC de block-CV 0,656 y no supera a los Pesos de Evidencia clasicos en 0,732; y el nulo trivial de distancia al deposito conocido ya alcanza AUC 0,783, de modo que la mayor parte de la aparente destreza es proximidad espacial, no geologia aprendida. Los controles negativos colapsan como deben (la permutacion de etiquetas baja WofE a 0,506, PU a 0,490; una capa de puro ruido gana cero lift), y la banda conformal por particion entrega su garantia de cobertura (empirica 0,977 vs nominal 0,90) solo marcando el 88% del cinturon, un conjunto casi vacuo honesto en vez de un mapa de puntos de falsa confianza. La ficha abre con esa honestidad y nunca cita el titular filtrado de 0,9456. Es un patron reutilizable para trabajo de prospectividad que se niega a sobreafirmar.'

kpis:
  - label: 'The deliverable is a null result'
    labelEs: 'El entregable es un resultado nulo'
    baseline: 'Ship a confident target map'
    baselineEs: 'Entregar un mapa de blancos confiado'
    result: 'Committed verdict ranking_win: false: PU-Conformal (block-CV AUC 0.656) does not beat 1989 Weights of Evidence (0.732)'
    resultEs: 'Veredicto commiteado ranking_win: false: PU-Conformal (AUC de block-CV 0,656) no supera a los Pesos de Evidencia de 1989 (0,732)'
    impact: 'The proposed method loses, and the repo publishes it'
    impactEs: 'El metodo propuesto pierde, y el repositorio lo publica'
  - label: 'The trivial baseline that ties it'
    labelEs: 'La base trivial que lo empata'
    baseline: 'Attribute the AUC to learned geology'
    baselineEs: 'Atribuir el AUC a geologia aprendida'
    result: 'Distance-to-known-deposit null scores AUC 0.783 - most apparent skill is spatial proximity'
    resultEs: 'Nulo de distancia al deposito conocido puntua AUC 0,783 - la mayor parte de la destreza aparente es proximidad espacial'
    impact: 'Quantified against the baseline that exposes it, not hand-waved'
    impactEs: 'Cuantificado contra la base que lo expone, no manoseado'
  - label: 'Negative controls collapse'
    labelEs: 'Los controles negativos colapsan'
    baseline: 'No control for spurious skill'
    baselineEs: 'Sin control de destreza espuria'
    result: 'Label permutation -> WofE 0.506 / PU 0.490; a pure noise layer earns zero lift'
    resultEs: 'Permutacion de etiquetas -> WofE 0,506 / PU 0,490; una capa de puro ruido gana cero lift'
    impact: 'The controls collapse exactly as they must'
    impactEs: 'Los controles colapsan exactamente como deben'
  - label: 'Coverage without confidence'
    labelEs: 'Cobertura sin confianza'
    baseline: 'A tidy point-target map'
    baselineEs: 'Un mapa de blancos puntuales prolijo'
    result: 'Split-conformal coverage 0.977 vs nominal 0.90, achieved only by flagging 88% of the belt'
    resultEs: 'Cobertura conformal por particion 0,977 vs nominal 0,90, lograda solo marcando el 88% del cinturon'
    impact: 'Reported as an honest near-vacuous set, not false confidence'
    impactEs: 'Reportado como un conjunto casi vacuo honesto, no como falsa confianza'

metrics:
  - label: 'Real data'
    labelEs: 'Datos reales'
    value: 'US Midcontinent MVT Zn-Pb belt (Lawley et al. 2022 CMMI / USGS, public domain); 25,344 cells (144x176, ~5.4 km), 4 real measured geophysical layers + 2 derived proximity layers, REAL-vs-DERIVED provenance tracked per layer'
    valueEs: 'Cinturon MVT Zn-Pb del Midcontinente de EE.UU. (Lawley et al. 2022 CMMI / USGS, dominio publico); 25.344 celdas (144x176, ~5,4 km), 4 capas geofisicas reales medidas + 2 capas de proximidad derivadas, procedencia REAL-vs-DERIVADA rastreada por capa'
  - label: 'Benchmark (real, honest protocol)'
    labelEs: 'Benchmark (real, protocolo honesto)'
    value: '6 models on identical contiguous spatial-block folds with bootstrap 95% CIs: WofE 0.732 | logistic 0.846 | random forest 0.745 | gradient boosting 0.725 | naive MLP 0.783 | PU-Conformal 0.656'
    valueEs: '6 modelos sobre folds de bloque espacial contiguo identicos con IC 95% por bootstrap: WofE 0,732 | logistica 0,846 | random forest 0,745 | gradient boosting 0,725 | MLP naive 0,783 | PU-Conformal 0,656'
  - label: 'Live methods'
    labelEs: 'Metodos en vivo'
    value: 'Weights of Evidence + Agterberg-Cheng omnibus conditional-independence test + IRLS ridge logistic regression + random-vs-spatial CV inflation gap + distance-to-deposit null, all client-side'
    valueEs: 'Pesos de Evidencia + test omnibus de independencia condicional de Agterberg-Cheng + regresion logistica IRLS con ridge + brecha de inflacion CV aleatorio-vs-espacial + nulo de distancia al deposito, todo del lado del cliente'
  - label: 'Not used, on purpose'
    labelEs: 'No usado, a proposito'
    value: 'No AlphaEarth, no foundation-model embeddings (candidate future datasets only); random forest and gradient boosting are offline artifacts, never live; not a JORC / NI 43-101 resource estimate'
    valueEs: 'Sin AlphaEarth, sin embeddings de modelos fundacionales (solo datasets candidatos a futuro); random forest y gradient boosting son artefactos offline, nunca en vivo; no es una estimacion de recursos JORC / NI 43-101'
  - label: 'Synthetic lane'
    labelEs: 'Via sintetica'
    value: '10 synthetic cases (terranes, data-density, and explicit controls) scored separately; synthetic spatial-CV AUC reported as synthetic, never mixed with the real number'
    valueEs: '10 casos sinteticos (terrenos, densidad de datos y controles explicitos) puntuados por separado; AUC de CV espacial sintetico reportado como sintetico, nunca mezclado con el numero real'
  - label: 'Compute'
    labelEs: 'Computo'
    value: '100% in-browser (onnxruntime-web, single global serialization chain to satisfy the single-thread WASM runtime); offline precompute imports the same TS engine, so baked and live numbers match by construction'
    valueEs: '100% en navegador (onnxruntime-web, una cadena de serializacion global para satisfacer el runtime WASM de un hilo); el precomputo offline importa el mismo motor TS, de modo que los numeros horneados y en vivo coinciden por construccion'

stack: [TypeScript, React, Vite, ONNX, onnxruntime-web, PyTorch, 'scikit-learn', uPlot, KaTeX]
---

## A prospectivity workbench that publishes when it loses

ProspectMap is a **mineral-prospectivity** workbench. It computes a **Weights-of-Evidence posterior** P(deposit|evidence) live in the browser over stacked geophysical, geochemical and structural layers, and its reason to exist is **adversarial honesty**: it makes first-class the two ways prospectivity maps lie, and it publishes a recorded null result on real data. Live at [prospectmap.fasl-work.com](https://prospectmap.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## No AlphaEarth, no foundation-model embeddings

To be exact about scope: **AlphaEarth is not used**, anywhere. It appears once, in an attribution file, as a candidate future dataset. There is no embedding, no Earth Engine call, no 64-D feature in the pipeline. Random forest and gradient boosting are computed offline only; they never run live.

## The real-data story is a null result

On the **US Midcontinent MVT Zn-Pb belt** (Lawley et al. 2022, USGS public domain; 25,344 cells, 4 real measured geophysical layers plus 2 derived proximity layers), six models are scored on identical **contiguous spatial-block folds** with bootstrap confidence intervals:

- Weights of Evidence **0.732** · logistic regression **0.846** · random forest **0.745** · gradient boosting **0.725** · naive MLP **0.783** · **PU-Conformal 0.656**

The committed verdict is `ranking_win: false`: the proposed PU-Conformal method **does not beat 1989-vintage Weights of Evidence**. And the trivial **distance-to-known-deposit null already scores 0.783**, so most apparent skill is spatial proximity, not learned geology. This is why the headline 0.9456 that a lenient interleaved-fold protocol produces is never quoted here: it is a protocol artifact, and the honest contiguous-fold number is 0.7834, a dead tie with the proximity baseline.

## The controls, and what the conformal band actually does

Negative controls collapse as they must: label permutation drops WofE to **0.506** and PU to **0.490**, and a pure noise layer earns **zero lift**. The split-conformal band delivers its coverage guarantee (empirical **0.977** vs nominal 0.90), but only by **flagging 88% of the belt**, an honest near-vacuous set that correctly reports that regional geophysics cannot localize MVT under spatial transfer, rather than a false-confidence point map. This is target generation with its uncertainty stated, not a JORC or NI 43-101 resource estimate.

[Live demo](https://prospectmap.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_ProspectMap)
