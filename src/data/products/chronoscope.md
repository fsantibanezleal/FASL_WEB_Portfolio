---
title: 'ChronoScope — Univariate Forecasting Atlas with a Foundation-Model Tier'
titleEs: 'ChronoScope — Atlas de Pronóstico Univariado con una Capa de Modelos Fundacionales'
slug: chronoscope
date: 2026-07-15
category: scientific-ml
family: labs
excerpt: 'A univariate time-series forecasting atlas: 15 diagnostic cases (4 real, licensed + 11 seeded synthetic), each forecast by the same 19-method ladder with backtested MASE/sMAPE/coverage, from classical baselines through ML and deep nets to four zero-shot foundation models (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2). A 10-module statistical analysis suite runs alongside. Everything is baked offline and replayed in a static SPA; a Pyodide live lane forecasts a bring-your-own-series with a numpy core. Honest by design: the foundation models are offline-only, and on real M4-hourly a plain SeasonalNaive beats TimesFM-2.5.'
excerptEs: 'Un atlas de pronóstico univariado de series de tiempo: 15 casos de diagnóstico (4 reales, licenciados + 11 sintéticos con semilla), cada uno pronosticado por la misma escalera de 19 métodos con MASE/sMAPE/cobertura por backtesting, desde baselines clásicos hasta ML, redes profundas y cuatro modelos fundacionales zero-shot (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2). Corre en paralelo una suite de análisis estadístico de 10 módulos. Todo se precalcula offline y se reproduce en una SPA estática; una vía en vivo con Pyodide pronostica una serie propia con un núcleo numpy. Honesto por diseño: los modelos fundacionales son solo offline, y en M4-hourly real un SeasonalNaive simple le gana a TimesFM-2.5.'
icon: tabler:chart-histogram
tags: [scientific-ml, time-series, forecasting, foundation-models, chronos, timesfm, tirex, statsforecast, onnx, pyodide, benchmark]
proprietary: false
featured: false
assetPatterns: [chronoscope]
github: 'https://github.com/fsantibanezleal/CAOS_RES_ChronoScope'
demo: 'https://chronoscope.fasl-work.com'
website: 'https://chronoscope.fasl-work.com'

challenge: 'Univariate forecasting has a crowded method space (exponential smoothing, ARIMA, gradient boosting, deep nets, and now pretrained time-series foundation models) and a marketing problem: each new tier arrives claimed as a general winner. The useful questions are quieter. On which kind of series does a given method actually help, is a pretrained foundation model worth its cost against a one-line seasonal baseline, and is the prediction interval it reports anywhere near its nominal coverage. Most demos answer none of these because they run one method on one flattering series.'
challengeEs: 'El pronóstico univariado tiene un espacio de métodos saturado (suavizamiento exponencial, ARIMA, gradient boosting, redes profundas y ahora modelos fundacionales de series de tiempo preentrenados) y un problema de marketing: cada nueva capa llega presentada como ganadora general. Las preguntas útiles son más silenciosas. Sobre qué tipo de serie ayuda de verdad un método dado, si un modelo fundacional preentrenado vale su costo frente a un baseline estacional de una línea, y si el intervalo de predicción que reporta se acerca a su cobertura nominal. La mayoría de las demos no responde ninguna porque corre un método sobre una serie favorecedora.'

approach: 'ChronoScope fixes the axis and varies the method. Fifteen diagnostic cases each isolate one time-series behaviour: four are real and licensed (UCI Electricity, UCI Beijing PM2.5, Monash/M4 hourly and daily, all CC-BY-4.0), eleven are seeded, deterministic synthetics with their own generators (seasonal, trend, intermittent demand, random walk, white-noise control, level shift, GARCH volatility, fractional memory, chaotic Mackey-Glass, exogenous promo). Every case is forecast by the same 19-method ladder: eight classical/statistical (SeasonalNaive, SES, Holt, HoltWinters, Theta, AutoETS, AutoTheta, AutoARIMA), one ML (LightGBM), six deep (NHITS, DLinear, NLinear via neuralforecast and an in-house engine), and four zero-shot foundation models (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2, the last via a purpose-built cross-OS WSL2/CUDA lane because its dependencies have no Windows wheels). Each method-case pair carries backtested MASE, sMAPE and interval coverage, plus a 10-module statistical analysis suite (stationarity, autocorrelation, seasonality, filters, changepoints, volatility, distribution, fractal, nonlinear, causality). The heavy work is offline and committed; the SPA replays it, and a Pyodide worker forecasts a user-pasted series with a pure-numpy core.'
approachEs: 'ChronoScope fija el eje y varía el método. Quince casos de diagnóstico aíslan cada uno un comportamiento de serie de tiempo: cuatro son reales y licenciados (UCI Electricity, UCI Beijing PM2.5, Monash/M4 hourly y daily, todos CC-BY-4.0), once son sintéticos deterministas con semilla y generadores propios (estacional, tendencia, demanda intermitente, camino aleatorio, control de ruido blanco, cambio de nivel, volatilidad GARCH, memoria fraccional, Mackey-Glass caótico, promo exógena). Cada caso se pronostica con la misma escalera de 19 métodos: ocho clásicos/estadísticos (SeasonalNaive, SES, Holt, HoltWinters, Theta, AutoETS, AutoTheta, AutoARIMA), uno de ML (LightGBM), seis profundos (NHITS, DLinear, NLinear vía neuralforecast y un motor propio), y cuatro modelos fundacionales zero-shot (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2, este último vía una vía WSL2/CUDA cross-OS hecha a medida porque sus dependencias no tienen wheels de Windows). Cada par método-caso lleva MASE, sMAPE y cobertura de intervalo por backtesting, más una suite de análisis estadístico de 10 módulos (estacionariedad, autocorrelación, estacionalidad, filtros, changepoints, volatilidad, distribución, fractal, no lineal, causalidad). El trabajo pesado es offline y queda commiteado; la SPA lo reproduce, y un worker Pyodide pronostica una serie pegada por el usuario con un núcleo numpy puro.'

businessContext: 'Anyone who has to pick a forecasting method for a real signal (load, demand, air quality, a sensor stream) faces the same trap: adopt the newest tier because it is newest, or stay with a baseline out of habit, with no evidence for either on the series in front of them. ChronoScope is the evidence. It shows, per behaviour type, where each tier earns its complexity and where it does not, so the choice is made against backtested error and calibrated coverage rather than a vendor claim. It also carries a licence-gated data provenance registry: non-redistributable sources can run in the private pipeline but a testable export guard stops their derived artifacts from ever leaking into the public repo.'
businessContextEs: 'Cualquiera que deba elegir un método de pronóstico para una señal real (carga, demanda, calidad de aire, un flujo de sensor) enfrenta la misma trampa: adoptar la capa más nueva por ser la más nueva, o quedarse con un baseline por costumbre, sin evidencia para ninguna sobre la serie que tiene delante. ChronoScope es esa evidencia. Muestra, por tipo de comportamiento, dónde cada capa justifica su complejidad y dónde no, para que la elección se haga contra error por backtesting y cobertura calibrada en vez de una promesa de proveedor. También lleva un registro de procedencia de datos con control de licencia: las fuentes no redistribuibles pueden correr en el pipeline privado pero una guarda de exportación testeable impide que sus artefactos derivados se filtren al repo público.'

strategicValue: 'The differentiator is real licensed data plus published limit results, not a leaderboard. The foundation-model tier genuinely runs (four models, zero-shot from local checkpoints, including a hard cross-OS lane for TiRex-2), and its best real-case result is strong: MASE 0.476 (TiRex-2 on M4-hourly) against 0.641 for SeasonalNaive. But ChronoScope refuses the blanket claim: on that same real case a one-line SeasonalNaive (0.641) beats TimesFM-2.5 (0.729), and dedicated white-noise and random-walk cases exist precisely as honesty controls where no method should win. Interval coverage is reported next to point error, exposing deep methods whose 80%-nominal bands cover far less. The foundation models are offline-only; the live browser lane is the numpy core, and the card says so. It is a reusable pattern for method selection made on backtested evidence with the negative results left in.'
strategicValueEs: 'El diferenciador es dato real licenciado más resultados de límite publicados, no un ranking. La capa de modelos fundacionales corre de verdad (cuatro modelos, zero-shot desde checkpoints locales, incluyendo una vía cross-OS difícil para TiRex-2), y su mejor resultado en caso real es fuerte: MASE 0.476 (TiRex-2 en M4-hourly) contra 0.641 de SeasonalNaive. Pero ChronoScope rechaza la afirmación general: en ese mismo caso real un SeasonalNaive de una línea (0.641) le gana a TimesFM-2.5 (0.729), y existen casos dedicados de ruido blanco y camino aleatorio justo como controles de honestidad donde ningún método debería ganar. La cobertura del intervalo se reporta junto al error puntual, exponiendo métodos profundos cuyas bandas de 80% nominal cubren mucho menos. Los modelos fundacionales son solo offline; la vía en vivo del navegador es el núcleo numpy, y la ficha lo dice. Es un patrón reutilizable para selección de métodos hecha sobre evidencia por backtesting con los resultados negativos incluidos.'

kpis:
  - label: 'Coverage of the method space'
    labelEs: 'Cobertura del espacio de métodos'
    baseline: 'One method on one flattering series'
    baselineEs: 'Un método sobre una serie favorecedora'
    result: '19-method ladder across 15 diagnostic cases (285 method-case backtests), classical to ML to deep to 4 foundation models'
    resultEs: 'Escalera de 19 métodos sobre 15 casos de diagnóstico (285 backtests método-caso), de clásico a ML, a profundo, a 4 modelos fundacionales'
    impact: 'See per-behaviour where each tier earns its complexity'
    impactEs: 'Ver por comportamiento dónde cada capa justifica su complejidad'
  - label: 'Foundation models, run not claimed'
    labelEs: 'Modelos fundacionales, corridos no prometidos'
    baseline: 'A pinned dependency nobody executes'
    baselineEs: 'Una dependencia fijada que nadie ejecuta'
    result: '4 zero-shot FMs baked for all 15 cases (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2); TiRex-2 via a cross-OS WSL2/CUDA lane'
    resultEs: '4 FMs zero-shot precalculados para los 15 casos (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2); TiRex-2 vía una vía WSL2/CUDA cross-OS'
    impact: 'Offline-only; the live browser lane is the numpy core'
    impactEs: 'Solo offline; la vía en vivo del navegador es el núcleo numpy'
  - label: 'Best real-case accuracy'
    labelEs: 'Mejor accuracy en caso real'
    baseline: 'SeasonalNaive MASE 0.641 (M4-hourly)'
    baselineEs: 'SeasonalNaive MASE 0.641 (M4-hourly)'
    result: 'TiRex-2 MASE 0.476 on real M4-hourly (backtested)'
    resultEs: 'TiRex-2 MASE 0.476 en M4-hourly real (por backtesting)'
    impact: 'A real gain, on a licensed real series, not a synthetic one'
    impactEs: 'Una ganancia real, sobre una serie real licenciada, no sintética'
  - label: 'Honesty controls'
    labelEs: 'Controles de honestidad'
    baseline: '"Newest tier always wins"'
    baselineEs: '"La capa más nueva siempre gana"'
    result: 'SeasonalNaive 0.641 beats TimesFM-2.5 0.729 on the same case; white-noise + random-walk null cases baked in'
    resultEs: 'SeasonalNaive 0.641 le gana a TimesFM-2.5 0.729 en el mismo caso; casos nulos de ruido blanco + camino aleatorio incluidos'
    impact: 'The foundation tier is not a blanket win, and the app shows it'
    impactEs: 'La capa fundacional no es una victoria general, y la app lo muestra'

metrics:
  - label: 'Cases'
    labelEs: 'Casos'
    value: '15 diagnostic cases: 4 real licensed (UCI Electricity, UCI Beijing PM2.5, Monash/M4 hourly + daily, CC-BY-4.0) + 11 seeded synthetic (seasonal, trend, intermittent, random walk, white-noise control, level shift, GARCH, fractional, Mackey-Glass, exogenous)'
    valueEs: '15 casos de diagnóstico: 4 reales licenciados (UCI Electricity, UCI Beijing PM2.5, Monash/M4 hourly + daily, CC-BY-4.0) + 11 sintéticos con semilla (estacional, tendencia, intermitente, camino aleatorio, control de ruido blanco, cambio de nivel, GARCH, fraccional, Mackey-Glass, exógeno)'
  - label: 'Method ladder'
    labelEs: 'Escalera de métodos'
    value: '8 classical (SeasonalNaive, SES, Holt, HoltWinters, Theta, AutoETS, AutoTheta, AutoARIMA) · 1 ML (LightGBM) · 6 deep (NHITS, DLinear, NLinear) · 4 foundation (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2)'
    valueEs: '8 clásicos (SeasonalNaive, SES, Holt, HoltWinters, Theta, AutoETS, AutoTheta, AutoARIMA) · 1 ML (LightGBM) · 6 profundos (NHITS, DLinear, NLinear) · 4 fundacionales (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2)'
  - label: 'Benchmark (real)'
    labelEs: 'Benchmark (real)'
    value: 'Backtested MASE on real M4-hourly: TiRex-2 0.476 (best) · Chronos-2 0.589 · SeasonalNaive 0.641 · TimesFM-2.5 0.729. FM backtest windows are capped for speed, so the FM tier rests on fewer windows than the classical tier'
    valueEs: 'MASE por backtesting en M4-hourly real: TiRex-2 0.476 (mejor) · Chronos-2 0.589 · SeasonalNaive 0.641 · TimesFM-2.5 0.729. Las ventanas de backtesting de los FM están acotadas por velocidad, así que la capa FM se apoya en menos ventanas que la clásica'
  - label: 'Analysis suite'
    labelEs: 'Suite de análisis'
    value: '10 modules: stationarity, autocorrelation, seasonality, filters (HP/CF/EMD/scalogram), changepoints (PELT/CUSUM/Markov), volatility (ARCH-LM/GARCH), distribution (KDE/QQ/catch22), fractal (Hurst/ARFIMA), nonlinear, causality'
    valueEs: '10 módulos: estacionariedad, autocorrelación, estacionalidad, filtros (HP/CF/EMD/scalograma), changepoints (PELT/CUSUM/Markov), volatilidad (ARCH-LM/GARCH), distribución (KDE/QQ/catch22), fractal (Hurst/ARFIMA), no lineal, causalidad'
  - label: 'Data governance'
    labelEs: 'Gobernanza de datos'
    value: 'Licence-gated provenance registry with an enforced export guard: non-redistributable sources (M5, Stooq) run locally but cannot leak derived artifacts into the public repo. 163 Python tests, 56 docs pages'
    valueEs: 'Registro de procedencia con control de licencia y guarda de exportación forzada: fuentes no redistribuibles (M5, Stooq) corren localmente pero no pueden filtrar artefactos derivados al repo público. 163 tests Python, 56 páginas de docs'
  - label: 'Compute'
    labelEs: 'Cómputo'
    value: 'Offline lane bakes all numbers (Python, seeded, GPU + a WSL2 sub-lane for TiRex-2); the SPA replays them. Live lane: a Pyodide numpy core forecasts a user series in the browser (no foundation models in the browser). Static on GitHub Pages'
    valueEs: 'La vía offline precalcula todos los números (Python, con semilla, GPU + una sub-vía WSL2 para TiRex-2); la SPA los reproduce. Vía en vivo: un núcleo numpy en Pyodide pronostica una serie del usuario en el navegador (sin modelos fundacionales en el navegador). Estático en GitHub Pages'

stack: [Python, statsforecast, neuralforecast, LightGBM, Chronos, TimesFM, TiRex, Pyodide, TypeScript, React, Vite, KaTeX]
---

## Fix the series, vary the method

ChronoScope is a **univariate forecasting atlas**. Instead of running one method on one series, it fixes 15 diagnostic cases (each isolating one time-series behaviour) and runs the **same 19-method ladder** on every one, with backtested MASE, sMAPE and interval coverage baked for all 285 method-case pairs. Live at [chronoscope.fasl-work.com](https://chronoscope.fasl-work.com).

## The ladder, and where each tier stops helping

The ladder climbs from **8 classical/statistical** methods (SeasonalNaive, SES, Holt, HoltWinters, Theta, AutoETS, AutoTheta, AutoARIMA) through **LightGBM** and **6 deep nets** (NHITS, DLinear, NLinear) to **4 zero-shot foundation models** (Chronos-Bolt, Chronos-2, TimesFM-2.5, TiRex-2). The foundation tier is real: all four run zero-shot from local checkpoints, TiRex-2 through a purpose-built cross-OS WSL2/CUDA lane because its dependencies have no Windows wheels. Their numbers are committed for all 15 cases, not aspirational.

## Real data, and a licence guard around it

Four cases are real and licensed (UCI Electricity, UCI Beijing PM2.5, Monash/M4 hourly and daily, all CC-BY-4.0); eleven are seeded synthetics with their own generators. A **licence-gated provenance registry** with an enforced export guard lets non-redistributable sources (M5, Stooq) run in the private pipeline while their derived artifacts can never leak into the public repo. This is a testable honesty mechanism, not a policy sentence.

## Honest about the foundation tier

On real M4-hourly, TiRex-2 gives the best backtested error (**MASE 0.476** vs SeasonalNaive's 0.641), a genuine gain on a licensed real series. But the foundation tier is **not a blanket win**: on the same case a one-line **SeasonalNaive (0.641) beats TimesFM-2.5 (0.729)**, and dedicated **white-noise and random-walk control cases** exist precisely where no method should win. Interval coverage is reported next to point error, exposing deep methods whose 80%-nominal bands cover far less. The foundation-tier backtest windows are capped for speed, so those numbers rest on fewer windows than the classical tier, and the app states it. The **foundation models are offline-only**: the live browser lane is a Pyodide numpy core, never an in-browser foundation model.

[Live demo](https://chronoscope.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RES_ChronoScope)
