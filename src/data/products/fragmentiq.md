---
title: 'FragmentIQ, Post-Blast Muckpile Fragmentation Analysis Workbench'
titleEs: 'FragmentIQ, Banco de Trabajo de Analisis de Fragmentacion de Pila Post-Tronadura'
slug: fragmentiq
date: 2026-07-07
category: mining-analytics
family: faena
excerpt: 'A post-blast fragmentation workbench that delineates muckpile fragments by watershed in the browser and derives a mass-weighted particle-size distribution with a Rosin-Rammler fit and P10/P50/P80. It is scored against generator truth on synthetic muckpiles, with a real-photo lane of 5 CC BY images from an Iranian iron-ore mine where every number is explicitly RELATIVE, because no sieve ground truth exists, the scale is unknown, and n is small. Honest by design: the over-segmentation bias is shown directly in the artifact (116 recovered vs 70 true fragments), and the learned refinement gain is reported as indicative, not significant, on n=8.'
excerptEs: 'Un banco de trabajo de fragmentacion post-tronadura que delinea fragmentos de la pila por watershed en el navegador y deriva una distribucion granulometrica ponderada por masa con un ajuste Rosin-Rammler y P10/P50/P80. Se puntua contra la verdad del generador sobre pilas sinteticas, con una via de fotos reales de 5 imagenes CC BY de una mina de hierro iraniana donde cada numero es explicitamente RELATIVO, porque no existe verdad de tamizado, la escala es desconocida y el n es pequeno. Honesto por diseno: el sesgo de sobresegmentacion se muestra directo en el artefacto (116 fragmentos recuperados vs 70 verdaderos), y la ganancia del refinamiento aprendido se reporta como indicativa, no significativa, sobre n=8.'
icon: tabler:grain
tags: [mining-analytics, fragmentation, muckpile, watershed, particle-size, rosin-rammler, computer-vision, onnx, blasting, mining]
proprietary: false
featured: false
assetPatterns: [fragmentiq]
github: 'https://github.com/fsantibanezleal/CAOS_FragmentIQ'
demo: 'https://fragmentiq.fasl-work.com'
website: 'https://fragmentiq.fasl-work.com'

challenge: 'Post-blast fragmentation drives loader productivity, crusher throughput and downstream grinding energy, so measuring the muckpile particle-size distribution is worth a lot. Image-based delineation is the practical way to do it, and it has a known bias: watershed methods over-segment, cutting single blocks into several fragments and skewing the size curve fine. Two further traps make it easy to overclaim: benchmarks on a handful of samples read a few points of gain as real when it is noise, and real muckpile photos rarely have a sieve-measured ground truth or a known scale, so any millimetre number attached to a real photo is unfounded.'
challengeEs: 'La fragmentacion post-tronadura gobierna la productividad del cargador, el rendimiento del chancador y la energia de molienda aguas abajo, por lo que medir la distribucion granulometrica de la pila vale mucho. La delineacion basada en imagenes es la via practica de hacerlo, y tiene un sesgo conocido: los metodos de watershed sobresegmentan, cortando bloques unicos en varios fragmentos y sesgando la curva de tamanos hacia lo fino. Dos trampas adicionales facilitan la sobreafirmacion: los benchmarks sobre un punado de muestras leen unos pocos puntos de ganancia como reales cuando es ruido, y las fotos reales de pila rara vez tienen una verdad de tamizado ni una escala conocida, de modo que cualquier numero en milimetros pegado a una foto real es infundado.'

approach: 'FragmentIQ runs a full classical computer-vision chain live in the browser over 7 synthetic muckpile cases: grayscale foreground and Otsu thresholding, a distance transform, marker non-maximum suppression (one marker per fragment), a descending distance-transform flood to labelled fragments (the WipFrag / Split-style watershed method), connected-component labelling and morphological granulometry. Areas become equivalent diameters, a mass-weighted percent-passing curve is built proportional to diameter cubed, and a Rosin-Rammler fit by linearised least squares yields P10/P50/P80 with xc, n and r-squared. A learned frag-edge CNN (ONNX) refines the foreground to reduce over-segmentation and is the one learned model that runs live; a separate fines-bias regressor is committed but evaluated offline only. A real-photo lane loads 5 CC BY images from the Gole-Gohar iron-ore mine, marked RELATIVE with scale unset. Kuz-Ram, Swebrec and Segment Anything are cited in the literature but not implemented. Static on GitHub Pages, offline bake importing the same TypeScript engine the browser runs.'
approachEs: 'FragmentIQ corre una cadena clasica completa de vision por computador en vivo en el navegador sobre 7 casos sinteticos de pila: primer plano en escala de grises y umbralado de Otsu, una transformada de distancia, supresion de no-maximos de marcadores (un marcador por fragmento), una inundacion descendente de la transformada de distancia hacia fragmentos etiquetados (el metodo watershed estilo WipFrag / Split), etiquetado de componentes conexas y granulometria morfologica. Las areas se vuelven diametros equivalentes, se construye una curva de porcentaje pasante ponderada por masa proporcional al diametro al cubo, y un ajuste Rosin-Rammler por minimos cuadrados linealizado entrega P10/P50/P80 con xc, n y r-cuadrado. Una CNN aprendida frag-edge (ONNX) refina el primer plano para reducir la sobresegmentacion y es el unico modelo aprendido que corre en vivo; un regresor de sesgo de finos separado esta commiteado pero se evalua solo offline. Una via de fotos reales carga 5 imagenes CC BY de la mina de hierro Gole-Gohar, marcadas RELATIVO con la escala sin fijar. Kuz-Ram, Swebrec y Segment Anything se citan en la literatura pero no se implementan. Estatico en GitHub Pages, horneado offline importando el mismo motor TypeScript que corre el navegador.'

businessContext: 'A fragmentation curve is only actionable if its bias and its uncertainty are known. FragmentIQ''s value is that it surfaces both: the over-segmentation bias is visible directly in the artifact (116 recovered fragments against 70 true on one case), and the real-photo lane refuses to attach any accuracy or millimetre size to a photo that has no sieve truth and no known scale, calling every real number relative in the app in both languages. The learned refinement is reported honestly, a P50-error improvement that is indicative not significant at n=8, with hyperparameters selected on a disjoint tune bank and reported on a disjoint test bank. That discipline is what separates a fragmentation aid from a plausible-looking curve.'
businessContextEs: 'Una curva de fragmentacion solo es accionable si se conocen su sesgo y su incertidumbre. El valor de FragmentIQ es que expone ambos: el sesgo de sobresegmentacion es visible directo en el artefacto (116 fragmentos recuperados contra 70 verdaderos en un caso), y la via de fotos reales se niega a pegar cualquier accuracy o tamano en milimetros a una foto que no tiene verdad de tamizado ni escala conocida, llamando relativo a cada numero real en la app en ambos idiomas. El refinamiento aprendido se reporta con honestidad, una mejora del error de P50 que es indicativa, no significativa, con n=8, con hiperparametros seleccionados sobre un banco de ajuste disjunto y reportados sobre un banco de test disjunto. Esa disciplina es lo que separa un asistente de fragmentacion de una curva de aspecto plausible.'

strategicValue: 'FragmentIQ''s honesty asset is that it shows its own bias and refuses accuracy claims where truth does not exist. The over-segmentation bias is quantified in the artifact (116 recovered vs 70 true fragments), not hidden; the 5 real Gole-Gohar photos are shipped as an explicitly RELATIVE lane with scale unset and no sieve ground truth, so no millimetre P80 is ever printed for a real photo; and the learned frag-edge CNN gain (P50 error 27.2% -> 23.8%) is stated as indicative not significant at n=8, with clean tune/test bank separation. The card also names what is cited but not built: no Kuz-Ram, no Swebrec, and no Segment Anything, the last being the highest overclaim risk because the source images come from a mirror named for SAM while FragmentIQ borrows only the images. It is a reusable pattern for image-based fragmentation analysis that states its bias, its scale limits and its sample size.'
strategicValueEs: 'El activo de honestidad de FragmentIQ es que muestra su propio sesgo y se niega a afirmar accuracy donde la verdad no existe. El sesgo de sobresegmentacion esta cuantificado en el artefacto (116 recuperados vs 70 verdaderos), no oculto; las 5 fotos reales de Gole-Gohar se despliegan como una via explicitamente RELATIVA con la escala sin fijar y sin verdad de tamizado, de modo que nunca se imprime un P80 en milimetros para una foto real; y la ganancia de la CNN frag-edge aprendida (error de P50 27,2% -> 23,8%) se declara como indicativa, no significativa, con n=8, con separacion limpia de banco de ajuste y de test. La ficha tambien nombra lo que se cita pero no se construye: sin Kuz-Ram, sin Swebrec, y sin Segment Anything, este ultimo el mayor riesgo de sobreafirmacion porque las imagenes fuente vienen de un mirror nombrado por SAM mientras FragmentIQ toma prestadas solo las imagenes. Es un patron reutilizable para analisis de fragmentacion basado en imagenes que declara su sesgo, sus limites de escala y su tamano de muestra.'

kpis:
  - label: 'What the result gives you'
    labelEs: 'Que te entrega el resultado'
    baseline: 'A single size number'
    baselineEs: 'Un unico numero de tamano'
    result: 'A mass-weighted particle-size distribution with a Rosin-Rammler fit and P10/P50/P80, live in the browser'
    resultEs: 'Una distribucion granulometrica ponderada por masa con ajuste Rosin-Rammler y P10/P50/P80, en vivo en el navegador'
    impact: 'The whole size curve, not one point'
    impactEs: 'La curva de tamanos completa, no un punto'
  - label: 'Over-segmentation, shown not hidden'
    labelEs: 'Sobresegmentacion, mostrada no oculta'
    baseline: 'Report the fragment count as truth'
    baselineEs: 'Reportar el conteo de fragmentos como verdad'
    result: '116 recovered vs 70 true fragments on R-COARSE - the bias is in the artifact'
    resultEs: '116 fragmentos recuperados vs 70 verdaderos en R-COARSE - el sesgo esta en el artefacto'
    impact: 'A known property of image-based delineation, quantified'
    impactEs: 'Una propiedad conocida de la delineacion por imagenes, cuantificada'
  - label: 'Learned gain, honestly scoped'
    labelEs: 'Ganancia aprendida, acotada con honestidad'
    baseline: 'Present a benchmark delta as significant'
    baselineEs: 'Presentar un delta de benchmark como significativo'
    result: 'frag-edge CNN cuts P50 error 27.2% -> 23.8%, indicative not significant at n=8, tune/test banks disjoint'
    resultEs: 'La CNN frag-edge baja el error de P50 27,2% -> 23,8%, indicativa no significativa con n=8, bancos de ajuste/test disjuntos'
    impact: 'A 3.4-point delta on 8 samples is called what it is'
    impactEs: 'Un delta de 3,4 puntos sobre 8 muestras se llama por lo que es'
  - label: 'Real photos are relative-only'
    labelEs: 'Las fotos reales son solo relativas'
    baseline: 'Print a millimetre P80 for a field photo'
    baselineEs: 'Imprimir un P80 en milimetros para una foto de terreno'
    result: '5 real Gole-Gohar photos marked RELATIVE: scale unset, no sieve truth, stated in EN + ES'
    resultEs: '5 fotos reales de Gole-Gohar marcadas RELATIVO: escala sin fijar, sin verdad de tamizado, declarado en EN + ES'
    impact: 'No accuracy claim where no ground truth exists'
    impactEs: 'Sin afirmacion de accuracy donde no existe verdad de terreno'

metrics:
  - label: 'Classical chain (live)'
    labelEs: 'Cadena clasica (en vivo)'
    value: 'Otsu -> distance transform -> marker non-maximum suppression -> watershed -> connected components -> mass-weighted PSD (diameter^3) -> Rosin-Rammler least-squares fit -> P10/P50/P80, xc, n, r2'
    valueEs: 'Otsu -> transformada de distancia -> supresion de no-maximos de marcadores -> watershed -> componentes conexas -> PSD ponderada por masa (diametro^3) -> ajuste Rosin-Rammler por minimos cuadrados -> P10/P50/P80, xc, n, r2'
  - label: 'Learned refinement'
    labelEs: 'Refinamiento aprendido'
    value: 'frag-edge boundary CNN (ONNX, live) cuts P50 error 27.2% -> 23.8% and boundary F1 0.9974; hyperparameters selected on a disjoint tune bank, reported on a disjoint test bank (n=8, indicative not significant)'
    valueEs: 'CNN de bordes frag-edge (ONNX, en vivo) baja el error de P50 27,2% -> 23,8% y F1 de borde 0,9974; hiperparametros seleccionados sobre banco de ajuste disjunto, reportados sobre banco de test disjunto (n=8, indicativo no significativo)'
  - label: 'Synthetic data'
    labelEs: 'Datos sinteticos'
    value: '7 synthetic muckpile cases (size regimes, lighting/imaging, closed-form analytic controls) scored against per-pixel generator truth; over-segmentation visible (116 recovered vs 70 true on R-COARSE)'
    valueEs: '7 casos sinteticos de pila (regimenes de tamano, iluminacion/imagen, controles analiticos de forma cerrada) puntuados contra verdad por pixel del generador; sobresegmentacion visible (116 recuperados vs 70 verdaderos en R-COARSE)'
  - label: 'Real data (relative-only)'
    labelEs: 'Datos reales (solo relativo)'
    value: '5 post-blast photos, Gole-Gohar iron-ore mine, Iran (Hadi Yaghoobi, DOI 10.17632/z78ghz96bn.1, CC BY 4.0); label RELATIVE, scale unset, no sieve ground truth; every real number is pixel-relative'
    valueEs: '5 fotos post-tronadura, mina de hierro Gole-Gohar, Iran (Hadi Yaghoobi, DOI 10.17632/z78ghz96bn.1, CC BY 4.0); etiqueta RELATIVO, escala sin fijar, sin verdad de tamizado; cada numero real es relativo al pixel'
  - label: 'Cited, not implemented'
    labelEs: 'Citado, no implementado'
    value: 'Kuz-Ram, Swebrec and Segment Anything (SAM) are cited in the literature but NOT implemented; FragmentIQ fits Rosin-Rammler and delineates by watershed, and borrows only the images from a SAM-named mirror'
    valueEs: 'Kuz-Ram, Swebrec y Segment Anything (SAM) se citan en la literatura pero NO se implementan; FragmentIQ ajusta Rosin-Rammler y delinea por watershed, y toma prestadas solo las imagenes de un mirror nombrado por SAM'
  - label: 'Compute'
    labelEs: 'Computo'
    value: '100% in-browser: TypeScript CV + onnxruntime-web (frag-edge live; fines regressor offline-only); offline precompute imports the same TS engine, so baked and live numbers match by construction'
    valueEs: '100% en navegador: CV en TypeScript + onnxruntime-web (frag-edge en vivo; regresor de finos solo offline); el precomputo offline importa el mismo motor TS, de modo que los numeros horneados y en vivo coinciden por construccion'

stack: [TypeScript, React, Vite, ONNX, onnxruntime-web, PyTorch, uPlot, KaTeX]
---

## The size curve, its bias, and what a real photo cannot tell you

FragmentIQ is a post-blast **fragmentation** workbench. It delineates muckpile fragments by **watershed** in the browser and derives a **mass-weighted particle-size distribution** with a **Rosin-Rammler fit** and P10/P50/P80. Live at [fragmentiq.fasl-work.com](https://fragmentiq.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## The full classical chain, run live

Grayscale foreground and **Otsu** thresholding, a **distance transform**, **marker non-maximum suppression** (one marker per fragment), a descending-flood **watershed** to labelled fragments (the WipFrag / Split-style method), **connected components** and morphological **granulometry**. Areas become equivalent diameters, percent-passing is built proportional to diameter cubed, and a **Rosin-Rammler least-squares fit** gives P10/P50/P80 with xc, n and r-squared. A learned **frag-edge CNN** (ONNX) refines the foreground to reduce over-segmentation and is the one learned model that runs live; a separate fines-bias regressor is committed but evaluated **offline only**.

## What is cited, and what is not built

To be exact: **Kuz-Ram, Swebrec and Segment Anything (SAM) are cited but not implemented.** FragmentIQ fits Rosin-Rammler (which underlies Kuz-Ram) and delineates by watershed; there is no SAM, no SAM weights, no SAM inference. The real images come from a public mirror that happens to be named for SAM, and FragmentIQ borrows only the images.

## Honest about bias, sample size and scale

The **over-segmentation bias is shown directly** in the artifact: on one coarse case the method recovers **116 fragments against 70 true**, skewing the curve fine, which is a known property of image-based delineation. The learned refinement cuts **P50 error 27.2% -> 23.8%** with boundary F1 0.9974, but this is stated as **indicative not significant at n=8**, with hyperparameters selected on a disjoint tune bank and reported on a disjoint test bank. And the **5 real Gole-Gohar photos** (CC BY 4.0, DOI 10.17632/z78ghz96bn.1) ship as an explicitly **RELATIVE** lane: the scale is unset, no sieve ground truth exists, and the app says so in English and Spanish, so no millimetre P80 is ever printed for a real photo.

[Live demo](https://fragmentiq.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_FragmentIQ)
