---
title: 'CardioPINN — Physics-Informed Cardiac Inverse-Problem Lab'
titleEs: 'CardioPINN — Laboratorio de Problemas Inversos Cardiacos con Física Informada'
slug: cardiopinn
date: 2026-07-15
category: scientific-ml
family: labs
excerpt: 'A two-case lab in physics-informed cardiac reconstruction, on 100% real measured data, whose honest result is the point. Case 1 (ECGi) recovers heart-surface potentials from body-surface potentials with regularized least squares plus a graph prior and a deep ensemble; case 2 (4D-flow) recovers aortic relative pressure from MRI velocity with a genuine divergence-free PINN. The physics-informed proposal does NOT beat a classical Tikhonov baseline on any of the 4 beats (the app says so openly); the real contribution is a calibrated per-node uncertainty at parity accuracy, three published null results, and one confirmed, CI-tested implementation advance.'
excerptEs: 'Un laboratorio de dos casos en reconstrucción cardiaca con física informada, sobre datos 100% reales medidos, cuyo resultado honesto es el punto. El caso 1 (ECGi) recupera potenciales de la superficie del corazón desde potenciales de la superficie del cuerpo con mínimos cuadrados regularizados más un prior de grafo y un deep ensemble; el caso 2 (4D-flow) recupera presión relativa aórtica desde velocidad de MRI con un PINN genuino libre de divergencia. La propuesta con física informada NO supera a una base clásica de Tikhonov en ninguno de los 4 latidos (la app lo dice abiertamente); la contribución real es una incertidumbre por nodo calibrada a paridad de exactitud, tres resultados nulos publicados, y un avance de implementación confirmado y testeado en CI.'
icon: tabler:heartbeat
tags: [scientific-ml, physics-informed, pinn, inverse-problems, ecgi, 4d-flow-mri, uncertainty-quantification, tikhonov, null-results, cardiac]
proprietary: false
featured: false
assetPatterns: [cardiopinn]
github: 'https://github.com/fsantibanezleal/CAOS_RES_CardioPINN'
demo: 'https://cardiopinn.fasl-work.com'
website: 'https://cardiopinn.fasl-work.com'

challenge: 'Two clinically valuable cardiac quantities cannot be measured directly: the electrical potential on the surface of the heart, and the pressure field inside the aorta. Both have to be reconstructed from something that can be measured (body-surface electrodes for the first, 4D-flow MRI velocity for the second), and both are ill-posed inverse problems where a plausible-looking answer can be quietly wrong. There is no invasive gold standard to check against on the real data, which is exactly why the problem is interesting and exactly why it is easy to overclaim. The honest question is not "does it produce a reconstruction" but "when should you trust it, and does a physics-informed method actually beat the classical baseline".'
challengeEs: 'Dos cantidades cardiacas de valor clínico no se pueden medir directamente: el potencial eléctrico en la superficie del corazón, y el campo de presión dentro de la aorta. Ambas deben reconstruirse desde algo medible (electrodos en la superficie del cuerpo para la primera, velocidad de MRI 4D-flow para la segunda), y ambas son problemas inversos mal planteados donde una respuesta de apariencia plausible puede estar silenciosamente equivocada. No hay un patrón de oro invasivo con que contrastar sobre los datos reales, que es justamente por qué el problema es interesante y justamente por qué es fácil sobrevender. La pregunta honesta no es "produce una reconstrucción" sino "cuándo deberías confiar en ella, y un método con física informada realmente supera a la base clásica".'

approach: 'CardioPINN runs two real-data cases and reports what actually happened. Case 1, ECGi, recovers heart-surface potentials from body-surface potentials on EDGAR data (a Utah human torso tank, 192 electrodes to a 256-node cage, and a Maastricht in-situ dog, 140 to 1321 nodes) using zeroth-order Tikhonov regularized least squares as the classical baseline, a graph-Laplacian prior built from the real heart-cage triangulation, and a K=6 deep ensemble over measurement-noise draws that is temperature-recalibrated so its two-sigma band matches the real error. This case contains NO PINN and no torch; it is a regularized linear inverse plus ensemble uncertainty. Case 2, 4D-flow, is the genuine PINN: a divergence-free velocity network (torch) that denoises the measured velocity, a pressure-Poisson solve driven by the network analytic autograd derivatives, and a space-time PINN for the unsteady acceleration, on one real thoracic-aorta 4D-flow MRI scan (47,902 lumen voxels, 16 frames). Everything is computed offline into committed JSON traces that the web reads; no model runs in the browser. Candidate advances are tested on known-answer analytic flows, since the real data has no gold standard, and the results, positive and null, are published.'
approachEs: 'CardioPINN corre dos casos con datos reales y reporta lo que de verdad pasó. El caso 1, ECGi, recupera potenciales de la superficie del corazón desde potenciales de la superficie del cuerpo sobre datos EDGAR (un tanque torso humano de Utah, 192 electrodos a una jaula de 256 nodos, y un perro in-situ de Maastricht, 140 a 1321 nodos) usando mínimos cuadrados regularizados de Tikhonov de orden cero como base clásica, un prior de grafo-Laplaciano construido desde la triangulación real de la jaula cardiaca, y un deep ensemble K=6 sobre sorteos de ruido de medición recalibrado por temperatura para que su banda de dos sigma coincida con el error real. Este caso NO contiene un PINN ni torch; es un inverso lineal regularizado más incertidumbre por ensemble. El caso 2, 4D-flow, es el PINN genuino: una red de velocidad libre de divergencia (torch) que denoisa la velocidad medida, una resolución de presión-Poisson gobernada por las derivadas analíticas por autograd de la red, y un PINN espacio-tiempo para la aceleración no estacionaria, sobre un escaneo real de MRI 4D-flow de aorta torácica (47.902 voxeles de lumen, 16 cuadros). Todo se computa offline en trazas JSON versionadas que la web lee; ningún modelo corre en el navegador. Los avances candidatos se prueban sobre flujos analíticos de respuesta conocida, ya que los datos reales no tienen patrón de oro, y los resultados, positivos y nulos, se publican.'

businessContext: 'The value of an inverse-problem tool in medicine is not a pretty reconstruction, it is a defensible one: a number a clinician can weigh, with an honest uncertainty, and a clear statement of where the method was and was not validated. CardioPINN is built as a methods-and-honesty study rather than a results piece precisely because that is the responsible framing for ill-posed reconstruction on tiny real cohorts (four beats, one scan). It shows where a physics-informed proposal helps (a calibrated per-node uncertainty a deterministic estimate cannot give) and where it does not (it does not beat the classical Tikhonov baseline on point accuracy), and it discloses its own leakage and failure modes in-app rather than burying them.'
businessContextEs: 'El valor de una herramienta de problemas inversos en medicina no es una reconstrucción bonita, es una defendible: un número que un clínico pueda ponderar, con una incertidumbre honesta, y una declaración clara de dónde el método fue y no fue validado. CardioPINN está construido como un estudio de método y honestidad más que como una pieza de resultados justamente porque ese es el encuadre responsable para reconstrucción mal planteada sobre cohortes reales diminutas (cuatro latidos, un escaneo). Muestra dónde una propuesta con física informada ayuda (una incertidumbre por nodo calibrada que una estimación determinista no puede dar) y dónde no (no supera a la base clásica de Tikhonov en exactitud puntual), y revela sus propias fugas y modos de falla dentro de la app en vez de enterrarlas.'

strategicValue: 'CardioPINN is a demonstration of validation discipline for physics-informed inverse problems: it publishes real null results instead of only wins. A hard divergence-free construction was hypothesized to improve pressure and was refuted (pressure worse, winning 0 of 6 configurations); a differentiable denoiser-solver coupling gave no gain; a structural-perturbation uncertainty field was calibrated (0.93 coverage) but uninformative on a clean lumen. It also caught and re-ran a round-one methodological confound rather than hiding it, and it refuses synthetic ground truth on principle. The one confirmed advance, analytic autograd source and flux versus finite differences on a known-answer duct, is real, gated and CI-tested. The pattern, ground everything in real measured data, test candidate advances on analytic flows with a known answer, calibrate the uncertainty, and report the nulls, transfers to any ill-posed reconstruction problem.'
strategicValueEs: 'CardioPINN es una demostración de disciplina de validación para problemas inversos con física informada: publica resultados nulos reales en vez de solo aciertos. Se planteó que una construcción libre de divergencia dura mejoraría la presión y fue refutada (la presión empeora, ganando 0 de 6 configuraciones); un acoplamiento diferenciable denoiser-solver no dio ganancia; un campo de incertidumbre por perturbación estructural quedó calibrado (0,93 de cobertura) pero poco informativo sobre un lumen limpio. También detectó y volvió a correr un confundido metodológico de la ronda uno en vez de esconderlo, y rechaza el patrón de oro sintético por principio. El único avance confirmado, fuente y flujo analíticos por autograd versus diferencias finitas sobre un ducto de respuesta conocida, es real, con compuerta y testeado en CI. El patrón, fundamentar todo en datos reales medidos, probar los avances candidatos sobre flujos analíticos de respuesta conocida, calibrar la incertidumbre, y reportar los nulos, transfiere a cualquier problema de reconstrucción mal planteado.'

kpis:
  - label: 'The honest result'
    labelEs: 'El resultado honesto'
    baseline: 'A card that claims a physics-informed method beats the classical baseline'
    baselineEs: 'Una ficha que afirma que un método con física informada supera a la base clásica'
    result: 'The proposal does NOT beat Tikhonov on any of the 4 beats (the app discloses this); the real gain is calibrated per-node uncertainty at parity accuracy'
    resultEs: 'La propuesta NO supera a Tikhonov en ninguno de los 4 latidos (la app lo revela); la ganancia real es incertidumbre por nodo calibrada a paridad de exactitud'
    impact: 'You get an uncertainty a deterministic estimate cannot provide, not an inflated accuracy claim'
    impactEs: 'Obtienes una incertidumbre que una estimación determinista no puede dar, no un reclamo de exactitud inflado'
  - label: 'A confirmed, tested advance'
    labelEs: 'Un avance confirmado y testeado'
    baseline: 'Finite-difference source and flux at the lumen edge inflate the pressure drop'
    baselineEs: 'La fuente y el flujo por diferencias finitas en el borde del lumen inflan la caída de presión'
    result: 'Analytic autograd source and flux: 0.066 vs 4.19 mmHg drop error on a known-answer duct, winning 6 of 6, roughly 63x'
    resultEs: 'Fuente y flujo analíticos por autograd: 0,066 vs 4,19 mmHg de error de caída sobre un ducto de respuesta conocida, ganando 6 de 6, cerca de 63x'
    impact: 'Shipped as a CI-tested gate; a real implementation win, shown on an analytic flow'
    impactEs: 'Entregado como compuerta testeada en CI; una ganancia de implementación real, mostrada sobre un flujo analítico'
  - label: 'Published null results'
    labelEs: 'Resultados nulos publicados'
    baseline: 'Hide the experiments that did not work'
    baselineEs: 'Esconder los experimentos que no funcionaron'
    result: '3 nulls published (hard div-free curl refuted 0/6; differentiable coupling no gain; structural UQ calibrated at 0.93 but uninformative) + a round-1 confound caught and re-run'
    resultEs: '3 nulos publicados (curl libre de divergencia dura refutado 0/6; acoplamiento diferenciable sin ganancia; UQ estructural calibrado en 0,93 pero poco informativo) + un confundido de ronda 1 detectado y vuelto a correr'
    impact: 'The honest record is the deliverable'
    impactEs: 'El registro honesto es el entregable'
  - label: 'Data'
    labelEs: 'Datos'
    baseline: 'Synthetic ground truth'
    baselineEs: 'Patrón de oro sintético'
    result: '100% real measured data: EDGAR ECGi (4 beats, 2 datasets) + one thoracic-aorta 4D-flow MRI (47,902 voxels); zero synthetic ground truth'
    resultEs: '100% datos reales medidos: ECGi EDGAR (4 latidos, 2 datasets) + un MRI 4D-flow de aorta torácica (47.902 voxeles); cero patrón de oro sintético'
    impact: 'A real problem at small n, with no fabricated gold standard; datasets that failed inspection were dropped'
    impactEs: 'Un problema real con n pequeño, sin patrón de oro fabricado; los datasets que no pasaron inspección se descartaron'

metrics:
  - label: 'What it recovers'
    labelEs: 'Qué recupera'
    value: 'ECGi: heart-surface potentials from body-surface (192 to 256 and 140 to 1321 electrodes, 4 beats, 220-593 frames) · 4D-flow: aortic relative pressure from MRI velocity (1 scan, 16 frames)'
    valueEs: 'ECGi: potenciales de superficie del corazón desde superficie del cuerpo (192 a 256 y 140 a 1321 electrodos, 4 latidos, 220-593 cuadros) · 4D-flow: presión relativa aórtica desde velocidad de MRI (1 escaneo, 16 cuadros)'
  - label: 'ECGi method (not a PINN)'
    labelEs: 'Método ECGi (no es un PINN)'
    value: 'Zeroth-order Tikhonov regularized least squares (classical) + graph-Laplacian prior + K=6 deep ensemble, temperature-recalibrated; NumPy/SciPy, no torch'
    valueEs: 'Mínimos cuadrados regularizados de Tikhonov de orden cero (clásico) + prior de grafo-Laplaciano + deep ensemble K=6, recalibrado por temperatura; NumPy/SciPy, sin torch'
  - label: '4D-flow method (the PINN)'
    labelEs: 'Método 4D-flow (el PINN)'
    value: 'Divergence-free velocity PINN (torch) + pressure-Poisson from analytic autograd derivatives + space-time PINN for dv/dt; real DICOM ingestion, aliasing correction, RTX 4070'
    valueEs: 'PINN de velocidad libre de divergencia (torch) + presión-Poisson desde derivadas analíticas por autograd + PINN espacio-tiempo para dv/dt; ingesta DICOM real, corrección de aliasing, RTX 4070'
  - label: 'Honesty disclosed in-app'
    labelEs: 'Honestidad revelada en la app'
    value: 'The proposal does not beat Tikhonov on any of 4 beats (headline RE/CC are the Tikhonov numbers); the oracle-best-lambda selection is disclosed; not clinically deployed'
    valueEs: 'La propuesta no supera a Tikhonov en ninguno de los 4 latidos (los RE/CC de portada son los números de Tikhonov); la selección de lambda-óptimo-oráculo se revela; no desplegado clínicamente'
  - label: 'Results on the real scan'
    labelEs: 'Resultados sobre el escaneo real'
    value: '2.3x divergence reduction (25.37 to 11.19 /s); 0.79 mmHg recovered relative-pressure range (physiological, NOT validated, no invasive gold standard); calibrated ECGi 2-sigma reliability 0.89-0.90'
    valueEs: '2,3x de reducción de divergencia (25,37 a 11,19 /s); 0,79 mmHg de rango de presión relativa recuperado (fisiológico, NO validado, sin patrón de oro invasivo); confiabilidad ECGi 2-sigma calibrada 0,89-0,90'
  - label: 'Compute + deploy'
    labelEs: 'Cómputo + despliegue'
    value: 'Bake-and-read: physics computed offline into committed JSON, no model runs in the browser; React + Vite SPA (three.js meshes/point clouds, uPlot, KaTeX), EN/ES, light/dark, GitHub Pages'
    valueEs: 'Bake-and-read: la física se computa offline en JSON versionado, ningún modelo corre en el navegador; SPA React + Vite (mallas/nubes de puntos three.js, uPlot, KaTeX), EN/ES, claro/oscuro, GitHub Pages'

stack: [Python, PyTorch, NumPy, SciPy, pydicom, React, Vite, three.js, uPlot, KaTeX]
---

## An inverse-problem lab where the honesty is the contribution

CardioPINN is a two-case lab in **physics-informed cardiac reconstruction**, run entirely on **real measured data**, and framed as a methods-and-honesty study rather than a results piece. It recovers cardiac quantities that cannot be measured (heart-surface potentials; aortic relative pressure) from quantities that can (body-surface potentials; 4D-flow MRI velocity), bakes the physics offline into committed JSON traces, and the web replays them. Live at [cardiopinn.fasl-work.com](https://cardiopinn.fasl-work.com).

## Two cases, and only one of them is a PINN

- **Case 1, ECGi, is not a PINN.** It recovers heart-surface potentials with **zeroth-order Tikhonov** regularized least squares (the classical baseline, closed form per frame), a **graph-Laplacian prior** from the real heart-cage triangulation, and a **K=6 deep ensemble** over measurement-noise draws, temperature-recalibrated. It is NumPy/SciPy, no torch: a regularized linear inverse plus ensemble uncertainty. Real EDGAR data (Utah human torso tank, 192 to 256 electrodes; Maastricht in-situ dog, 140 to 1321 nodes), four beats.
- **Case 2, 4D-flow, is the genuine PINN.** A **divergence-free velocity network** (torch) denoises the measured velocity, a **pressure-Poisson** solve is driven by the network's **analytic autograd derivatives**, and a **space-time PINN** recovers the unsteady acceleration, on one real thoracic-aorta 4D-flow MRI scan (47,902 lumen voxels, 16 frames).

The product name implies a PINN across both cases; half of it (the ECGi case) has none, and the app is written to make that clear rather than to paper over it.

## The physics-informed proposal does not beat the classical baseline

On all four beats, the **physics-informed proposal (graph prior plus deep ensemble) does not beat a well-tuned Tikhonov baseline** on point accuracy. The headline relative-error and correlation numbers you see are the **Tikhonov** numbers, the classical baseline's, and the app says so openly, including disclosing that the regularization strength is selected at the value minimizing the true error against the real cage (an oracle-best-lambda leak, disclosed in-app rather than buried). The real contribution is the **calibrated per-node uncertainty** the ensemble gives (two-sigma reliability **0.89-0.90** across all four beats) that a single deterministic estimate cannot, at parity-to-slightly-worse accuracy.

## Null results, published, and one confirmed advance

Candidate advances are tested on known-answer analytic flows, because the real data has no invasive gold standard, and the nulls are published, not hidden:

- **Confirmed (shipped, CI-tested):** analytic-autograd source and flux versus finite differences on a converging duct: median pressure-drop error **0.066 mmHg** (analytic) versus **4.19 mmHg** (FD), winning **6 of 6** configurations, roughly **63x**.
- **Null:** a hard divergence-free construction (velocity as the curl of a potential) was hypothesized to help pressure and was **refuted**, pressure got worse and it won pressure **0 of 6**.
- **Null:** a differentiable denoiser-solver coupling reproduced the direct solve exactly but gave **no gain**.
- **Null:** a structural-perturbation uncertainty field was **calibrated (0.93 coverage)** but uninformative on a clean lumen.

A round-one methodological confound (an FD pressure solve masking all differences) was **caught and re-run** on the analytic path, and recorded rather than hidden.

## Honest scope

The recovered aortic relative-pressure range (**0.79 mmHg**, alongside a **2.3x** divergence reduction on the real scan) is **physiological and plausible, not validated**: there is no invasive gold standard, which is the entire reason the method exists. The cohort is tiny (four beats, one MRI scan), the EDGAR raw data is not redistributed under its use agreement, and datasets that failed inspection (a rank-deficient partial sock, a simulation mislabelled as measurement, an unreadable BEM) were **excluded and the reasons recorded**. It is **not clinically deployed**.

[Live demo](https://cardiopinn.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RES_CardioPINN)
