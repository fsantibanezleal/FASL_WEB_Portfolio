---
title: 'Fragmenta, Blast Fragmentation Prediction Where the Learned Arms Explain Nothing on an Unseen Site'
titleEs: 'Fragmenta, Predicción de Fragmentación por Tronadura Donde los Brazos Aprendidos No Explican Nada en un Sitio No Visto'
slug: fragmenta
date: 2026-09-10
category: mining-optimization
family: faena
excerpt: 'Twelve arms predict the mean fragment size of a bench blast over sixteen cases and are scored under three ways of splitting the same table: six classical closed forms (Kuznetsov, Kuz-Ram, Swebrec, crush-zone, two published regressions) and six learned (a back-propagation network, support-vector regression, random forest, gradient boosting, a stack, a refit of the published regression). The result the product exists to report is negative: under leave-one-site-out not one of the six learned arms explains any variance, the best scoring -0.034 against a null model at -0.216, while the only two arms that stay positive on a site they have never seen are the two with fixed coefficients, the published regression at 0.802 and Kuznetsov at 0.311. The engine is the separately published blastfrag package. Lifecycle: building.'
excerptEs: 'Doce brazos predicen el tamaño medio de fragmento de una tronadura de banco sobre dieciséis casos y se puntúan bajo tres formas de dividir la misma tabla: seis formas cerradas clásicas (Kuznetsov, Kuz-Ram, Swebrec, zona de trituración, dos regresiones publicadas) y seis aprendidos (una red de retropropagación, regresión por vectores de soporte, bosque aleatorio, gradient boosting, un apilado, un reajuste de la regresión publicada). El resultado que el producto existe para reportar es negativo: bajo dejar-un-sitio-fuera ninguno de los seis brazos aprendidos explica varianza alguna, el mejor con -0,034 contra un modelo nulo en -0,216, mientras los únicos dos brazos que se mantienen positivos en un sitio nunca visto son los dos con coeficientes fijos, la regresión publicada en 0,802 y Kuznetsov en 0,311. El motor es el paquete blastfrag publicado por separado. Ciclo de vida: en construcción.'
icon: tabler:bomb
tags: [drill-and-blast, fragmentation, kuz-ram, swebrec, machine-learning, benchmark, negative-result, leave-one-site-out, mining, faena]
proprietary: false
assetPatterns: [fragmenta]
github: 'https://github.com/fsantibanezleal/CAOS_Fragmenta'
demo: 'https://fragmenta.fasl-work.com'
website: 'https://fragmenta.fasl-work.com'

challenge: 'Fragmentation prediction has a published ladder from Kuznetsov in 1973 to stacking ensembles, and most learned papers report a random split of blasts from the same site, where a model that memorises the site looks skilful. The question a mine planner needs answered is different: what does a method know about a site it has never seen? Answering it requires the same table scored three ways, a kill criterion written down before the run, and arms that refuse rather than guess when an input is missing. The source articles that hold the measured blasts are copyrighted and cannot be redistributed, so the corpus has to be reused as cited experimental facts with the PDFs kept out of the repository by a guard.'
challengeEs: 'La predicción de fragmentación tiene una escalera publicada desde Kuznetsov en 1973 hasta los ensambles apilados, y la mayoría de los artículos aprendidos reportan una división aleatoria de tronaduras del mismo sitio, donde un modelo que memoriza el sitio parece hábil. La pregunta que un planificador de mina necesita responder es distinta: qué sabe un método sobre un sitio que nunca ha visto. Responderla exige la misma tabla puntuada de tres maneras, un criterio de eliminación escrito antes de la corrida, y brazos que se niegan en lugar de adivinar cuando falta una entrada. Los artículos fuente que contienen las tronaduras medidas tienen derechos de autor y no pueden redistribuirse, así que el corpus tiene que reutilizarse como hechos experimentales citados con los PDF fuera del repositorio mediante una guarda.'

approach: 'Sixteen cases across six categories, from a corpus of 97 published bench blasts (doi:10.1002/nag.957), a 14-blast published hold-out (doi:10.1007/s10706-012-9496-3) and 5 open-access field blasts (doi:10.3390/app15031254, CC BY). Twelve arms appear on every case with either a number or a refusal that names the missing input: Kuznetsov, Kuz-Ram, Swebrec, the crush-zone model and two published regressions on the classical side; a Levenberg-Marquardt back-propagation network, support-vector regression, random forest, gradient boosting, a stack and a refit of the published regression on the learned side. Three split protocols score the same table: random, the published hold-out, and leave-one-site-out. The science lives upstream in blastfrag, a separately published package consumed as a pinned dependency (from PyPI since 0.04.005, with numbers identical to the git-tag pin); the product declares no package of its own and a CI guard fails the build if a project table ever appears. The bake runs through nine stages and a release gate that re-reads and re-hashes what it wrote and fails on a single unexplained abstention; a browser gate walks every route, six workbench tabs, three viewports and both themes over the built site before the deploy publishes it.'
approachEs: 'Dieciséis casos en seis categorías, desde un corpus de 97 tronaduras de banco publicadas (doi:10.1002/nag.957), un conjunto de prueba publicado de 14 tronaduras (doi:10.1007/s10706-012-9496-3) y 5 tronaduras de campo de acceso abierto (doi:10.3390/app15031254, CC BY). Doce brazos aparecen en cada caso con un número o con una negativa que nombra la entrada faltante: Kuznetsov, Kuz-Ram, Swebrec, el modelo de zona de trituración y dos regresiones publicadas por el lado clásico; una red de retropropagación Levenberg-Marquardt, regresión por vectores de soporte, bosque aleatorio, gradient boosting, un apilado y un reajuste de la regresión publicada por el lado aprendido. Tres protocolos de división puntúan la misma tabla: aleatorio, el conjunto de prueba publicado y dejar-un-sitio-fuera. La ciencia vive aguas arriba en blastfrag, un paquete publicado por separado y consumido como dependencia fijada (desde PyPI a partir de 0.04.005, con números idénticos al anclaje por etiqueta git); el producto no declara paquete propio y una guarda de CI falla la construcción si alguna vez aparece una tabla de proyecto. El horneado pasa por nueve etapas y una compuerta de release que relee y vuelve a calcular el hash de lo que escribió y falla ante una sola abstención sin explicar; una compuerta de navegador recorre cada ruta, seis pestañas del banco de trabajo, tres ventanas y ambos temas sobre el sitio construido antes de que el despliegue lo publique.'

businessContext: 'A blast engineer choosing a predictor for a new site wants to know which arm to trust before the first shot. Fragmenta answers with the honest protocol: on a site the model has never seen, the fitted arms are not skill, and the two fixed-coefficient formulas are the only ones that stay positive; the classical arm improves under leave-one-site-out, from negative on a random split, because it has nothing to overfit. The kill criterion, requiring both a positive score and a 0.10 margin, was rewritten after an earlier version had declared success on two failures, and it fired. Reproducibility is stated precisely: byte-identical within an environment, better than 3e-08 relative across operating systems, because two builds of the same pinned numpy reduce a dot product in a different order; both halves are gated in CI.'
businessContextEs: 'Un ingeniero de tronadura que elige un predictor para un sitio nuevo quiere saber en qué brazo confiar antes del primer disparo. Fragmenta responde con el protocolo honesto: en un sitio que el modelo nunca ha visto, los brazos ajustados no son habilidad, y las dos fórmulas de coeficientes fijos son las únicas que se mantienen positivas; el brazo clásico mejora bajo dejar-un-sitio-fuera, desde negativo en una división aleatoria, porque no tiene nada que sobreajustar. El criterio de eliminación, que exige un puntaje positivo y un margen de 0,10, se reescribió después de que una versión anterior declarara éxito sobre dos fallas, y se disparó. La reproducibilidad se declara con precisión: byte a byte idéntica dentro de un entorno, mejor que 3e-08 relativo entre sistemas operativos, porque dos construcciones del mismo numpy fijado reducen un producto punto en distinto orden; ambas mitades están en compuertas de CI.'

strategicValue: 'Fragmenta is the Faena member that reports a negative result as its headline and keeps it on the front page. The 0.03.000 release audited the frontend against the quantified ADR floors after its owner flagged the left rail: the rail had been 1,717 px tall in an 800 px viewport, the case control sixteen chips under six headings, the instrument 0.22 to 0.32 of the screen; every route now composes the shared shell, the case control is a select with groups, the rail ends inside the viewport, and 204 browser checks run over the deployed site. Its hub lifecycle is building: deployed is a fact, at-bar is its owner''s call, and the card says so.'
strategicValueEs: 'Fragmenta es el miembro de Faena que reporta un resultado negativo como su titular y lo mantiene en la portada. El release 0.03.000 auditó el frontend contra los pisos cuantificados de los ADR después de que su dueño señalara la barra izquierda: la barra medía 1.717 px de alto en una ventana de 800 px, el control de casos eran dieciséis fichas bajo seis encabezados, el instrumento ocupaba de 0,22 a 0,32 de la pantalla; cada ruta ahora compone el shell compartido, el control de casos es un selector con grupos, la barra termina dentro de la ventana, y 204 chequeos de navegador corren sobre el sitio desplegado. Su ciclo de vida en el hub es en construcción: desplegado es un hecho, a la altura es decisión de su dueño, y la tarjeta lo dice.'

kpis:
  - label: 'The honest protocol'
    labelEs: 'El protocolo honesto'
    baseline: 'A random split of blasts from the same site: memorising the site looks like skill'
    baselineEs: 'Una división aleatoria de tronaduras del mismo sitio: memorizar el sitio parece habilidad'
    result: 'Leave-one-site-out: best learned arm -0.034 against a null at -0.216; published regression 0.802 and Kuznetsov 0.311 the only positives'
    resultEs: 'Dejar-un-sitio-fuera: mejor brazo aprendido -0,034 contra un nulo en -0,216; la regresión publicada 0,802 y Kuznetsov 0,311 los únicos positivos'
    impact: 'The fitted arms are not skill on a site they have not seen'
    impactEs: 'Los brazos ajustados no son habilidad en un sitio que no han visto'
  - label: 'A kill criterion that fired'
    labelEs: 'Un criterio de eliminación que se disparó'
    baseline: 'An earlier version declared success on two failures'
    baselineEs: 'Una versión anterior declaró éxito sobre dos fallas'
    result: 'Both a positive score and a 0.10 margin required, written down before the run; the learned arms fail it'
    resultEs: 'Se exige un puntaje positivo y un margen de 0,10, escrito antes de la corrida; los brazos aprendidos no lo cumplen'
    impact: 'The site reports the failure instead of the margin'
    impactEs: 'El sitio reporta la falla en lugar del margen'
  - label: 'Reproducibility stated as measured'
    labelEs: 'Reproducibilidad declarada como medida'
    baseline: 'A hash match or nothing'
    baselineEs: 'Una coincidencia de hash o nada'
    result: 'Byte-identical within an environment; better than 3e-08 relative across operating systems over all sixteen cases; both gated in CI'
    resultEs: 'Byte a byte idéntica dentro de un entorno; mejor que 3e-08 relativo entre sistemas operativos en los dieciséis casos; ambas en compuertas de CI'
    impact: 'The pin can change and the diff decides'
    impactEs: 'El anclaje puede cambiar y el diff decide'

metrics:
  - label: 'Arms'
    labelEs: 'Brazos'
    value: '6 classical (Kuznetsov, Kuz-Ram, Swebrec, crush-zone, two published regressions) and 6 learned (Levenberg-Marquardt network, SVR, random forest, gradient boosting, a stack, a refit), every one on every case with a number or a named refusal'
    valueEs: '6 clásicos (Kuznetsov, Kuz-Ram, Swebrec, zona de trituración, dos regresiones publicadas) y 6 aprendidos (red Levenberg-Marquardt, SVR, bosque aleatorio, gradient boosting, un apilado, un reajuste), cada uno en cada caso con un número o una negativa nombrada'
  - label: 'Corpus'
    labelEs: 'Corpus'
    value: '97 published bench blasts, a 14-blast published hold-out, 5 open-access field blasts (CC BY); the copyrighted source articles stay in a private vault and a CI guard fails the build if a PDF is tracked'
    valueEs: '97 tronaduras de banco publicadas, un conjunto de prueba publicado de 14 tronaduras, 5 tronaduras de campo de acceso abierto (CC BY); los artículos fuente con derechos de autor quedan en una bóveda privada y una guarda de CI falla la construcción si se rastrea un PDF'
  - label: 'Engine'
    labelEs: 'Motor'
    value: 'blastfrag, published separately from its own repository (PyPI 0.2.2 since 2026-09-26); the product declares no package and a guard fails the build if a project table appears'
    valueEs: 'blastfrag, publicado por separado desde su propio repositorio (PyPI 0.2.2 desde el 2026-09-26); el producto no declara paquete y una guarda falla la construcción si aparece una tabla de proyecto'
  - label: 'Gates'
    labelEs: 'Compuertas'
    value: '51 Python tests, 16 TypeScript parity tests scoring the browser engine against the baked numbers, a release gate that re-reads and re-hashes what it wrote, a cross-environment tolerance gate, and a browser gate over the built site before the deploy publishes it'
    valueEs: '51 pruebas Python, 16 pruebas de paridad TypeScript que puntúan el motor del navegador contra los números horneados, una compuerta de release que relee y vuelve a calcular el hash de lo escrito, una compuerta de tolerancia entre entornos, y una compuerta de navegador sobre el sitio construido antes de que el despliegue lo publique'
  - label: 'Lifecycle and deploy'
    labelEs: 'Ciclo de vida y despliegue'
    value: 'Building (deployed is a fact; at-bar is the owner''s call); GitHub Pages at a custom domain with HTTPS enforced; version 0.04.005; MIT; part of the Faena hub'
    valueEs: 'En construcción (desplegado es un hecho; a la altura es decisión del dueño); GitHub Pages en dominio propio con HTTPS forzado; versión 0.04.005; MIT; parte del hub Faena'

stack: [Python, blastfrag, NumPy, scikit-learn, XGBoost, TypeScript, React, Vite, uPlot]
---
