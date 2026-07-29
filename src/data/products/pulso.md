---
title: 'Pulso — Well-Test Diagnostic-Curve Shape Clustering and Attribution'
titleEs: 'Pulso — Agrupamiento y Atribución de Forma de Curvas Diagnósticas de Well-Test'
slug: pulso
date: 2026-07-11
category: scientific-ml
family: labs
excerpt: 'An unsupervised catalogue of flow-behaviour classes ("GeoTypes") for fractured reservoirs: it clusters the SHAPE of pressure-transient Bourdet-derivative curves with DTW k-medoids, attributes each class to the fracture-network descriptors that control it (Random Forest + SHAP), and ships a browser workbench that classifies a user curve against the baked medoids with conformal prediction. It reproduces and extends Kamel Targhi et al. 2026 (Comp. Geosciences 30, 57) on a real 4TU corpus (~4768 curves), then transfers the same shape diagnostic to two real aquifer pumping-test sites, with an explicit caveat that the shape transfers but the physics does not.'
excerptEs: 'Un catálogo no supervisado de clases de comportamiento de flujo ("GeoTypes") para reservorios fracturados: agrupa la FORMA de curvas de derivada de Bourdet de transitorios de presión con DTW k-medoids, atribuye cada clase a los descriptores de la red de fracturas que la controlan (Random Forest + SHAP), y entrega un banco de trabajo en el navegador que clasifica una curva del usuario contra los medoides precalculados con predicción conforme. Reproduce y extiende Kamel Targhi et al. 2026 (Comp. Geosciences 30, 57) sobre un corpus real de 4TU (~4768 curvas), y luego transfiere el mismo diagnóstico de forma a dos sitios reales de pruebas de bombeo en acuíferos, con la advertencia explícita de que la forma transfiere pero la física no.'
icon: tabler:wave-sine
tags: [scientific-ml, well-test, pressure-transient, bourdet, warren-root, clustering, dtw, shap, conformal-prediction, onnx, geosciences, reservoir]
proprietary: false
featured: false
assetPatterns: [pulso]
github: 'https://github.com/fsantibanezleal/CAOS_RES_Pulso'
demo: 'https://pulso.fasl-work.com'
website: 'https://pulso.fasl-work.com'

challenge: 'A well test records how pressure responds when a well is produced or shut in, and the diagnostic Bourdet derivative of that response has a shape that encodes the flow regimes the fluid passed through. In a fractured reservoir the same descriptors that shape the curve (fracture density, connectivity, aperture) are exactly the geological unknowns an operator wants to constrain. The hard part is that these curves are unlabelled: there is no ground-truth "class" to train against, the recurring behaviour types have to be discovered from the shapes themselves, and any claim that a method found real structure has to survive a control where there is no structure to find.'
challengeEs: 'Una prueba de pozo registra cómo responde la presión cuando un pozo se produce o se cierra, y la derivada diagnóstica de Bourdet de esa respuesta tiene una forma que codifica los regímenes de flujo por los que pasó el fluido. En un reservorio fracturado, los mismos descriptores que dan forma a la curva (densidad de fracturas, conectividad, apertura) son justo las incógnitas geológicas que un operador quiere acotar. Lo difícil es que estas curvas no están etiquetadas: no hay una "clase" de verdad contra la cual entrenar, los tipos de comportamiento recurrentes hay que descubrirlos desde las formas mismas, y cualquier afirmación de que un método encontró estructura real tiene que sobrevivir a un control donde no hay estructura que encontrar.'

approach: 'Pulso is a shape-first, unsupervised catalogue. It computes the Bourdet derivative of each pressure-transient response and clusters the curves by shape with DTW k-medoids, selecting k with silhouette and a k-table, embedding with MDS. Each behaviour class is then attributed to the fracture-network descriptors that control it through a Random Forest with SHAP, permutation importance and rank-agreement, recorded per case behind a gate. Curves come from three sources: GeoDFN discrete-fracture-network ensembles and an open-DARTS DFM simulation lane, a real 4TU well-test corpus (~4768 dimensionless Bourdet-derivative curves plus ~5000 DFN descriptor rows), and two real aquifer pumping-test field sites (welltestpy: Horkheimer Insel and Lauswiesen). The classical physics core is a Bourdet derivative plus a Warren-Root dual-porosity model via Stehfest inversion, which is also the Pyodide live-lane engine. Four learned models (InceptionTime, PatchTST, a curve autoencoder and an embedding model) are exported to ONNX and run in the browser; a user pastes a curve and it is classified against the baked medoids with a conformal prediction set.'
approachEs: 'Pulso es un catálogo no supervisado que parte de la forma. Calcula la derivada de Bourdet de cada respuesta de transitorio de presión y agrupa las curvas por forma con DTW k-medoids, eligiendo k con silhouette y una tabla de k, con embedding por MDS. Cada clase de comportamiento se atribuye luego a los descriptores de la red de fracturas que la controlan mediante un Random Forest con SHAP, importancia por permutación y concordancia de rangos, registrado por caso detrás de una compuerta. Las curvas vienen de tres fuentes: ensembles de redes de fracturas discretas GeoDFN y una vía de simulación DFM con open-DARTS, un corpus real de well-test de 4TU (~4768 curvas de derivada de Bourdet adimensionales más ~5000 filas de descriptores DFN), y dos sitios reales de pruebas de bombeo en acuíferos (welltestpy: Horkheimer Insel y Lauswiesen). El núcleo físico clásico es una derivada de Bourdet más un modelo de doble porosidad de Warren-Root vía inversión de Stehfest, que es también el motor de la vía en vivo con Pyodide. Cuatro modelos aprendidos (InceptionTime, PatchTST, un autoencoder de curvas y un modelo de embedding) se exportan a ONNX y corren en el navegador; un usuario pega una curva y se clasifica contra los medoides precalculados con un conjunto de predicción conforme.'

businessContext: 'Well-test interpretation is where subsurface uncertainty gets narrowed before expensive decisions (where to drill, whether a fracture network is connected enough to produce). The value of a shape catalogue is that it turns a one-off interpretation into a reusable vocabulary: a new curve is placed against known behaviour classes, and the attribution layer says which fracture-network property most likely drives that behaviour, which in turn tells you what data would most reduce the ambiguity. The same shape-diagnostic idea carries to aquifer pumping tests, but Pulso is explicit that only the shape transfers: aquifer tests are a different physical system, transmissivity and storativity are unknown, so those curves are clustered by shape, not by a physically referenced dimensionless response.'
businessContextEs: 'La interpretación de pruebas de pozo es donde se acota la incertidumbre del subsuelo antes de decisiones caras (dónde perforar, si una red de fracturas está lo bastante conectada para producir). El valor de un catálogo de formas es que convierte una interpretación puntual en un vocabulario reutilizable: una curva nueva se ubica contra clases de comportamiento conocidas, y la capa de atribución dice qué propiedad de la red de fracturas probablemente impulsa ese comportamiento, lo que a su vez indica qué dato reduciría más la ambigüedad. La misma idea de diagnóstico por forma se lleva a pruebas de bombeo en acuíferos, pero Pulso es explícito en que solo la forma transfiere: las pruebas en acuíferos son un sistema físico distinto, la transmisividad y el almacenamiento son desconocidos, así que esas curvas se agrupan por forma, no por una respuesta adimensional referenciada a la física.'

strategicValue: 'The honest differentiator is real licensed corpora plus published null and limit results. On the real 4TU curves the clustering is genuinely good (silhouette 0.72 on low-perm, 0.86 on mid-perm), and it is anchored against a single-regime control at 0.137 (the null that shows the method is not inventing structure in noise) and a noisy family at 0.172 (correct degradation). A DARTS analytic validation gate passes on a homogeneous anchor (relative L2 0.0108 against a 0.05 tolerance). Four ONNX models run inference in the browser. But Pulso is careful about what it does not claim: the strong learned-model accuracy (InceptionTime, PatchTST) is against the pipeline own k-medoids labels, not an external ground truth, so it measures how well the net reproduces the clustering, not classification against reality; the training-set silhouette there is weak (0.190). The aquifer transfer is a shape-diagnostic proof on tiny samples, with field attribution skipped where only eight curves exist. It reproduces a 2026 Computational Geosciences paper and extends it, with the negative results kept in.'
strategicValueEs: 'El diferenciador honesto son corpus reales licenciados más resultados nulos y de límite publicados. Sobre las curvas reales de 4TU el agrupamiento es genuinamente bueno (silhouette 0.72 en baja permeabilidad, 0.86 en media), y está anclado contra un control de régimen único en 0.137 (el nulo que muestra que el método no inventa estructura en ruido) y una familia ruidosa en 0.172 (degradación correcta). Una compuerta de validación analítica DARTS pasa sobre un ancla homogénea (L2 relativo 0.0108 contra una tolerancia de 0.05). Cuatro modelos ONNX corren inferencia en el navegador. Pero Pulso es cuidadoso con lo que no afirma: la fuerte accuracy de los modelos aprendidos (InceptionTime, PatchTST) es contra las etiquetas del propio k-medoids del pipeline, no contra una verdad externa, así que mide qué tan bien la red reproduce el agrupamiento, no clasificación contra la realidad; ahí el silhouette de entrenamiento es débil (0.190). La transferencia a acuíferos es una prueba de diagnóstico por forma sobre muestras pequeñas, con la atribución de campo omitida donde solo hay ocho curvas. Reproduce un paper de Computational Geosciences de 2026 y lo extiende, con los resultados negativos incluidos.'

kpis:
  - label: 'Structure found, and controlled'
    labelEs: 'Estructura encontrada, y controlada'
    baseline: 'A clustering score with no null to compare against'
    baselineEs: 'Un puntaje de agrupamiento sin nulo contra el cual comparar'
    result: 'Silhouette 0.72 (real low-perm) and 0.86 (real mid-perm) against a 0.137 single-regime control'
    resultEs: 'Silhouette 0.72 (baja perm real) y 0.86 (media perm real) contra un control de régimen único en 0.137'
    impact: 'The null proves the classes are real shape structure, not noise'
    impactEs: 'El nulo prueba que las clases son estructura de forma real, no ruido'
  - label: 'Real data, not planned'
    labelEs: 'Dato real, no planificado'
    baseline: 'A method demonstrated on simulation only'
    baselineEs: 'Un método demostrado solo en simulación'
    result: '~4768 real Bourdet-derivative curves + ~5000 DFN descriptor rows (4TU) + 2 real aquifer field sites (welltestpy)'
    resultEs: '~4768 curvas reales de derivada de Bourdet + ~5000 filas de descriptores DFN (4TU) + 2 sitios reales de acuífero (welltestpy)'
    impact: 'Reproduces and extends a 2026 Computational Geosciences paper'
    impactEs: 'Reproduce y extiende un paper de Computational Geosciences de 2026'
  - label: 'Validation gate'
    labelEs: 'Compuerta de validación'
    baseline: 'Trust the simulator without a known-answer check'
    baselineEs: 'Confiar en el simulador sin un chequeo de respuesta conocida'
    result: 'DARTS analytic anchor passes: relative L2 0.0108 against a 0.05 tolerance on a homogeneous case'
    resultEs: 'El ancla analítica DARTS pasa: L2 relativo 0.0108 contra una tolerancia de 0.05 en un caso homogéneo'
    impact: 'The simulation lane is checked against a closed-form answer'
    impactEs: 'La vía de simulación se contrasta contra una respuesta cerrada'
  - label: 'In-browser classification'
    labelEs: 'Clasificación en el navegador'
    baseline: 'A server inference service'
    baselineEs: 'Un servicio de inferencia en servidor'
    result: '4 ONNX models (InceptionTime, PatchTST, autoencoder, embedding) run in the browser; a user curve is classified against baked medoids with conformal prediction'
    resultEs: '4 modelos ONNX (InceptionTime, PatchTST, autoencoder, embedding) corren en el navegador; una curva del usuario se clasifica contra medoides precalculados con predicción conforme'
    impact: 'Accuracy is against the pipeline own cluster labels, not external ground truth'
    impactEs: 'La accuracy es contra las propias etiquetas de cluster del pipeline, no una verdad externa'

metrics:
  - label: 'Cases'
    labelEs: 'Casos'
    value: '22 baked case studies: simulated DFN/DFM ensembles (GeoDFN, open-DARTS, Warren-Root families), a real 4TU well-test corpus (low/mid/high-perm), and real aquifer field campaigns'
    valueEs: '22 estudios de caso precalculados: ensembles DFN/DFM simulados (GeoDFN, open-DARTS, familias Warren-Root), un corpus real de well-test de 4TU (baja/media/alta perm), y campañas reales de campo en acuíferos'
  - label: 'Method ladder'
    labelEs: 'Escalera de métodos'
    value: 'Physics: Bourdet derivative + Warren-Root dual-porosity via Stehfest inversion (also the live lane) · unsupervised: DTW k-medoids + MDS + silhouette · attribution: Random Forest + SHAP + permutation + rank-agreement · representations: UMAP, t-SNE, functional PCA, catch22 · learned: InceptionTime, PatchTST, curve autoencoder, embedding (ONNX)'
    valueEs: 'Física: derivada de Bourdet + doble porosidad de Warren-Root vía inversión de Stehfest (también la vía en vivo) · no supervisado: DTW k-medoids + MDS + silhouette · atribución: Random Forest + SHAP + permutación + concordancia de rangos · representaciones: UMAP, t-SNE, PCA funcional, catch22 · aprendidos: InceptionTime, PatchTST, autoencoder de curvas, embedding (ONNX)'
  - label: 'Real data'
    labelEs: 'Dato real'
    value: '4TU.ResearchData corpus (DOI 10.4121/8291d285, GPL-3, vault-only): ~4768 dimensionless Bourdet-derivative curves + ~5000 DFN descriptor rows. welltestpy field sites (MIT, Zenodo 4139374): Horkheimer Insel + Lauswiesen. Raw curves never redistributed; only derived artifacts ship'
    valueEs: 'Corpus 4TU.ResearchData (DOI 10.4121/8291d285, GPL-3, solo en vault): ~4768 curvas adimensionales de derivada de Bourdet + ~5000 filas de descriptores DFN. Sitios de campo welltestpy (MIT, Zenodo 4139374): Horkheimer Insel + Lauswiesen. Curvas crudas nunca redistribuidas; solo se publican artefactos derivados'
  - label: 'Results (real) and controls'
    labelEs: 'Resultados (reales) y controles'
    value: 'Real 4TU silhouette: low-perm 0.72 (k=2, two classes one rare), mid-perm 0.86, high-perm 0.58. Controls: single-regime 0.137 (correct null), noisy family 0.172 (correct degradation). Lauswiesen field: attribution SKIPPED (only 8 curves), a proof-of-transfer not a study'
    valueEs: 'Silhouette 4TU real: baja perm 0.72 (k=2, dos clases una rara), media perm 0.86, alta perm 0.58. Controles: régimen único 0.137 (nulo correcto), familia ruidosa 0.172 (degradación correcta). Campo Lauswiesen: atribución OMITIDA (solo 8 curvas), una prueba de transferencia no un estudio'
  - label: 'Learned tier'
    labelEs: 'Capa aprendida'
    value: '4 ONNX models in-browser. Test accuracy InceptionTime 0.911 / PatchTST 0.902 is measured against the pipeline own k-medoids labels (k=3), not external ground truth; training-set silhouette there is a weak 0.190, so the net reproduces a weakly-separated clustering rather than a validated class'
    valueEs: '4 modelos ONNX en el navegador. La accuracy de test InceptionTime 0.911 / PatchTST 0.902 se mide contra las propias etiquetas de k-medoids del pipeline (k=3), no una verdad externa; ahí el silhouette de entrenamiento es un débil 0.190, así que la red reproduce un agrupamiento poco separado más que una clase validada'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: 'Offline lane bakes clustering, attribution and models (Python, seeded, open-DARTS heavy sub-lane). Live lane: a Pyodide physics core (Bourdet + Warren-Root/Stehfest) plus onnxruntime-web for the 4 models. 46 Python tests, 39 docs pages. Static on GitHub Pages'
    valueEs: 'La vía offline precalcula agrupamiento, atribución y modelos (Python, con semilla, sub-vía pesada de open-DARTS). Vía en vivo: un núcleo físico en Pyodide (Bourdet + Warren-Root/Stehfest) más onnxruntime-web para los 4 modelos. 46 tests Python, 39 páginas de docs. Estático en GitHub Pages'

stack: [Python, DTW, scikit-learn, SHAP, open-DARTS, welltestpy, Pyodide, ONNX, onnxruntime-web, TypeScript, React, Vite, KaTeX]
---

## A shape vocabulary for pressure-transient curves

Pulso is an **unsupervised catalogue of flow-behaviour classes ("GeoTypes")** for fractured reservoirs. It takes the diagnostic Bourdet derivative of a pressure-transient (well-test) response, clusters curves by **shape** with DTW k-medoids, and attributes each behaviour class to the fracture-network descriptors that control it. It reproduces and extends **Kamel Targhi et al. 2026 (Computational Geosciences 30, 57)**. Live at [pulso.fasl-work.com](https://pulso.fasl-work.com).

## Real curves, a physics core, and a browser lane

The corpus is real and licensed: a **4TU well-test corpus** (~4768 dimensionless Bourdet-derivative curves plus ~5000 DFN descriptor rows, GPL-3, vault-only) alongside simulated GeoDFN and open-DARTS ensembles, for **22 baked case studies**. The classical physics core (Bourdet derivative plus a **Warren-Root** dual-porosity model via Stehfest inversion) is also the Pyodide live-lane engine, and **four ONNX models** (InceptionTime, PatchTST, a curve autoencoder, an embedding model) classify a user-pasted curve against the baked medoids in the browser with conformal prediction.

## The nulls are the point

On the real 4TU curves the clustering is genuinely good: **silhouette 0.72** on low-perm and **0.86** on mid-perm. What makes that trustworthy is the control next to it, a **single-regime case at 0.137**: when there is no structure, the method correctly does not find any, and a noisy family degrades to 0.172 as it should. A **DARTS analytic validation gate** passes on a homogeneous anchor (relative L2 **0.0108** against a 0.05 tolerance), checking the simulation lane against a closed-form answer.

## Honest about the limits

Two limits stay on the card. First, the **aquifer generalization is a shape-diagnostic transfer only**: aquifer pumping tests are a different physical system, transmissivity and storativity are unknown, so those curves are clustered by shape, not by a physically referenced response, and where a field site has only eight curves the **attribution is skipped** (a proof-of-transfer, not a study). Second, the learned models' strong test accuracy (InceptionTime 0.911, PatchTST 0.902) is measured against **the pipeline own k-medoids cluster labels**, not an external ground truth, and the training-set silhouette there is a weak **0.190**, so those nets reproduce a weakly-separated clustering rather than classify against reality. The real 4TU low-perm case is **k=2 with one rare class**, described as two behaviour classes (one rare) rather than a rich catalogue.

[Live demo](https://pulso.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RES_Pulso)
