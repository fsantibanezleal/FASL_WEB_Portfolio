---
title: 'Contraste, Validating Internal Risk Models the Way a Supervisor Would'
titleEs: 'Contraste, Validar Modelos Internos de Riesgo como lo Haría un Supervisor'
slug: contraste
date: 2026-10-26
category: quant-finance
family: data
excerpt: 'Defending internal risk models before the supervisor: 21 reproducible validation cases on public data, a synthetic bank and known-truth generators, run through the open engine riskvalidation.'
excerptEs: 'Defender ante el supervisor los modelos internos de riesgo: 21 casos reproducibles de validación con datos públicos, un banco sintético y generadores de verdad conocida, sobre el motor abierto riskvalidation.'
icon: tabler:shield-check
tags:
  [
    model-risk-management,
    model-validation,
    credit-risk,
    ifrs-9,
    basel,
    stress-testing,
    fair-lending,
    machine-learning,
    reproducible-research,
    open-source,
  ]
proprietary: false
featured: false
assetPatterns: [contraste]
github: 'https://github.com/fsantibanezleal/CAOS_Contraste'
demo: 'https://contraste.fasl-work.com/'
website: 'https://contraste.fasl-work.com/'

challenge: 'Banks set capital and provisions with internal models, and supervisors keep finding deficiencies in them that raise capital or block approval. In the euro area, 200 on-site investigations of internal models at 65 banks produced 5,800 findings, about 30 percent of high severity, and the supervisory decisions that followed raised the risk-weighted assets of the models assessed by 12 percent; in each of the 77 investigations launched in 2025 the average was 16 findings, almost half of high severity. The weakness found most often is the evidence behind the model: validation analyses and quantitative thresholds missing for back-testing, discriminatory power and stability. In Chile, the supervisor proposed in August 2026 that the individually assessed commercial loans of banks carry 571 million US dollars of extra provisions from January 2031 if the proposed model applied without their own models, unless those are approved first.'
challengeEs: 'Los bancos fijan capital y provisiones con modelos internos, y los supervisores siguen encontrando en ellos deficiencias que elevan el capital o impiden la aprobación. En la zona euro, 200 investigaciones in situ de modelos internos en 65 bancos dejaron 5.800 hallazgos, cerca de 30 por ciento de severidad alta, y las decisiones supervisoras que siguieron elevaron en 12 por ciento los activos ponderados por riesgo de los modelos evaluados; en cada una de las 77 investigaciones iniciadas en 2025 el promedio fue de 16 hallazgos, casi la mitad de severidad alta. La debilidad más frecuente es la evidencia detrás del modelo: faltan análisis de validación y umbrales cuantitativos para pruebas retrospectivas, poder discriminatorio y estabilidad. En Chile, el supervisor propuso en agosto de 2026 que los créditos comerciales evaluados individualmente de los bancos tengan 571 millones de dólares de provisiones adicionales desde enero de 2031, si el modelo propuesto se aplicara sin modelos propios, salvo aprobación previa.'

approach: 'Contraste fits a ladder of models on public data, from the constant probability of default to gradient boosting and a tabular foundation model, and runs on every rung the battery a validator would: discrimination, calibration level and fit, and stability, by grade and for the portfolio, each test with its null hypothesis, its primary source and the policy that turned its p-value into a light. Perturbed variants of each case carry a known truth, so the page shows what each test detects and what it misses. There are 22 cases (21 built, C19 planned) across credit scoring, ratings and calibration, provisions, LGD and EAD, portfolio capital, market and counterparty risk, the balance sheet (IRRBB and liquidity), operational risk, capital and stress testing, machine learning and AI model risk, and the validation of the validator itself. Every test comes from the published engine riskvalidation (MIT, on PyPI), consumed as a dependency and never copied, and a governance layer records an inventory, tiers, a findings register and a validation report per model. A static React site on the shared CAOS shell replays the committed artifacts in English and Spanish, light and dark, and computes live what a reader changes; a reader can also pass the same battery over their own scored sample.'
approachEs: 'Contraste ajusta una escalera de modelos con datos públicos, desde la probabilidad de incumplimiento constante hasta el gradient boosting y un modelo fundacional tabular, y corre en cada peldaño la batería que correría un validador: discriminación, nivel y ajuste de la calibración, y estabilidad, por grado y para la cartera, cada prueba con su hipótesis nula, su fuente primaria y la política que convirtió su valor p en una luz. Las variantes perturbadas de cada caso llevan una verdad conocida, así que la página muestra qué detecta cada prueba y qué se le escapa. Son 22 casos (21 construidos, C19 planificado) en scoring de crédito, calificaciones y calibración, provisiones, LGD y EAD, capital de cartera, riesgo de mercado y de contraparte, el balance (IRRBB y liquidez), riesgo operacional, capital y pruebas de tensión, riesgo de modelos de ML e IA, y la validación del propio validador. Cada prueba viene del motor publicado riskvalidation (MIT, en PyPI), consumido como dependencia y nunca copiado, y una capa de gobernanza registra un inventario, niveles, un registro de hallazgos y un informe de validación por modelo. Un sitio estático en React sobre la carcasa CAOS compartida reproduce los artefactos versionados en español e inglés, en claro y oscuro, y calcula en vivo lo que el lector cambia; el lector también puede pasar la misma batería por su propia muestra puntuada.'

businessContext: 'The setting is the large or mid-sized bank that estimates its own risk parameters for credit, provisions or capital under a prudential supervisor, with each model in an inventory with an owner, an independent validator and a place in the governance approved by the board. Owners build, validators challenge, senior management approves and inspectors verify, and every handover loses evidence when results cannot be reproduced or compared. Since 2011 supervisors have asked for effective challenge, and the rules now tighten together: the British principles for model risk management took effect on 17 May 2024 for firms with internal model approval; the Canadian guideline applies from 1 May 2027 and covers the whole model lifecycle, including advanced artificial intelligence; the United States letter of 17 April 2026 replaced the 2011 guidance; the European Banking Authority projects a 4.7 percent average rise in minimum Tier 1 capital once the output floor applies, with institutions bound by it growing from 2 to 33; and the European Union artificial intelligence act lists systems that evaluate the creditworthiness of natural persons or set their credit score as high-risk systems. In-house validation teams running standard batteries and supervisory guides give a shared language of tests, but thresholds are often missing or unmeasured, and management overlays, roughly 25 percent of the loan loss coverage in performing loan books, have become permanent.'
businessContextEs: 'El escenario es el banco grande o mediano que estima sus propios parámetros de riesgo para crédito, provisiones o capital bajo un supervisor prudencial, con cada modelo en un inventario con un dueño, un validador independiente y un lugar en la gobernanza aprobada por el directorio. Los dueños construyen, los validadores desafían, la alta gerencia aprueba y los inspectores verifican, y cada traspaso pierde evidencia cuando los resultados no se pueden reproducir ni comparar. Desde 2011 los supervisores piden un desafío efectivo, y las normas ahora se endurecen a la vez: los principios británicos de gestión del riesgo de modelo entraron en vigor el 17 de mayo de 2024 para las entidades con aprobación de modelos internos; la directriz canadiense se aplica desde el 1 de mayo de 2027 y cubre todo el ciclo de vida del modelo, incluida la inteligencia artificial avanzada; la carta estadounidense del 17 de abril de 2026 reemplazó la guía de 2011; la Autoridad Bancaria Europea proyecta 4,7 por ciento más de capital mínimo de nivel 1 con el piso, y las instituciones sujetas a él pasan de 2 a 33; y la ley de inteligencia artificial de la Unión Europea clasifica como sistemas de alto riesgo los que evalúan la solvencia de personas naturales o establecen su puntaje de crédito. Los equipos internos de validación con baterías estándar y las guías supervisoras dan un lenguaje común de pruebas, pero los umbrales suelen faltar o no estar medidos, y los ajustes de la administración, aproximadamente 25 por ciento de la cobertura de pérdidas de los préstamos vigentes, se han vuelto permanentes.'

strategicValue: 'The proposal is to treat model evidence as a shared and reproducible asset, with agreed thresholds, measured test error rates and named owners, so every model can be defended on proof. Contraste puts that into practice in four moves. Choice: banks keep the freedom to use proprietary, vendor or open models, because the same tests and thresholds apply to whichever model is chosen. Context: results are read against what a model changes in capital, provisions, liquidity or decisions. Cost: the effort of validation and the capital cost of each modelling choice are made visible. Control: one governance covers data, models and the machine learning that challenges them, with owners, thresholds and remediation recorded in a single inventory. Case C22 validates the validator: it measures the size and power of every registered p-value test, so a result is read for what it can prove. Version 1.00.000 is the first stable release: every case re-baked on riskvalidation 1.0.1, the first stable engine, with its public API stated under semantic versioning and a packaged policy file for every battery, the Spanish texts carrying their accents and number forms, and a generated convergence verdict. Contraste is not a certification: a passed test is evidence, not compliance, and it represents no real bank.'
strategicValueEs: 'La propuesta es tratar la evidencia de los modelos como un activo compartido y reproducible, con umbrales acordados, tasas de error medidas y responsables con nombre, para defender cada modelo con pruebas. Contraste lo lleva a la práctica en cuatro movimientos. Elección: los bancos conservan la libertad de usar modelos propietarios, de proveedores o abiertos, porque las mismas pruebas y umbrales valen para el modelo que se elija. Contexto: los resultados se leen frente a lo que un modelo cambia en capital, provisiones, liquidez o decisiones. Costo: se hacen visibles el esfuerzo de validación y el costo en capital de cada elección de modelado. Control: una sola gobernanza cubre los datos, los modelos y el aprendizaje automático que los desafía, con responsables, umbrales y remediación registrados en un único inventario. El caso C22 valida al validador: mide el tamaño y la potencia de cada prueba de valor p registrada, para leer cada resultado por lo que puede probar. La versión 1.00.000 es la primera versión estable: todos los casos re-horneados sobre riskvalidation 1.0.1, el primer motor estable, con su API pública declarada bajo versionado semántico y un archivo de política empaquetado para cada batería, los textos en español con sus acentos y formas numéricas, y un veredicto de convergencia generado. Contraste no es una certificación: una prueba aprobada es evidencia, no cumplimiento, y no representa a ningún banco real.'

kpis:
  - label: 'Evidence a supervisor can re-run'
    labelEs: 'Evidencia que un supervisor puede repetir'
    baseline: 'Euro area review of internal models: 5,800 findings from 200 on-site investigations at 65 banks, about 30 percent of high severity, validation thresholds missing for back-testing, discriminatory power and stability'
    baselineEs: 'Revisión de modelos internos de la zona euro: 5.800 hallazgos de 200 investigaciones in situ en 65 bancos, cerca de 30 por ciento de severidad alta, con umbrales de validación faltantes para pruebas retrospectivas, poder discriminatorio y estabilidad'
    result: '21 cases on public data, a synthetic bank and known-truth generators, each test with its null hypothesis, its primary source and the policy that turned its p-value into a light, run through the open engine riskvalidation 1.0.1'
    resultEs: '21 casos con datos públicos, un banco sintético y generadores de verdad conocida, cada prueba con su hipótesis nula, su fuente primaria y la política que convirtió su valor p en una luz, corridos con el motor abierto riskvalidation 1.0.1'
    impact: 'An independent third party can obtain the same numbers from open data and code'
    impactEs: 'Un tercero independiente puede obtener los mismos números con datos y código abiertos'
  - label: 'Validating the validator'
    labelEs: 'Validar al validador'
    baseline: 'Validation tests used without measured false alarm and detection rates'
    baselineEs: 'Pruebas de validación usadas sin tasas medidas de falsas alarmas ni de detección'
    result: 'Case C22 measures the size and power of every registered p-value test: 25 studies of 4,000 repetitions each in the null variant, and the power against stated alternatives; 23 of the 25 studies hold their size'
    resultEs: 'El caso C22 mide el tamaño y la potencia de cada prueba de valor p registrada: 25 estudios de 4.000 repeticiones cada uno en la variante nula, y la potencia frente a alternativas declaradas; 23 de los 25 estudios mantienen su tamaño'
    impact: 'A result is read for what it can prove, and the two studies that exceed their bound are an open finding for the engine'
    impactEs: 'Cada resultado se lee por lo que puede probar, y los dos estudios que exceden su cota son un hallazgo abierto para el motor'
  - label: 'One governance for every model'
    labelEs: 'Una gobernanza para todos los modelos'
    baseline: 'Owners, validators and inspectors each hold part of the evidence, and handovers lose it'
    baselineEs: 'Dueños, validadores e inspectores tienen cada uno una parte de la evidencia, y los traspasos la pierden'
    result: 'An inventory of 34 entries with tiers, a findings register of 577 rows and a validation report per entry, computed by riskvalidation.governance from the committed documents'
    resultEs: 'Un inventario de 34 entradas con niveles, un registro de 577 hallazgos y un informe de validación por entrada, calculados por riskvalidation.governance a partir de los documentos versionados'
    impact: 'Owners, thresholds and remediation sit in a single inventory, so management sees model risk across all models'
    impactEs: 'Responsables, umbrales y remediación quedan en un único inventario, y la gerencia ve el riesgo de modelo en todos los modelos'
  - label: 'Capital and provisions in view'
    labelEs: 'Capital y provisiones a la vista'
    baseline: 'Chile: 571 million US dollars of extra provisions on individually assessed commercial loans if the proposed model applied without banks'' own models; euro area: management overlays are roughly 25 percent of loan loss coverage in performing books'
    baselineEs: 'Chile: 571 millones de dólares de provisiones adicionales en créditos comerciales evaluados individualmente si el modelo propuesto se aplicara sin modelos propios de los bancos; zona euro: los ajustes de la administración son aproximadamente 25 por ciento de la cobertura de pérdidas en préstamos vigentes'
    result: 'Cases on provisions (including the Chile trilogy of CMF B-1, IFRS 9 and BdE Annex 9), LGD and EAD, portfolio credit capital, IRRBB on a CLP and UF balance sheet, and ICAAP and IAPE capital aggregation under macro scenarios'
    resultEs: 'Casos de provisiones (incluida la trilogía de Chile de CMF B-1, IFRS 9 y Anejo 9 del BdE), LGD y EAD, capital de crédito de cartera, IRRBB sobre un balance en CLP y UF, y agregación de capital ICAAP e IAPE bajo escenarios macro'
    impact: 'The capital and provision effect of a modelling choice is shown to management before a supervisor does'
    impactEs: 'El efecto en capital y provisiones de una elección de modelado se muestra a la gerencia antes de que lo haga un supervisor'
  - label: 'Machine learning under the same discipline'
    labelEs: 'Aprendizaje automático bajo la misma disciplina'
    baseline: 'Machine learning enters credit models faster than shared validation practice develops, and EU rules class credit scoring of natural persons as high-risk'
    baselineEs: 'El aprendizaje automático entra en los modelos de crédito más rápido de lo que se desarrolla una práctica común de validación, y las normas de la UE clasifican como de alto riesgo el puntaje de crédito de personas naturales'
    result: 'Challengers from gradient boosting to a tabular foundation model on the same ladder, plus cases on ML validation (drift, robustness, explanation stability) and fair-lending disparity testing on public HMDA decisions'
    resultEs: 'Modelos desafiantes desde gradient boosting hasta un modelo fundacional tabular en la misma escalera, más casos de validación de ML (deriva, robustez, estabilidad de explicaciones) y de pruebas de disparidad en crédito justo sobre decisiones públicas de HMDA'
    impact: 'The discipline of thresholds and measured error rates extends to machine learning challengers'
    impactEs: 'La disciplina de umbrales y tasas de error medidas se extiende a los modelos desafiantes de aprendizaje automático'

metrics:
  - label: 'State'
    labelEs: 'Estado'
    value: 'Version 1.00.000 on the shell @fasl-work/caos-app-shell, engine riskvalidation 1.0.1 from PyPI; 21 of 22 cases built, C19 planned; deployed on GitHub Pages at contraste.fasl-work.com'
    valueEs: 'Versión 1.00.000 sobre la carcasa @fasl-work/caos-app-shell, motor riskvalidation 1.0.1 de PyPI; 21 de 22 casos construidos, C19 planificado; desplegada en GitHub Pages en contraste.fasl-work.com'
  - label: 'Cases'
    labelEs: 'Casos'
    value: '22 cases in 11 categories: credit scoring (3), ratings and calibration (2), provisions (2), LGD and EAD (2), portfolio capital (1), market and counterparty risk (3), balance sheet, IRRBB and liquidity (3), operational risk (1), capital and stress testing (2), ML and AI model risk (2), validating the validator (1); 15 on real public data and 7 on synthetic data'
    valueEs: '22 casos en 11 categorías: scoring de crédito (3), calificaciones y calibración (2), provisiones (2), LGD y EAD (2), capital de cartera (1), riesgo de mercado y de contraparte (3), balance, IRRBB y liquidez (3), riesgo operacional (1), capital y pruebas de tensión (2), riesgo de modelos de ML e IA (2), validar al validador (1); 15 con datos públicos reales y 7 con datos sintéticos'
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'riskvalidation 1.0.1 (MIT, on PyPI), the first stable engine: public API under semantic versioning, the size and power of every registered p-value test measured, a packaged policy file for every battery'
    valueEs: 'riskvalidation 1.0.1 (MIT, en PyPI), el primer motor estable: API pública bajo versionado semántico, tamaño y potencia medidos para cada prueba de valor p registrada, un archivo de política empaquetado para cada batería'
  - label: 'Web'
    labelEs: 'Web'
    value: 'Six routes in English and Spanish, light and dark: the App workbench (Model, Validation, Impact, Findings, Variants, Context), Introduction, Methodology, Implementation, Experiments and Benchmark; live computations are TypeScript ports held to the engine on exported parity points'
    valueEs: 'Seis rutas en español e inglés, en claro y oscuro: el banco de trabajo App (Modelo, Validación, Impacto, Hallazgos, Variantes, Contexto), Introducción, Metodología, Implementación, Experimentos y Benchmark; los cálculos en vivo son portes a TypeScript contrastados con el motor en puntos de paridad exportados'
  - label: 'Notebooks'
    labelEs: 'Notebooks'
    value: 'Didactic notebooks in English and Spanish, by topic and from simple to complex, executed and committed, on the engine installed from PyPI'
    valueEs: 'Notebooks didácticos en español e inglés, por tema y de simple a complejo, ejecutados y versionados, sobre el motor instalado desde PyPI'
  - label: 'Data and licences'
    labelEs: 'Datos y licencias'
    value: 'MIT for the code; every source declared with its licence class (mirror-allowed, derived-only, link-only, unusable) and the verbatim fragment of its terms; raw rows committed only from mirror-allowed sources'
    valueEs: 'MIT para el código; cada fuente declarada con su clase de licencia (espejo permitido, solo derivado, solo enlace, inutilizable) y el fragmento textual de sus términos; filas crudas versionadas solo de fuentes con espejo permitido'
  - label: 'Honest scope'
    labelEs: 'Alcance honesto'
    value: 'Not a compliance certification, not a representation of any real bank, not a production scoring system, not investment advice, and no affiliation with any institution named in its sources; a passed test is evidence, not compliance'
    valueEs: 'No es una certificación de cumplimiento, ni la representación de ningún banco real, ni un sistema de scoring de producción, ni asesoría de inversión, y no tiene afiliación con ninguna institución nombrada en sus fuentes; una prueba aprobada es evidencia, no cumplimiento'

stack:
  [
    Python,
    riskvalidation,
    LightGBM,
    XGBoost,
    TabPFN,
    TypeScript,
    React,
    Vite,
    uPlot,
    '@fasl-work/caos-app-shell',
    GitHub Pages,
  ]
---
