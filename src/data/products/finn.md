---
title: 'Finn — Personal Finance & Market Forecasting'
titleEs: 'Finn — Finanzas Personales y Pronóstico de Mercados'
slug: finn
date: 2026-04-30
category: quant-finance
excerpt: 'A full-stack personal-finance and market-analytics app: track instruments, build watchlists and portfolios, run statistical and ML forecasts with walk-forward validation, review risk, and read FinBERT news sentiment — with LATAM coverage (IPSA + Chile macro) behind a fast, server-rendered UI.'
excerptEs: 'Aplicación full-stack de finanzas personales y analítica de mercados: sigue instrumentos, arma watchlists y portafolios, corre pronósticos estadísticos y de ML con validación walk-forward, revisa riesgo y lee sentimiento de noticias con FinBERT — con cobertura LATAM (IPSA + macro Chile) tras una UI rápida renderizada en servidor.'
icon: tabler:chart-candle
tags: [quant, forecasting, finbert, portfolio, risk, fastapi, htmx, plotly]
proprietary: false
featured: true
assetPatterns: [finn]
github: 'https://github.com/fsantibanezleal/CAOS_WEB_Finn_Forecasts'
demo: 'https://finn.fasl-work.com'

challenge: 'Most quant demos default to US tickers and frictionless backtests — they look impressive and mislead. A credible market-analytics tool has to validate forecasts the way they would actually be traded, charge realistic costs, score news with finance-aware models, and cover the markets the user actually lives in.'
challengeEs: 'La mayoría de los demos cuantitativos usan tickers de EE.UU. y backtests sin fricción — se ven impresionantes y engañan. Una herramienta creíble de analítica de mercados debe validar pronósticos como realmente se operarían, cobrar costos realistas, puntuar noticias con modelos financieros y cubrir los mercados donde el usuario realmente vive.'

approach: 'A server-rendered FastAPI + HTMX app over a quant stack (pandas, numpy, scipy, statsmodels, scikit-learn). Forecasting spans ARIMA/SARIMA, exponential smoothing, Prophet-style decomposition, and gradient-boosted regressors, evaluated with walk-forward cross-validation. Risk covers volatility, Sharpe, max drawdown, VaR, mean-variance optimization, and regime detection. FinBERT (HF Inference API) scores headline sentiment; LATAM coverage adds the IPSA universe, Chilean macro series, and a Banco Central de Chile stub. Auth-backed watchlists and portfolios persist per user.'
approachEs: 'App FastAPI + HTMX renderizada en servidor sobre un stack cuantitativo (pandas, numpy, scipy, statsmodels, scikit-learn). El pronóstico abarca ARIMA/SARIMA, suavizamiento exponencial, descomposición estilo Prophet y regresores con gradient boosting, evaluados con validación cruzada walk-forward. El riesgo cubre volatilidad, Sharpe, máximo drawdown, VaR, optimización media-varianza y detección de regímenes. FinBERT (HF Inference API) puntúa el sentimiento de titulares; la cobertura LATAM agrega el universo IPSA, series macro chilenas y un stub del Banco Central de Chile. Watchlists y portafolios con autenticación persisten por usuario.'

businessContext: 'Retail and analyst-facing finance tools tend to split into two camps: polished dashboards with shallow analytics, or powerful quant libraries with no usable interface. Neither serves someone who wants real forecasting and risk analysis, honest backtesting, and coverage of Latin American markets — which mainstream tools largely ignore — without standing up a research environment from scratch.'
businessContextEs: 'Las herramientas financieras para retail y analistas suelen dividirse en dos campos: dashboards pulidos con analítica superficial, o librerías cuantitativas potentes sin interfaz usable. Ninguno sirve a quien quiere pronóstico y análisis de riesgo reales, backtesting honesto y cobertura de mercados latinoamericanos — que las herramientas masivas ignoran en gran medida — sin montar un entorno de investigación desde cero.'
strategicValue: 'Finn packages a research-grade analytics stack behind a fast, server-rendered UI. Its differentiators are rigor and reach: forecasts are scored with walk-forward cross-validation (train on the past, test on the unseen next window) instead of leaking the future into the fit, and backtests charge transaction costs so a strategy has to survive contact with reality. FinBERT brings finance-aware sentiment — distinguishing "missed guidance" from "raised guidance," which a general sentiment model fumbles — and first-class LATAM coverage (IPSA, Chilean macro, BCCh) makes it usable for the markets it was built in. Risk analytics (volatility, Sharpe, max drawdown, VaR, efficient-frontier optimization, regime detection) and advanced Plotly visualizations (fan charts, drawdown, fundamentals bubbles, regime shading) round it out, with per-user persistence behind auth.'
strategicValueEs: 'Finn empaqueta un stack analítico de nivel investigación tras una UI rápida renderizada en servidor. Sus diferenciadores son rigor y alcance: los pronósticos se evalúan con validación cruzada walk-forward (entrenar con el pasado, probar con la ventana siguiente no vista) en vez de filtrar el futuro al ajuste, y los backtests cobran costos de transacción para que una estrategia sobreviva el contacto con la realidad. FinBERT aporta sentimiento consciente de finanzas — distinguiendo "guidance no cumplido" de "guidance elevado", que un modelo de sentimiento general confunde — y la cobertura LATAM de primera clase (IPSA, macro chilena, BCCh) lo hace usable para los mercados donde se construyó. La analítica de riesgo (volatilidad, Sharpe, máximo drawdown, VaR, optimización de frontera eficiente, detección de regímenes) y visualizaciones Plotly avanzadas (fan charts, drawdown, burbujas de fundamentales, sombreado de regímenes) lo completan, con persistencia por usuario tras autenticación.'

kpis:
  - label: 'Forecast Validation'
    labelEs: 'Validación de Pronóstico'
    baseline: 'In-sample fit (future leakage)'
    baselineEs: 'Ajuste in-sample (fuga del futuro)'
    result: 'Walk-forward cross-validation'
    resultEs: 'Validación cruzada walk-forward'
    impact: 'Out-of-sample error you can trust'
    impactEs: 'Error fuera de muestra confiable'
  - label: 'Market Coverage'
    labelEs: 'Cobertura de Mercado'
    baseline: 'US tickers only'
    baselineEs: 'Solo tickers de EE.UU.'
    result: 'IPSA + Chile macro + BCCh'
    resultEs: 'IPSA + macro Chile + BCCh'
    impact: 'Usable for LATAM markets'
    impactEs: 'Usable para mercados LATAM'

metrics:
  - label: 'Forecasting Models'
    labelEs: 'Modelos de Pronóstico'
    value: 'ARIMA/SARIMA, exp. smoothing, Prophet-style, GBM'
    valueEs: 'ARIMA/SARIMA, suav. exponencial, estilo Prophet, GBM'
  - label: 'Risk Metrics'
    labelEs: 'Métricas de Riesgo'
    value: 'Volatility, Sharpe, max drawdown, VaR'
    valueEs: 'Volatilidad, Sharpe, máx drawdown, VaR'
  - label: 'Sentiment'
    labelEs: 'Sentimiento'
    value: 'FinBERT (HF Inference API)'
    valueEs: 'FinBERT (HF Inference API)'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'FastAPI + HTMX + Plotly + quant stack'
    valueEs: 'FastAPI + HTMX + Plotly + stack cuantitativo'

stack: [Python, FastAPI, HTMX, Plotly, pandas, NumPy, SciPy, statsmodels, scikit-learn, SQLAlchemy, FinBERT]
---

## A Quant Demo That Doesn't Lie to You

Finn is a full-stack personal-finance and market-analytics web app: track instruments, build watchlists and portfolios, run forecasts, and review risk — all behind a clean, fast, server-rendered UI. What separates it from the average finance dashboard is what it refuses to fake.

## Forecasting You Can Trust

Finn runs several forecasting models — ARIMA/SARIMA, exponential smoothing, Prophet-style decomposition, and gradient-boosted regressors — but the important part is _how_ they're evaluated. **Walk-forward cross-validation** trains on the past and tests on the unseen next window, rolling forward, so the reported error is genuinely out-of-sample. No future leaks into the fit. Confidence intervals and scenario fan charts make the uncertainty explicit.

## Risk, Portfolios, and Honest Backtests

Build portfolios, track allocations, and compute returns with a full risk battery: volatility, Sharpe, max drawdown, VaR, mean-variance optimization (efficient frontier), and regime detection. Backtests charge **transaction costs** — the fastest way to kill a strategy that only looked good because it traded for free.

## Finance-Aware Sentiment + LATAM Coverage

Financial sentiment is its own dialect: "missed guidance" and "raised guidance" sit next to each other in vocabulary space but mean opposite things to a price. Finn scores headlines with **FinBERT** (HF Inference API) instead of a general sentiment model. And rather than defaulting to US tickers, it adds first-class **LATAM coverage** — the IPSA universe, Chilean macro series, and a Banco Central de Chile stub — so it's a tool for the markets it was built in.

## Architecture

A **FastAPI + HTMX** server-rendered application over a quant stack (pandas, numpy, scipy, statsmodels, scikit-learn), with SQLAlchemy/Alembic persistence and interactive **Plotly** charts (fan charts, drawdown, fundamentals bubbles, regime shading). Auth-backed watchlists and portfolios persist per user. Live at [finn.fasl-work.com](https://finn.fasl-work.com).
