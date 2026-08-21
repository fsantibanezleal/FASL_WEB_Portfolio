---
title: 'CardioPINN, Physics-Informed Cardiac Inverse-Problem Lab'
titleEs: 'CardioPINN, Laboratorio de Problemas Inversos Cardiacos con Física Informada'
slug: cardiopinn
date: 2026-07-14
category: scientific-ml
family: labs
excerpt: 'A two-case lab in physics-informed cardiac reconstruction, on 100% real measured data, scoped as a complement to classical methods, not a replacement. Case 1 (ECGi) recovers heart-surface potentials from body-surface potentials with regularized least squares plus a graph prior and a deep ensemble; case 2 (4D-flow) recovers the aortic relative-pressure FIELD from MRI velocity with a genuine divergence-free PINN. What the physics adds is what the classical method cannot give: calibrated per-node uncertainty (2-sigma coverage ~0.90) and a resolved pressure field from a well-posed solve, a different output class than a one-number Bernoulli estimate. Point accuracy sits at parity with a well-tuned Tikhonov baseline, stated in-app, because replacing classical accuracy was never the goal. Two confirmed, CI-tested autograd advances (spatial and temporal) and three published null results.'
excerptEs: 'Un laboratorio de dos casos en reconstrucción cardiaca con física informada, sobre datos 100% reales medidos, acotado como complemento de los métodos clásicos, no como reemplazo. El caso 1 (ECGi) recupera potenciales de la superficie del corazón desde potenciales de la superficie del cuerpo con mínimos cuadrados regularizados más un prior de grafo y un deep ensemble; el caso 2 (4D-flow) recupera el CAMPO de presión relativa aórtica desde velocidad de MRI con un PINN genuino libre de divergencia. Lo que la física agrega es lo que el método clásico no puede dar: incertidumbre por nodo calibrada (cobertura 2-sigma ~0,90) y un campo de presión resuelto desde un problema bien planteado, una clase de salida distinta a la estimación de un solo número de Bernoulli. La exactitud puntual queda a paridad con una base de Tikhonov bien ajustada, declarado en la app, porque reemplazar la exactitud clásica nunca fue el objetivo. Dos avances por autograd confirmados y testeados en CI (espacial y temporal) y tres resultados nulos publicados.'
icon: tabler:heartbeat
tags: [scientific-ml, physics-informed, pinn, inverse-problems, ecgi, 4d-flow-mri, uncertainty-quantification, tikhonov, null-results, cardiac]
proprietary: false
featured: false
assetPatterns: [cardiopinn]
github: 'https://github.com/fsantibanezleal/CAOS_RES_CardioPINN'
demo: 'https://cardiopinn.fasl-work.com'
website: 'https://cardiopinn.fasl-work.com'

challenge: 'Two clinically valuable cardiac quantities cannot be measured directly: the electrical potential on the surface of the heart, and the pressure field inside the aorta. Both have to be reconstructed from something that can be measured (body-surface electrodes for the first, 4D-flow MRI velocity for the second), and both are ill-posed inverse problems where a plausible-looking answer can be quietly wrong. There is no invasive gold standard to check against on the real data, which is exactly why the problem is interesting and exactly why it is easy to overclaim. The honest question is not "does it produce a reconstruction" but "when should you trust it, and what does the physics add that the classical method cannot give".'
challengeEs: 'Dos cantidades cardiacas de valor clínico no se pueden medir directamente: el potencial eléctrico en la superficie del corazón, y el campo de presión dentro de la aorta. Ambas deben reconstruirse desde algo medible (electrodos en la superficie del cuerpo para la primera, velocidad de MRI 4D-flow para la segunda), y ambas son problemas inversos mal planteados donde una respuesta de apariencia plausible puede estar silenciosamente equivocada. No hay un patrón de oro invasivo con que contrastar sobre los datos reales, que es justamente por qué el problema es interesante y justamente por qué es fácil sobrevender. La pregunta honesta no es "produce una reconstrucción" sino "cuándo deberías confiar en ella, y qué agrega la física que el método clásico no puede dar".'

approach: 'CardioPINN runs two real-data cases and reports what actually happened. Case 1, ECGi, recovers heart-surface potentials from body-surface potentials on EDGAR data (a Utah human torso tank, 192 electrodes to a 256-node cage, and a Maastricht in-situ dog, 140 to 1321 nodes) using zeroth-order Tikhonov regularized least squares as the classical baseline, a graph-Laplacian prior built from the real heart-cage triangulation, and a K=6 deep ensemble over measurement-noise draws that is temperature-recalibrated so its two-sigma band matches the real error. This case contains NO PINN and no torch; it is a regularized linear inverse plus ensemble uncertainty. Case 2, 4D-flow, is the genuine PINN: a divergence-free velocity network (torch) that denoises the measured velocity, a pressure-Poisson solve driven by the network analytic autograd derivatives, and a space-time PINN for the unsteady acceleration, on one real thoracic-aorta 4D-flow MRI scan (47,902 lumen voxels, 16 frames). Everything is computed offline into committed JSON traces that the web reads; no model runs in the browser. Candidate advances are tested on known-answer analytic flows, since the real data has no gold standard, and the results, positive and null, are published.'
approachEs: 'CardioPINN corre dos casos con datos reales y reporta lo que de verdad pasó. El caso 1, ECGi, recupera potenciales de la superficie del corazón desde potenciales de la superficie del cuerpo sobre datos EDGAR (un tanque torso humano de Utah, 192 electrodos a una jaula de 256 nodos, y un perro in-situ de Maastricht, 140 a 1321 nodos) usando mínimos cuadrados regularizados de Tikhonov de orden cero como base clásica, un prior de grafo-Laplaciano construido desde la triangulación real de la jaula cardiaca, y un deep ensemble K=6 sobre sorteos de ruido de medición recalibrado por temperatura para que su banda de dos sigma coincida con el error real. Este caso NO contiene un PINN ni torch; es un inverso lineal regularizado más incertidumbre por ensemble. El caso 2, 4D-flow, es el PINN genuino: una red de velocidad libre de divergencia (torch) que denoisa la velocidad medida, una resolución de presión-Poisson gobernada por las derivadas analíticas por autograd de la red, y un PINN espacio-tiempo para la aceleración no estacionaria, sobre un escaneo real de MRI 4D-flow de aorta torácica (47.902 voxeles de lumen, 16 cuadros). Todo se computa offline en trazas JSON versionadas que la web lee; ningún modelo corre en el navegador. Los avances candidatos se prueban sobre flujos analíticos de respuesta conocida, ya que los datos reales no tienen patrón de oro, y los resultados, positivos y nulos, se publican.'

businessContext: 'The value of an inverse-problem tool in medicine is not a pretty reconstruction, it is a defensible one: a number a clinician can weigh, with an honest uncertainty, and a clear statement of where the method was and was not validated. CardioPINN is scoped as a complement to classical methods where information is partial and confidence-per-node is part of the answer: the ensemble gives a calibrated per-node uncertainty a deterministic estimate cannot, and the PINN lane turns MRI velocity into a resolved relative-pressure field, a different output class than the one-number Bernoulli estimate used clinically. Point accuracy sits at parity with the classical Tikhonov baseline and the app states that, along with its own leakage disclosure, because replacing classical accuracy was never the scorecard.'
businessContextEs: 'El valor de una herramienta de problemas inversos en medicina no es una reconstrucción bonita, es una defendible: un número que un clínico pueda ponderar, con una incertidumbre honesta, y una declaración clara de dónde el método fue y no fue validado. CardioPINN está acotado como complemento de los métodos clásicos donde la información es parcial y la confianza por nodo es parte de la respuesta: el ensemble da una incertidumbre por nodo calibrada que una estimación determinista no puede dar, y la vía PINN convierte velocidad de MRI en un campo de presión relativa resuelto, una clase de salida distinta a la estimación de un solo número de Bernoulli usada clínicamente. La exactitud puntual queda a paridad con la base clásica de Tikhonov y la app lo declara, junto con su propia revelación de fugas, porque reemplazar la exactitud clásica nunca fue el scorecard.'

strategicValue: 'CardioPINN is a correctly-scoped methodological study of physics-informed inverse problems: complement, not replacement. Its narrow-but-real wins are the ones the classical method cannot produce: calibrated per-node uncertainty (2-sigma coverage ~0.90) and a resolved relative-pressure field from a well-posed solve. It confirms two implementation advances on known-answer analytic flows, both CI-tested: spatial analytic-autograd source and flux (0.066 vs 4.19 mmHg drop error, 6 of 6, roughly 63x) and temporal analytic-autograd dv/dt, which holds scale ~1.0 and correlation above 0.99 down to ~6 frames per cycle while 3-frame finite differences lose amplitude by the sinc aliasing law (0.76 at 6 frames, collapsing at 4). And it publishes three real nulls (hard div-free curl refuted 0/6; differentiable coupling no gain; structural UQ calibrated at 0.93 but uninformative), plus a caught-and-re-run round-one confound. The pattern, ground everything in real measured data, test advances on analytic flows, calibrate the uncertainty, report the nulls, transfers to any ill-posed reconstruction problem.'
strategicValueEs: 'CardioPINN es un estudio metodológico correctamente acotado de problemas inversos con física informada: complemento, no reemplazo. Sus ganancias, acotadas pero reales, son las que el método clásico no puede producir: incertidumbre por nodo calibrada (cobertura 2-sigma ~0,90) y un campo de presión relativa resuelto desde un problema bien planteado. Confirma dos avances de implementación sobre flujos analíticos de respuesta conocida, ambos testeados en CI: fuente y flujo espaciales por autograd analítico (0,066 vs 4,19 mmHg de error de caída, 6 de 6, cerca de 63x) y dv/dt temporal por autograd analítico, que mantiene escala ~1,0 y correlación sobre 0,99 hasta ~6 cuadros por ciclo mientras las diferencias finitas de 3 cuadros pierden amplitud por la ley de aliasing sinc (0,76 a 6 cuadros, colapsando a 4). Y publica tres nulos reales (curl libre de divergencia dura refutado 0/6; acoplamiento diferenciable sin ganancia; UQ estructural calibrado en 0,93 pero poco informativo), más un confundido de ronda uno detectado y vuelto a correr. El patrón, fundamentar todo en datos reales medidos, probar los avances sobre flujos analíticos, calibrar la incertidumbre, reportar los nulos, transfiere a cualquier problema de reconstrucción mal planteado.'

kpis:
  - label: 'The right scorecard'
    labelEs: 'El scorecard correcto'
    baseline: 'Judging a physics-informed method by whether it beats classical point accuracy'
    baselineEs: 'Juzgar un método con física informada por si supera la exactitud puntual clásica'
    result: 'Complement, not replacement: calibrated per-node uncertainty (2-sigma ~0.90) and a resolved pressure field, outputs the classical method cannot give; point accuracy at parity with Tikhonov, stated in-app'
    resultEs: 'Complemento, no reemplazo: incertidumbre por nodo calibrada (2-sigma ~0,90) y un campo de presión resuelto, salidas que el método clásico no puede dar; exactitud puntual a paridad con Tikhonov, declarado en la app'
    impact: 'A different output class (field + confidence), not an inflated accuracy claim'
    impactEs: 'Una clase de salida distinta (campo + confianza), no un reclamo de exactitud inflado'
  - label: 'Two confirmed, tested advances'
    labelEs: 'Dos avances confirmados y testeados'
    baseline: 'Finite differences: inflated pressure drop at the lumen edge (spatial) and amplitude loss by sinc aliasing at low frame rates (temporal, 0.76 at 6 frames per cycle, collapsing at 4)'
    baselineEs: 'Diferencias finitas: caída de presión inflada en el borde del lumen (espacial) y pérdida de amplitud por aliasing sinc a bajas tasas de cuadros (temporal, 0,76 a 6 cuadros por ciclo, colapsando a 4)'
    result: 'Analytic autograd, spatial: 0.066 vs 4.19 mmHg drop error, 6 of 6, roughly 63x. Analytic autograd, temporal (dv/dt): scale ~1.0 and correlation above 0.99 down to ~6 frames per cycle'
    resultEs: 'Autograd analítico, espacial: 0,066 vs 4,19 mmHg de error de caída, 6 de 6, cerca de 63x. Autograd analítico, temporal (dv/dt): escala ~1,0 y correlación sobre 0,99 hasta ~6 cuadros por ciclo'
    impact: 'Both confirmed on known-answer analytic flows and CI-tested, as method properties, with no clinical claim'
    impactEs: 'Ambos confirmados sobre flujos analíticos de respuesta conocida y testeados en CI, como propiedades del método, sin reclamo clínico'
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
  - label: 'Positioning stated in-app'
    labelEs: 'Posicionamiento declarado en la app'
    value: 'Complement, not replacement: point accuracy at parity with Tikhonov (the headline RE/CC are the baseline numbers, disclosed); the gains are the calibrated UQ and the resolved field; oracle-best-lambda selection disclosed; not clinically deployed'
    valueEs: 'Complemento, no reemplazo: exactitud puntual a paridad con Tikhonov (los RE/CC de portada son los números de la base, revelado); las ganancias son la UQ calibrada y el campo resuelto; selección de lambda-óptimo-oráculo revelada; no desplegado clínicamente'
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

## Complement, not replacement

CardioPINN is a two-case lab in **physics-informed cardiac reconstruction**, run entirely on **real measured data**, and scoped as a **complement to classical methods**, not a replacement: it targets what the classical estimate cannot give, a calibrated confidence per node and a resolved field, where information is partial and confidence is part of the answer. It recovers cardiac quantities that cannot be measured (heart-surface potentials; the aortic relative-pressure field) from quantities that can (body-surface potentials; 4D-flow MRI velocity), bakes the physics offline into committed JSON traces, and the web replays them. Live at [cardiopinn.fasl-work.com](https://cardiopinn.fasl-work.com).

## Two cases, and only one of them is a PINN

- **Case 1, ECGi, is not a PINN.** It recovers heart-surface potentials with **zeroth-order Tikhonov** regularized least squares (the classical baseline, closed form per frame), a **graph-Laplacian prior** from the real heart-cage triangulation, and a **K=6 deep ensemble** over measurement-noise draws, temperature-recalibrated. It is NumPy/SciPy, no torch: a regularized linear inverse plus ensemble uncertainty. Real EDGAR data (Utah human torso tank, 192 to 256 electrodes; Maastricht in-situ dog, 140 to 1321 nodes), four beats.
- **Case 2, 4D-flow, is the genuine PINN.** A **divergence-free velocity network** (torch) denoises the measured velocity, a **pressure-Poisson** solve is driven by the network's **analytic autograd derivatives**, and a **space-time PINN** recovers the unsteady acceleration, on one real thoracic-aorta 4D-flow MRI scan (47,902 lumen voxels, 16 frames).

The product name implies a PINN across both cases; half of it (the ECGi case) has none, and the app is written to make that clear rather than to paper over it.

## What the physics adds (and what it does not)

Replacing classical point accuracy was never the goal, and the app says so: on all four beats, point accuracy sits at **parity with a well-tuned Tikhonov baseline** (the headline relative-error and correlation numbers are the baseline's, disclosed in-app, including the oracle-best-lambda selection). What the physics-informed lane adds is what the deterministic estimate structurally cannot: a **calibrated per-node uncertainty** (two-sigma reliability **0.89-0.90** across all four beats), so a clinician sees not just a reconstruction but where to trust it, and on the 4D-flow side a **resolved relative-pressure field** from a well-posed solve, a different output class than the one-number Bernoulli estimate used clinically. Narrow wins, but real ones, on the right scorecard.

## Two confirmed advances, and the nulls, published

Candidate advances are tested on known-answer analytic flows, because the real data has no invasive gold standard, and the nulls are published, not hidden:

- **Confirmed, spatial (shipped, CI-tested):** analytic-autograd source and flux versus finite differences on a converging duct: median pressure-drop error **0.066 mmHg** (analytic) versus **4.19 mmHg** (FD), winning **6 of 6** configurations, roughly **63x**.
- **Confirmed, temporal (CI-tested):** analytic-autograd **dv/dt** holds scale **~1.0** and correlation **above 0.99** down to **~6 frames per cycle**, while 3-frame finite differences lose amplitude by the sinc aliasing law (**0.76** at 6 frames, collapsing at 4). The temporal analog of the spatial win, confirmed on analytic flows, as a method property, with no clinical claim.
- **Null:** a hard divergence-free construction (velocity as the curl of a potential) was hypothesized to help pressure and was **refuted**, pressure got worse and it won pressure **0 of 6**.
- **Null:** a differentiable denoiser-solver coupling reproduced the direct solve exactly but gave **no gain**.
- **Null:** a structural-perturbation uncertainty field was **calibrated (0.93 coverage)** but uninformative on a clean lumen.

A round-one methodological confound (an FD pressure solve masking all differences) was **caught and re-run** on the analytic path, and recorded rather than hidden.

## Honest scope

The recovered aortic relative-pressure range (**0.79 mmHg**, alongside a **2.3x** divergence reduction on the real scan) is **physiological and plausible, not validated**: there is no invasive gold standard, which is the entire reason the method exists. The cohort is tiny (four beats, one MRI scan), the EDGAR raw data is not redistributed under its use agreement, and datasets that failed inspection (a rank-deficient partial sock, a simulation mislabelled as measurement, an unreadable BEM) were **excluded and the reasons recorded**. It is **not clinically deployed**.

[Live demo](https://cardiopinn.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RES_CardioPINN)
