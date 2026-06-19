---
title: 'CAOS Seismic — Honest Probabilistic Earthquake Forecasting'
titleEs: 'CAOS Seismic — Pronóstico Sísmico Probabilístico Honesto'
slug: seismic-forecasting
date: 2026-06-18
category: geophysics
excerpt: 'Earthquakes cannot be predicted, but their probability can be forecast — honestly. A daily, calibrated, conditional probability of seismic events over 1/2/7-day horizons, always shown next to its long-term baseline and scored prospectively against reality with the field-standard CSEP framework. A forecaster, never an alarm.'
excerptEs: 'Los terremotos no pueden predecirse, pero su probabilidad sí puede pronosticarse — honestamente. Una probabilidad diaria, calibrada y condicional de eventos sísmicos en horizontes de 1/2/7 días, siempre mostrada junto a su línea base de largo plazo y evaluada prospectivamente contra la realidad con el marco estándar CSEP. Un pronosticador, nunca una alarma.'
icon: tabler:activity-heartbeat
tags: [seismology, forecasting, probability, etas, csep, calibration, point-process, geophysics]
proprietary: false
featured: true
assetPatterns: [seismic-forecasting, seismic, caos-seismic]
github: 'https://github.com/fsantibanezleal/CAOS_SEISMIC'
demo: 'https://seismic.fasl-work.com'
website: 'https://seismic.fasl-work.com'
wiki: 'https://github.com/fsantibanezleal/CAOS_SEISMIC/wiki'

challenge: 'Earthquake "prediction" is effectively impossible: whether a small rupture cascades into a great one depends on unmeasurably fine detail of the crust (Geller et al., 1997). Yet the public conversation oscillates between false alarms and false reassurance — and the lesson of L''Aquila (2009) is that over-reassurance is what causes harm. The honest, scientifically mainstream alternative is Operational Earthquake Forecasting (OEF): not a yes/no prediction, but a bounded, calibrated probability of an event in a region × magnitude band × horizon, reported with uncertainty and proven against reality.'
challengeEs: 'La "predicción" de terremotos es efectivamente imposible: que una pequeña ruptura escale a una grande depende de detalles inmensurablemente finos de la corteza (Geller et al., 1997). Sin embargo, la conversación pública oscila entre falsas alarmas y falsa tranquilidad — y la lección de L''Aquila (2009) es que la sobre-tranquilización es la que causa daño. La alternativa honesta y científicamente convencional es el Pronóstico Sísmico Operacional (OEF): no una predicción sí/no, sino una probabilidad acotada y calibrada de un evento en una región × banda de magnitud × horizonte, reportada con incertidumbre y probada contra la realidad.'

approach: 'CAOS Seismic ingests decades of global seismicity and complementary geophysical covariates and fits a maximum-likelihood space–time ETAS model (Ogata 1998) — the de-facto operational baseline — alongside the mandatory stationary smoothed-seismicity Poisson null any time-dependent model must beat. Every forecast is a probability strictly in (0,1) via the single public exceedance formula P = 1 − e^(−N), scoped to a horizon and magnitude threshold and shown next to its baseline ratio with P10/median/P90 bounds. A strict forecast clock hands the model only the catalog up to issue time, so temporal leakage is structurally impossible and every past forecast is byte-reproducible. Skill is established with pyCSEP: consistency tests (N/M/S/L/conditional-L) and comparison tests on information gain per earthquake (in nats) against both the null and ETAS — ROC/AUC is banned as calibration-blind. A GPU-trained, context-conditioned neural temporal point process is a gated challenger that reaches the public map only if it beats ETAS in our own prospective CSEP harness and is calibrated; until then, ETAS ships.'
approachEs: 'CAOS Seismic ingiere décadas de sismicidad global y covariables geofísicas complementarias, y ajusta un modelo espacio-temporal ETAS por máxima verosimilitud (Ogata 1998) — la línea base operacional de facto — junto al obligatorio nulo de Poisson de sismicidad suavizada estacionaria que todo modelo dependiente del tiempo debe superar. Cada pronóstico es una probabilidad estrictamente en (0,1) mediante la única fórmula pública de excedencia P = 1 − e^(−N), acotada a un horizonte y un umbral de magnitud y mostrada junto a su razón base con cotas P10/mediana/P90. Un reloj de pronóstico estricto entrega al modelo solo el catálogo hasta el instante de emisión, de modo que la fuga temporal es estructuralmente imposible y todo pronóstico pasado es reproducible byte a byte. La habilidad se establece con pyCSEP: tests de consistencia (N/M/S/L/L-condicional) y tests de comparación sobre ganancia de información por terremoto (en nats) contra el nulo y contra ETAS — ROC/AUC está prohibido por ser ciego a la calibración. Un proceso puntual temporal neuronal condicionado por contexto y entrenado en GPU es un retador con compuerta que llega al mapa público solo si supera a ETAS en nuestro propio arnés CSEP prospectivo y está calibrado; hasta entonces, ETAS es lo que se publica.'

businessContext: 'Seismic risk is a multi-billion-dollar concern for insurers, mining and energy operators, critical infrastructure, and civil protection — yet most "earthquake prediction" offerings are scientifically indefensible and erode trust. The value of an honest forecaster is not an alarm; it is a calibrated, auditable probability that decision-makers can combine with their own exposure models, and a public-facing artifact (a reliability diagram) that proves the numbers mean what they say. It is positioned strictly as an independent research and education tool that complements official agencies (in Chile, the CSN; civil protection, SENAPRED), never replacing them.'
businessContextEs: 'El riesgo sísmico es una preocupación de miles de millones para aseguradoras, operadores mineros y de energía, infraestructura crítica y protección civil — pero la mayoría de las ofertas de "predicción de terremotos" son científicamente indefendibles y erosionan la confianza. El valor de un pronosticador honesto no es una alarma; es una probabilidad calibrada y auditable que quienes deciden pueden combinar con sus propios modelos de exposición, y un artefacto público (un diagrama de confiabilidad) que prueba que los números significan lo que dicen. Se posiciona estrictamente como una herramienta independiente de investigación y educación que complementa a las agencias oficiales (en Chile, el CSN; protección civil, SENAPRED), nunca reemplazándolas.'
strategicValue: 'CAOS Seismic demonstrates a complete, defensible operational-forecasting stack that most teams never reach: rigorous catalog hygiene (time-varying completeness Mc, moment-magnitude homogenization, dual declustering), a credible statistical baseline, the field-standard CSEP evaluation, calibration as a hard release blocker, and a leakage-proof forecast clock — wired into a deploy architecture where all heavy compute runs offline once per day and the public surface is a pure static viewer (git-as-data, zero processing backend, near-zero hosting cost). The same discipline transfers to any rare-event forecasting problem (failures, fraud, demand spikes): prove skill against a baseline, calibrate, and never over-claim. It is also a working example of communicating uncertainty responsibly — the single hardest part of any risk product.'
strategicValueEs: 'CAOS Seismic demuestra un stack completo y defendible de pronóstico operacional que la mayoría de los equipos nunca alcanza: higiene rigurosa del catálogo (completitud variable en el tiempo Mc, homogeneización a magnitud de momento, doble desclustering), una línea base estadística creíble, la evaluación estándar CSEP, la calibración como bloqueante duro de release, y un reloj de pronóstico a prueba de fugas — todo conectado a una arquitectura de despliegue donde el cómputo pesado corre offline una vez al día y la superficie pública es un visor puramente estático (git-como-dato, cero backend de procesamiento, costo de hosting casi nulo). La misma disciplina se transfiere a cualquier problema de pronóstico de eventos raros (fallas, fraude, picos de demanda): probar habilidad contra una base, calibrar, y nunca sobre-afirmar. Es además un ejemplo funcional de comunicar incertidumbre con responsabilidad — la parte más difícil de cualquier producto de riesgo.'

kpis:
  - label: 'Skill claim'
    labelEs: 'Afirmación de habilidad'
    baseline: 'Asserted (accuracy / AUC)'
    baselineEs: 'Afirmada (accuracy / AUC)'
    result: 'Proven in nats vs ETAS + Poisson null (CSEP)'
    resultEs: 'Probada en nats vs ETAS + nulo de Poisson (CSEP)'
    impact: 'No model ships without measured skill'
    impactEs: 'Ningún modelo se publica sin habilidad medida'
  - label: 'Calibration'
    labelEs: 'Calibración'
    baseline: 'Uncalibrated probabilities ship'
    baselineEs: 'Se publican probabilidades sin calibrar'
    result: 'Reliability diagram; calibration is a release blocker'
    resultEs: 'Diagrama de confiabilidad; calibración bloquea el release'
    impact: '"When we said 5%, it happened ~5% of the time"'
    impactEs: '"Cuando dijimos 5%, ocurrió ~5% de las veces"'
  - label: 'Leakage & reproducibility'
    labelEs: 'Fuga y reproducibilidad'
    baseline: 'Ad-hoc backtests, future peeking'
    baselineEs: 'Backtests ad-hoc, mirando el futuro'
    result: 'Strict forecast clock; byte-reproducible logs'
    resultEs: 'Reloj de pronóstico estricto; registros reproducibles byte a byte'
    impact: 'Every past forecast scored as it was at issue time'
    impactEs: 'Cada pronóstico pasado evaluado tal como era al emitirse'
  - label: 'Coverage & bias audit'
    labelEs: 'Cobertura y auditoría de sesgo'
    baseline: 'Single high-seismicity region'
    baselineEs: 'Una sola región de alta sismicidad'
    result: 'Global; many high- AND low-seismicity countries'
    resultEs: 'Global; muchos países de alta Y baja sismicidad'
    impact: 'Bias toward active zones is audited, not assumed away'
    impactEs: 'El sesgo hacia zonas activas se audita, no se asume ausente'

metrics:
  - label: 'Operational baseline'
    labelEs: 'Línea base operacional'
    value: 'Space–time ETAS (MLE) + smoothed-seismicity Poisson null'
    valueEs: 'ETAS espacio-temporal (MLE) + nulo de Poisson suavizado'
  - label: 'Challenger gain (in-loop gate)'
    labelEs: 'Ganancia del retador (compuerta in-loop)'
    value: '+0.075 nats/eq vs ETAS, calibrated (prospective validation pending)'
    valueEs: '+0.075 nats/ev vs ETAS, calibrado (validación prospectiva pendiente)'
  - label: 'Evaluation framework'
    labelEs: 'Marco de evaluación'
    value: 'pyCSEP — N/M/S/L/CL consistency + paired-t / Wilcoxon comparison'
    valueEs: 'pyCSEP — consistencia N/M/S/L/CL + comparación t-pareado / Wilcoxon'
  - label: 'Horizons'
    labelEs: 'Horizontes'
    value: '1 / 2 / 7 days, one inference per day (offline)'
    valueEs: '1 / 2 / 7 días, una inferencia por día (offline)'
  - label: 'Neural speedup'
    labelEs: 'Aceleración neuronal'
    value: '~13× (vectorized expected-counts triggering field)'
    valueEs: '~13× (campo de disparo de conteos esperados vectorizado)'
  - label: 'Publish architecture'
    labelEs: 'Arquitectura de publicación'
    value: 'git-as-data: gzipped JSON artifact, static viewer, no backend'
    valueEs: 'git-como-dato: artefacto JSON gzip, visor estático, sin backend'

stack: [Python, NumPy, SciPy, ETAS, pyCSEP, PyTorch, USGS ComCat, TypeScript, React, Vite, MapLibre, GitHub Pages]
---

## Forecasts, never predictions

CAOS Seismic reads the recent state of global seismicity and publishes **bounded, calibrated, conditional probabilities** of earthquakes over short horizons (1 / 2 / 7 days), for a region and a magnitude band, **always shown next to the long-term baseline** and **evaluated prospectively against reality**. It produces one inference per day, renders a continuous probability *field* (never alarm dots), and never issues an alarm, a countdown, a binary call, or a "safe" state.

> **Earthquakes cannot be predicted, but their probability can be forecast — reported honestly, with uncertainty, evaluated against reality, never as an alarm and never as a promise of safety.**

Following the ICEF definition (Jordan et al., 2011), a *prediction* is a deterministic statement that an event will or will not occur; a *forecast* gives a probability strictly between 0 and 1. Short-term probabilities of a large event may vary over orders of magnitude but typically stay low in an absolute sense (< 1% per day). A single outcome neither validates nor invalidates a probabilistic forecast — a 3% forecast is **not wrong** when the 3% outcome occurs.

## What makes a forecast honest here

1. **A defensible baseline.** A maximum-likelihood space–time ETAS model (Ogata 1998), plus the mandatory stationary smoothed-seismicity Poisson null any time-dependent model must beat. A transparent Reasenberg–Jones model is the sanity-check fallback.
2. **Skill is proven, not asserted.** Every model is scored with the community-standard CSEP framework via pyCSEP — consistency tests (N/M/S/L/CL) and comparison tests on **information gain per earthquake (in nats)** against both the null and ETAS. ROC/AUC is banned as a skill metric (it is calibration-blind). A live **reliability diagram** is the headline artifact.
3. **Calibration is a release blocker.** An uncalibrated probability does not ship.
4. **Leakage is structurally impossible.** A strict forecast clock hands the model only the catalog up to issue time; every forecast is logged immutably with its exact input state, so any past forecast is byte-reproducible and scored against the catalog *as it was at issue time*.
5. **A stronger model must earn the map.** A GPU-trained neural temporal point process is a gated challenger: it reaches the public map **only** if it beats ETAS in our own prospective CSEP harness **and** is calibrated. Until then, ETAS is what ships.

## Architecture — heavy compute offline, the web is a pure viewer

```
  Local GPU workstation (daily ~03:00)              Public repo (git-as-data)     Static web
  ─────────────────────────────────────             ─────────────────────────     ──────────
  fetch (ComCat + regional FDSN) → hygiene           results/forecast-             GitHub Pages
  (Mc, Mw, decluster) → fit/condition ETAS    ──▶    YYYY-MM-DD.json.gz     ──▶    SPA reads the
  (+ GPU challenger) → simulate → calibrate          + index.json + CSEP           committed JSON
  → ONE compact artifact → scoped commit → push      + manifests                   (no backend)
```

The mandatory data-hygiene order is load-bearing: time-varying completeness `Mc(x,y,t)` → moment-magnitude homogenization → dual-catalog declustering. The runtime is a Vite + React + TypeScript viewer that renders the committed artifact — **no server computes anything**, so hosting is near-free and the forecast is fully auditable from the git history.

## Global by design, to audit bias

The model trains on global seismicity and runs inference across many countries — high-seismicity (Chile, Japan, Indonesia, Mexico, Türkiye, California, New Zealand) and low-seismicity (United Kingdom, Germany, Australia, Brazil) — precisely so the forecast can be compared and audited for bias toward active zones. The single public exceedance formula `P = 1 − e^(−N)` never changes; only the quality of the conditional intensity `λ` improves.

## The honest limits

- **No deterministic prediction** — the physical picture is self-organized criticality; fine-scale crustal detail is unmeasurable.
- **Absolute probabilities stay small** even during an active sequence; the *relative* gain over background can be 1–3 orders of magnitude, but the absolute number stays low — so it is always shown next to the baseline.
- **The dangerous failure mode is communication.** This product never over-reassures and never issues an alarm. Blank on the map means *no forecast / out of coverage* — never "safe".

## Live

▶ **[seismic.fasl-work.com](https://seismic.fasl-work.com)** — the world probability field, per-country drill-down, the reliability diagram, the multi-model back-analysis, and the honest experiment journey.

[Source on GitHub](https://github.com/fsantibanezleal/CAOS_SEISMIC) · [Technical wiki](https://github.com/fsantibanezleal/CAOS_SEISMIC/wiki)
