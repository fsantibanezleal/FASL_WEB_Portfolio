---
title: 'TailWatch — InSAR Ground-Deformation Studio for Tailings Dams & Slopes'
titleEs: 'TailWatch — Estudio de Deformación de Terreno con InSAR para Tranques de Relaves y Taludes'
slug: tailwatch
date: 2026-07-08
category: geotechnical
family: faena
excerpt: 'An in-browser InSAR ground-deformation studio for tailings dams and slopes. It renders a multi-temporal LOS-displacement cube (velocity, coherence, cumulative series) and runs classical velocity and inverse-velocity failure forecasting plus two small neural nets over it. Five cases are physics-simulated from a forward model; one is a real Sentinel-1 sample. Honest by design: on the held-out benchmark the classical velocity map (AUC 0.968) beats the learned anomaly autoencoder (AUC 0.898), and the app says so.'
excerptEs: 'Un estudio de deformación de terreno con InSAR en el navegador para tranques de relaves y taludes. Renderiza un cubo multi-temporal de desplazamiento LOS (velocidad, coherencia, serie acumulada) y corre pronóstico de falla por velocidad y velocidad inversa clásicos, más dos redes neuronales pequeñas encima. Cinco casos son simulados por física desde un modelo directo; uno es una muestra real de Sentinel-1. Honesto por diseño: en el benchmark held-out el mapa de velocidad clásico (AUC 0,968) supera al autoencoder de anomalía aprendido (AUC 0,898), y la app lo dice.'
icon: tabler:mountain
tags: [geotechnical, insar, ground-deformation, tailings-dam, slope-stability, inverse-velocity, forecasting, conformal-prediction, onnx, sentinel-1, mining]
proprietary: false
featured: false
assetPatterns: [tailwatch]
github: 'https://github.com/fsantibanezleal/CAOS_TailWatch'
demo: 'https://tailwatch.fasl-work.com'
website: 'https://tailwatch.fasl-work.com'

challenge: 'A tailings dam or a pit slope that is about to fail usually announces it in the ground first: millimetres of accelerating displacement over weeks. Satellite InSAR can see that motion without a single sensor on site, but the raw stack is noisy (atmosphere, DEM error, orbital ramps, decorrelation) and the useful questions are hard: which pixels are moving significantly, is the motion accelerating toward a collapse, and when. A single black-box alarm number does not survive a geotechnical review; the honest answer has to show its uncertainty and admit where a learned model is guessing.'
challengeEs: 'Un tranque de relaves o un talud de rajo que está por fallar lo anuncia primero en el terreno: milímetros de desplazamiento acelerado a lo largo de semanas. El InSAR satelital puede ver ese movimiento sin un solo sensor en terreno, pero la pila cruda es ruidosa (atmósfera, error de DEM, rampas orbitales, decorrelación) y las preguntas útiles son difíciles: qué píxeles se mueven de forma significativa, si el movimiento acelera hacia un colapso, y cuándo. Un único número de alarma de caja negra no sobrevive una revisión geotécnica; la respuesta honesta tiene que mostrar su incertidumbre y admitir dónde un modelo aprendido está adivinando.'

approach: 'TailWatch is a browser studio built around a line-of-sight displacement cube (160x120 grid, 60 epochs, 12-day cadence). On the selected case it runs a classical tier and a learned tier live. Classical: per-pixel OLS velocity with a slope t-statistic significance test, two-geometry LOS decomposition into Up and East where both look directions exist, and a Fukuzono inverse-velocity time-of-failure forecaster with EWMA smoothing, onset-of-acceleration detection and an r-squared gate. On top of the forecaster sits a split-conformal prediction interval (Vovk) on the failure time, calibrated per lead-time bucket on a Monte-Carlo bank and validated on a disjoint held-out set. Learned: a 1-D CNN time-series classifier (six deformation classes) runs live in the browser on every clicked pixel via onnxruntime-web, and a denoising conv-autoencoder trained on normal-only patches gives an unsupervised anomaly map. Five cases come from a physically-grounded forward model (true 3-D motion projected on real Sentinel-1 look geometry, with stratified and turbulent atmosphere, DEM-error, orbital ramp and coherence-driven noise); one case is a real Sentinel-1 clip. Everything is client-side, static on GitHub Pages.'
approachEs: 'TailWatch es un estudio de navegador construido en torno a un cubo de desplazamiento en línea de vista (grilla de 160x120, 60 épocas, cadencia de 12 días). Sobre el caso seleccionado corre una capa clásica y una capa aprendida en vivo. Clásico: velocidad OLS por píxel con test de significancia por t-estadístico de la pendiente, descomposición LOS de dos geometrías en Up y East donde existen ambas direcciones de vista, y un pronóstico de tiempo de falla por velocidad inversa de Fukuzono con suavizado EWMA, detección de inicio de aceleración y una compuerta de r-cuadrado. Sobre el pronóstico se apoya un intervalo de predicción conforme split (Vovk) sobre el tiempo de falla, calibrado por banda de lead-time sobre un banco Monte-Carlo y validado sobre un conjunto held-out disjunto. Aprendido: un clasificador de series de tiempo CNN 1-D (seis clases de deformación) corre en vivo en el navegador en cada píxel que se hace clic vía onnxruntime-web, y un autoencoder convolucional de denoising entrenado sobre parches normales entrega un mapa de anomalía no supervisado. Cinco casos vienen de un modelo directo con base física (movimiento 3-D real proyectado sobre geometría de vista real de Sentinel-1, con atmósfera estratificada y turbulenta, error de DEM, rampa orbital y ruido por decorrelación); un caso es un clip real de Sentinel-1. Todo del lado del cliente, estático en GitHub Pages.'

businessContext: 'A tailings-dam breach is among the highest-consequence failures in mining, and slope failure in an active pit stops production and endangers people. InSAR-based deformation monitoring exists to catch the pre-failure acceleration weeks ahead and convert it into a controlled response. The value here is a forecast a geotechnical engineer can actually defend: an inverse-velocity time-of-failure with a calibrated uncertainty band, significance-tested velocity so noise is not read as motion, and an explicit statement of where the learned models can and cannot be trusted, rather than a single alarm that hides its own confidence.'
businessContextEs: 'La rotura de un tranque de relaves está entre las fallas de mayor consecuencia en minería, y la falla de talud en un rajo activo detiene la producción y pone en riesgo a personas. El monitoreo de deformación basado en InSAR existe para atrapar la aceleración previa a la falla con semanas de anticipación y convertirla en una respuesta controlada. El valor acá es un pronóstico que un ingeniero geotécnico pueda defender de verdad: un tiempo de falla por velocidad inversa con banda de incertidumbre calibrada, velocidad con test de significancia para que el ruido no se lea como movimiento, y una declaración explícita de dónde se puede y no se puede confiar en los modelos aprendidos, en vez de una sola alarma que esconde su propia confianza.'
strategicValue: 'TailWatch demonstrates a full InSAR forecasting stack running entirely client-side, and it publishes its own honest limits rather than a flattering headline. On the held-out benchmark the training-free classical velocity map reaches AUC 0.968 while the learned anomaly autoencoder reaches only 0.898: the classical baseline beats the neural net, and the Benchmark page states it. The inverse-velocity forecaster hits 5.7 percent median time-of-failure error with zero false alarms over 60 control scenes, and the split-conformal interval reaches 0.892 empirical coverage against a 0.900 nominal on a disjoint set. It is not calibrated to any real dam and it is not real-time; the single real sample is a Sentinel-1 clip over the Campi Flegrei volcanic caldera used as a domain-transfer probe, labelled as such. That discipline, publishing where the model loses, is the reusable pattern.'
strategicValueEs: 'TailWatch demuestra un stack completo de pronóstico InSAR corriendo enteramente del lado del cliente, y publica sus propios límites honestos en vez de un titular favorecedor. En el benchmark held-out el mapa de velocidad clásico sin entrenamiento alcanza AUC 0,968 mientras el autoencoder de anomalía aprendido alcanza solo 0,898: la base clásica supera a la red neuronal, y la página de Benchmark lo declara. El pronóstico de velocidad inversa logra 5,7 por ciento de error mediano en tiempo de falla con cero falsas alarmas sobre 60 escenas de control, y el intervalo conforme split alcanza 0,892 de cobertura empírica contra un 0,900 nominal sobre un conjunto disjunto. No está calibrado a ningún tranque real y no es tiempo real; la única muestra real es un clip de Sentinel-1 sobre la caldera volcánica de Campi Flegrei usado como sonda de transferencia de dominio, etiquetado como tal. Esa disciplina, publicar dónde pierde el modelo, es el patrón reutilizable.'

kpis:
  - label: 'Forecast honesty'
    labelEs: 'Honestidad del pronóstico'
    baseline: 'A single black-box alarm number'
    baselineEs: 'Un único número de alarma de caja negra'
    result: 'Inverse-velocity time-of-failure with a split-conformal band: 0.892 coverage vs 0.900 nominal on a disjoint held-out set'
    resultEs: 'Tiempo de falla por velocidad inversa con banda conforme split: 0,892 de cobertura vs 0,900 nominal en un held-out disjunto'
    impact: 'A forecast a geotechnical review can defend, with its own uncertainty'
    impactEs: 'Un pronóstico que una revisión geotécnica puede defender, con su propia incertidumbre'
  - label: 'Classical vs learned, reported openly'
    labelEs: 'Clásico vs aprendido, reportado abiertamente'
    baseline: 'Headline neural-net accuracy'
    baselineEs: 'Accuracy titular de la red neuronal'
    result: 'Held-out AUC: classical |v| 0.968 BEATS the learned AE anomaly 0.898'
    resultEs: 'AUC held-out: |v| clásico 0,968 SUPERA al AE de anomalía aprendido 0,898'
    impact: 'You see where the model loses, published on the Benchmark page'
    impactEs: 'Ves dónde pierde el modelo, publicado en la página de Benchmark'
  - label: 'Forecaster reliability'
    labelEs: 'Confiabilidad del pronosticador'
    baseline: 'Threshold on raw displacement'
    baselineEs: 'Umbral sobre desplazamiento crudo'
    result: '5.7% median time-of-failure error, 0 false alarms over 60 control scenes (stable / linear / seasonal)'
    resultEs: '5,7% de error mediano en tiempo de falla, 0 falsas alarmas sobre 60 escenas de control (estable / lineal / estacional)'
    impact: 'Detects the acceleration without crying wolf on stable ground'
    impactEs: 'Detecta la aceleración sin gritar lobo sobre terreno estable'
  - label: 'Compute'
    labelEs: 'Cómputo'
    baseline: 'Server / GPU InSAR processing service'
    baselineEs: 'Servicio de procesamiento InSAR en servidor / GPU'
    result: '100% client-side: TypeScript DSP + two ONNX models (1-D CNN classifier live per clicked pixel)'
    resultEs: '100% del lado del cliente: DSP en TypeScript + dos modelos ONNX (clasificador CNN 1-D en vivo por píxel)'
    impact: 'Static hosting, nothing to install, zero backend'
    impactEs: 'Hosting estático, nada que instalar, cero backend'

metrics:
  - label: 'Cases'
    labelEs: 'Casos'
    value: '5 physics-simulated (forward model, invented dam/pit) + 1 real Sentinel-1 sample'
    valueEs: '5 simulados por física (modelo directo, tranque/rajo inventado) + 1 muestra real de Sentinel-1'
  - label: 'Real sample'
    labelEs: 'Muestra real'
    value: 'COMET LiCSAR / LiCSBAS Sentinel-1 frame 124D_04854_171313, Campi Flegrei caldera, 40 epochs (a volcano, used as a domain-transfer probe, not a dam)'
    valueEs: 'Frame Sentinel-1 COMET LiCSAR / LiCSBAS 124D_04854_171313, caldera de Campi Flegrei, 40 épocas (un volcán, usado como sonda de transferencia de dominio, no un tranque)'
  - label: 'Classical tier'
    labelEs: 'Capa clásica'
    value: 'Per-pixel OLS velocity + slope t-test significance · two-geometry Up/East decomposition · Fukuzono inverse-velocity forecast + split-conformal intervals'
    valueEs: 'Velocidad OLS por píxel + significancia por t-test de pendiente · descomposición Up/East de dos geometrías · pronóstico de velocidad inversa de Fukuzono + intervalos conformes split'
  - label: 'Learned tier (ONNX)'
    labelEs: 'Capa aprendida (ONNX)'
    value: '1-D CNN 6-class time-series classifier (live per clicked pixel) · denoising conv-AE anomaly map (baked); held-out CNN macro-F1 0.556, reported not hidden'
    valueEs: 'Clasificador CNN 1-D de series de 6 clases (en vivo por píxel) · mapa de anomalía conv-AE de denoising (precomputado); macro-F1 held-out del CNN 0,556, reportado no escondido'
  - label: 'Held-out benchmark'
    labelEs: 'Benchmark held-out'
    value: 'Classical |v| AUC 0.968 vs learned AE anomaly AUC 0.898 (classical wins); conformal coverage 0.892 vs 0.900 nominal'
    valueEs: 'AUC |v| clásico 0,968 vs AUC AE de anomalía aprendido 0,898 (gana el clásico); cobertura conforme 0,892 vs 0,900 nominal'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: '100% in-browser: TypeScript DSP + onnxruntime-web; static GitHub Pages, no backend'
    valueEs: '100% en navegador: DSP en TypeScript + onnxruntime-web; GitHub Pages estático, sin backend'

stack: [TypeScript, React, Vite, DSP, ONNX, onnxruntime-web, PyTorch, uPlot, KaTeX]
---

## From a noisy InSAR stack to a defensible time-of-failure

TailWatch is an in-browser **InSAR ground-deformation studio** for tailings dams and slopes. It renders a multi-temporal line-of-sight displacement cube (velocity, coherence, cumulative series) and runs classical failure forecasting plus two small neural nets over it. Live at [tailwatch.fasl-work.com](https://tailwatch.fasl-work.com), part of the [Faena](https://faena.fasl-work.com) mining-analytics hub.

## What runs on the selected case

- **Classical tier** (training-free): per-pixel OLS velocity with a slope t-statistic significance test, two-geometry LOS decomposition into Up and East where both look directions exist, and a Fukuzono inverse-velocity time-of-failure forecaster (EWMA velocity, onset-of-acceleration detection, r-squared gate). A **split-conformal** prediction interval (Vovk) wraps the failure time, calibrated per lead-time bucket and validated on a **disjoint** held-out set.
- **Learned tier** (ONNX, in-browser): a 1-D CNN six-class time-series classifier runs **live on every clicked pixel**, and a denoising conv-autoencoder trained on normal-only patches produces an unsupervised anomaly map.

## The data, stated plainly

Five of six cases are **simulated** from a physically-grounded forward model: true 3-D motion projected on real Sentinel-1 look geometry (C-band, 12-day repeat), plus stratified and turbulent atmosphere, DEM-error, orbital ramp and coherence-driven decorrelation. Every error term is a real InSAR error source, but the dam, the pit and the collapse are **invented**. One case is **real**: a COMET LiCSAR / LiCSBAS Sentinel-1 clip over the **Campi Flegrei caldera** (Lazecky et al. 2020; Morishita et al. 2020). That is a **volcano, not a tailings dam**: it is used as a domain-transfer probe, and the repo says so. On the real case the learned outputs are cross-domain synthetic-trained, not ground truth, and the collapse-time forecast there is illustrative only.

## The honest benchmark

On a held-out split (train scenes 1-16, held out 17-20, split by scene) the **classical velocity map beats the learned anomaly detector**: |v| **AUC 0.968** vs the AE anomaly **AUC 0.898**, and the Benchmark page reports it rather than hiding it. The inverse-velocity forecaster reaches **5.7% median time-of-failure error** with **0 false alarms over 60 control scenes**, and the split-conformal interval reaches **0.892 empirical coverage** against a 0.900 nominal. TailWatch is **not** calibrated to a real dam, **not** a real-time ingest system, and makes **no** full SBAS network-inversion or map-fused-alarm claim.

[Live demo](https://tailwatch.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_TailWatch)
