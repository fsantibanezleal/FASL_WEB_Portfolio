---
title: 'ImageLab, One Image Across the Full Spectrum of Mathematical Representations'
titleEs: 'ImageLab, Una Imagen a lo Largo de Todo el Espectro de Representaciones Matemáticas'
slug: imglab
date: 2026-07-18
category: image-representation
family: labs
excerpt: 'One image written across eleven mathematical representations: orthonormal transforms (Fourier, DCT, wavelet, KLT), overcomplete sparse dictionaries, geometric primitives, an implicit neural field (SIREN), symbolic CPPN formula art, Fourier-descriptor epicycles, and learned generative latents (VAE, diffusion), each with editable parameters. The measured thesis is that editability is U-shaped: it peaks at the designed-structure pole (local, exact edits) and the learned-manifold pole (semantic, entangled edits) and collapses to noise between. Everything is computed live in the browser (TypeScript, WebGL2) or baked offline by an open, seed-deterministic Python pipeline.'
excerptEs: 'Una imagen escrita a lo largo de once representaciones matemáticas: transformadas ortonormales (Fourier, DCT, wavelet, KLT), diccionarios dispersos sobrecompletos, primitivas geométricas, un campo neuronal implícito (SIREN), arte simbólico con fórmulas CPPN, epiciclos de descriptores de Fourier y latentes generativos aprendidos (VAE, difusión), cada uno con parámetros editables. La tesis medida es que la editabilidad tiene forma de U: alcanza su máximo en el polo de estructura diseñada (ediciones locales y exactas) y en el polo de variedad aprendida (ediciones semánticas y enredadas), y colapsa en ruido entre ambos. Todo se calcula en vivo en el navegador (TypeScript, WebGL2) o se precalcula offline mediante un pipeline abierto de Python determinista por semilla.'
icon: tabler:photo-cog
tags: [image-representation, signal-processing, fourier, wavelet, sparse-coding, implicit-neural-fields, siren, diffusion, webgl2, benchmark]
proprietary: false
featured: false
assetPatterns: [imglab, imagelab]
github: 'https://github.com/fsantibanezleal/CAOS_IMGLAB'
demo: 'https://imglab.fasl-work.com'
website: 'https://imglab.fasl-work.com'

challenge: 'An image can be written in many mathematical languages, but the usual demos show each one in isolation and never ask the question that decides whether a representation is useful for editing or compression: when you perturb its parameters, does the change stay meaningful, or does it collapse into noise? A Fourier coefficient, a wavelet detail, a KLT component, a dictionary atom, a neural-field weight, and a diffusion latent all edit the image, but they do not edit it the same way, and almost nothing puts them side by side on the same picture with the same measured yardstick.'
challengeEs: 'Una imagen puede escribirse en muchos lenguajes matemáticos, pero los demos habituales muestran cada uno por separado y nunca hacen la pregunta que decide si una representación sirve para editar o comprimir: cuando perturbas sus parámetros, ¿el cambio sigue siendo significativo o colapsa en ruido? Un coeficiente de Fourier, un detalle wavelet, una componente KLT, un átomo de diccionario, un peso de un campo neuronal y un latente de difusión todos editan la imagen, pero no la editan de la misma forma, y casi nada los pone lado a lado sobre la misma imagen con la misma vara medida.'

approach: 'ImageLab writes one reference image in eleven representations and lets you edit each one''s parameters directly: the orthonormal transforms Fourier, DCT, wavelet, and KLT, overcomplete sparse dictionaries, geometric primitives, an implicit neural field (SIREN), symbolic CPPN formula art, Fourier-descriptor epicycles, and learned generative latents from a VAE and a diffusion model. It is built as two worlds joined by a metric contract: light representations are computed live in the browser with TypeScript and WebGL2 shaders, heavy ones are baked offline by an open, seed-deterministic Python pipeline (numpy, scipy, PyWavelets, scikit-image, scikit-learn, PyTorch, diffusers), and the fidelity metrics (PSNR, SSIM, MS-SSIM) are shared between the two so the number you read in the browser equals the number the pipeline computed. The Experiments and Benchmark pages carry the measured cross-family comparison: a rate-distortion sweep, a fixed-budget fidelity table, and an editability-locality metric that scores how local an edit stays (KLT and wavelet near 1.0, local and exact; Fourier and DCT around 0.16 to 0.23, global and entangled).'
approachEs: 'ImageLab escribe una imagen de referencia en once representaciones y permite editar directamente los parámetros de cada una: las transformadas ortonormales Fourier, DCT, wavelet y KLT, diccionarios dispersos sobrecompletos, primitivas geométricas, un campo neuronal implícito (SIREN), arte simbólico con fórmulas CPPN, epiciclos de descriptores de Fourier y latentes generativos aprendidos de un VAE y un modelo de difusión. Está construido como dos mundos unidos por un contrato de métricas: las representaciones livianas se calculan en vivo en el navegador con TypeScript y shaders WebGL2, las pesadas se precalculan offline mediante un pipeline abierto de Python determinista por semilla (numpy, scipy, PyWavelets, scikit-image, scikit-learn, PyTorch, diffusers), y las métricas de fidelidad (PSNR, SSIM, MS-SSIM) se comparten entre ambos, de modo que el número que lees en el navegador es igual al que calculó el pipeline. Las páginas de Experimentos y Benchmark llevan la comparación medida entre familias: un barrido tasa-distorsión, una tabla de fidelidad a presupuesto fijo y una métrica de localidad de edición que mide cuán local se mantiene una edición (KLT y wavelet cerca de 1.0, locales y exactas; Fourier y DCT alrededor de 0.16 a 0.23, globales y enredadas).'

businessContext: 'Representation choice is the quiet decision under most image work: compression, denoising, inpainting, editing, and generative modeling each pick a basis and live with its trade-offs. ImageLab is that decision made visible and measurable: a teaching and reference instrument that shows, on one image and with one yardstick, what each family is good at and where it breaks, rather than a single flattering result per transform.'
businessContextEs: 'La elección de representación es la decisión silenciosa que hay debajo de casi todo el trabajo con imágenes: compresión, eliminación de ruido, inpainting, edición y modelado generativo eligen una base y conviven con sus compromisos. ImageLab es esa decisión hecha visible y medible: un instrumento de enseñanza y de referencia que muestra, sobre una sola imagen y con una sola vara, en qué es buena cada familia y dónde se rompe, en lugar de un único resultado favorecedor por transformada.'

strategicValue: 'ImageLab covers the full designed-to-learned spectrum on one image, from exact orthonormal transforms to a diffusion latent, and reports a real measured benchmark rather than an asserted intuition: the U-shaped editability curve is shown with numbers, and the fidelity metrics are identical across the Python pipeline and the TypeScript runtime. It is honest about scope: it is a CAOS research and teaching lab, not a production codec, not a state-of-the-art generative model, and not a claim that any one representation is best; it uses a small reference image and reports every number as-is. That honesty is the value: a credible, reproducible map of when a parameter edit stays meaningful and when it becomes noise.'
strategicValueEs: 'ImageLab cubre todo el espectro de lo diseñado a lo aprendido sobre una sola imagen, desde transformadas ortonormales exactas hasta un latente de difusión, y reporta un benchmark real medido en lugar de una intuición afirmada: la curva de editabilidad en forma de U se muestra con números, y las métricas de fidelidad son idénticas entre el pipeline de Python y el runtime de TypeScript. Es honesto sobre su alcance: es un laboratorio de investigación y enseñanza de CAOS, no un códec de producción, no un modelo generativo de última generación y no una afirmación de que una representación sea la mejor; usa una imagen de referencia pequeña y reporta cada número tal cual. Esa honestidad es el valor: un mapa creíble y reproducible de cuándo una edición de parámetros sigue siendo significativa y cuándo se vuelve ruido.'

kpis:
  - label: 'Representations catalogued and shipped'
    labelEs: 'Representaciones catalogadas y publicadas'
    baseline: 'Fourier first (single transform)'
    baselineEs: 'Fourier primero (una sola transformada)'
    result: '11 across the full designed-to-learned spectrum'
    resultEs: '11 en todo el espectro de lo diseñado a lo aprendido'
    impact: 'One image written as transforms, dictionaries, primitives, neural fields, and generative latents'
    impactEs: 'Una imagen escrita como transformadas, diccionarios, primitivas, campos neuronales y latentes generativos'
  - label: 'Cross-family benchmark'
    labelEs: 'Benchmark entre familias'
    baseline: 'Single-transform demos, no shared yardstick'
    baselineEs: 'Demos de una sola transformada, sin vara compartida'
    result: 'Measured rate-distortion + fixed-budget fidelity + editability-locality'
    resultEs: 'Tasa-distorsión medida + fidelidad a presupuesto fijo + localidad de edición'
    impact: 'The U-shaped editability thesis shown with real numbers'
    impactEs: 'La tesis de editabilidad en forma de U mostrada con números reales'
  - label: 'Editability-locality metric'
    labelEs: 'Métrica de localidad de edición'
    baseline: 'Asserted intuition (local vs global edits)'
    baselineEs: 'Intuición afirmada (ediciones locales vs globales)'
    result: 'KLT / wavelet ~1.0 (local-exact) vs Fourier / DCT ~0.16–0.23 (global-entangled)'
    resultEs: 'KLT / wavelet ~1.0 (local-exacto) vs Fourier / DCT ~0.16–0.23 (global-enredado)'
    impact: 'Quantifies when a parameter edit stays local and when it spills across the image'
    impactEs: 'Cuantifica cuándo una edición de parámetros se mantiene local y cuándo se dispersa por la imagen'
  - label: 'Cross-language metric parity'
    labelEs: 'Paridad de métricas entre lenguajes'
    baseline: 'Separate offline and in-browser numbers'
    baselineEs: 'Números separados offline y en navegador'
    result: 'Shared PSNR / SSIM / MS-SSIM between Python and TypeScript'
    resultEs: 'PSNR / SSIM / MS-SSIM compartidos entre Python y TypeScript'
    impact: 'The fidelity you read in the browser equals the offline pipeline number'
    impactEs: 'La fidelidad que lees en el navegador es igual a la del pipeline offline'

metrics:
  - label: 'Representations'
    labelEs: 'Representaciones'
    value: '11 (Fourier, DCT, wavelet, KLT, sparse dictionaries, geometric primitives, SIREN, CPPN, Fourier epicycles, VAE, diffusion)'
    valueEs: '11 (Fourier, DCT, wavelet, KLT, diccionarios dispersos, primitivas geométricas, SIREN, CPPN, epiciclos de Fourier, VAE, difusión)'
  - label: 'Editability-locality (local-exact pole)'
    labelEs: 'Localidad de edición (polo local-exacto)'
    value: 'KLT / wavelet ~1.0'
    valueEs: 'KLT / wavelet ~1.0'
  - label: 'Editability-locality (global-entangled pole)'
    labelEs: 'Localidad de edición (polo global-enredado)'
    value: 'Fourier / DCT ~0.16–0.23'
    valueEs: 'Fourier / DCT ~0.16–0.23'
  - label: 'Cross-family benchmark'
    labelEs: 'Benchmark entre familias'
    value: 'Rate-distortion sweep + fixed-budget fidelity table + editability-locality'
    valueEs: 'Barrido tasa-distorsión + tabla de fidelidad a presupuesto fijo + localidad de edición'
  - label: 'Fidelity metrics (Python and TypeScript)'
    labelEs: 'Métricas de fidelidad (Python y TypeScript)'
    value: 'Shared PSNR / SSIM / MS-SSIM'
    valueEs: 'PSNR / SSIM / MS-SSIM compartidos'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'React 19 / Vite / TS · WebGL2 · uPlot / KaTeX · Python (numpy, scipy, PyWavelets, scikit-image, scikit-learn, PyTorch, diffusers) · static GitHub Pages'
    valueEs: 'React 19 / Vite / TS · WebGL2 · uPlot / KaTeX · Python (numpy, scipy, PyWavelets, scikit-image, scikit-learn, PyTorch, diffusers) · GitHub Pages estático'

stack: [Python, PyTorch, diffusers, scikit-image, scikit-learn, PyWavelets, TypeScript, React, Vite, WebGL2, uPlot, KaTeX, GitHub Pages]
---

## One image, eleven representations

ImageLab writes a single reference image in **eleven mathematical representations** and lets you edit each one''s parameters directly: the orthonormal transforms Fourier, DCT, wavelet, and KLT; overcomplete **sparse dictionaries**; **geometric primitives**; an implicit neural field (**SIREN**); symbolic **CPPN** formula art; **Fourier-descriptor epicycles**; and learned generative latents from a **VAE** and a **diffusion model**. Light representations run live in the browser (TypeScript and WebGL2 shaders); heavy ones are baked offline by an open, seed-deterministic Python pipeline. Live at [imglab.fasl-work.com](https://imglab.fasl-work.com).

## The U-shaped editability thesis

The organizing question is what happens when you perturb a representation''s parameters. The measured answer, shown on the Experiments and Benchmark pages, is that **editability is U-shaped**: it peaks at the designed-structure pole, where edits are local and exact (KLT and wavelet score near 1.0 on the editability-locality metric), and at the learned-manifold pole, where edits are semantic and entangled, and it collapses toward noise in between (Fourier and DCT sit around 0.16 to 0.23, global and entangled). The cross-family benchmark makes this concrete with a rate-distortion sweep and a fixed-budget fidelity table, and the fidelity metrics (PSNR, SSIM, MS-SSIM) are shared between the Python pipeline and the TypeScript runtime, so the number you read in the browser is the number the pipeline computed.

## Honest about scope

ImageLab is a **CAOS research and teaching lab**, a sibling of PINN-Lab, QLab, SimLab, and ChronoScope. It is **not** a production codec, **not** a state-of-the-art generative model, and **not** a claim that any single representation wins: it works on a small reference image, reports every number as-is, and is bilingual (EN/ES) with light and dark themes. The value is the honest, reproducible map of when a parameter edit stays meaningful and when it becomes noise.

[Live demo](https://imglab.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_IMGLAB)
