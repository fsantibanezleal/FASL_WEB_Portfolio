---
title: 'SymLab, Symbolic Regression Lab (Accuracy and Recovery, Reported Separately)'
titleEs: 'SymLab, Laboratorio de Regresión Simbólica (Exactitud y Recuperación, Reportadas por Separado)'
slug: symlab
date: 2026-07-28
category: scientific-ml
family: labs
excerpt: 'A public research lab on symbolic regression: recovering an explicit closed-form expression from data, rather than fitting a predictor nobody can read. Its reason to exist is one honest measurement: accuracy and structural recovery are different claims, and a method can clear R2 above 0.999 while returning a structure with nothing in common with the law that generated the data. SymLab reports the two separately, on every case, and never averages them into one number. It runs multiple search families (genetic programming with linear scaling and deduplication, sparse regression) at published budgets, live in the browser, on benchmark laws where the true expression is known.'
excerptEs: 'Un laboratorio público de investigación sobre regresión simbólica: recuperar una expresión explícita en forma cerrada desde datos, en vez de ajustar un predictor que nadie puede leer. Su razón de existir es una medición honesta: exactitud y recuperación estructural son afirmaciones distintas, y un método puede superar R2 sobre 0.999 devolviendo una estructura que no tiene nada en común con la ley que generó los datos. SymLab reporta las dos por separado, en cada caso, y nunca las promedia en un solo número. Corre varias familias de búsqueda (programación genética con escalado lineal y deduplicación, regresión rala) a presupuestos publicados, en vivo en el navegador, sobre leyes de benchmark donde la expresión verdadera se conoce.'
icon: tabler:math-function
tags: [scientific-ml, symbolic-regression, genetic-programming, sparse-regression, interpretability, benchmark, honesty]
proprietary: false
featured: false
assetPatterns: [symlab]
github: 'https://github.com/fsantibanezleal/CAOS_SYMLAB'
demo: 'https://symlab.fasl-work.com'
website: 'https://symlab.fasl-work.com'

challenge: 'Symbolic regression promises the thing plain machine learning does not: an equation you can read, not a black box. But the field is scored almost entirely on accuracy (R2 on held-out data), and accuracy is the wrong claim if the goal is discovery. A method can fit a curve almost perfectly and hand back an expression that is structurally nothing like the underlying law. Reported as a single averaged number, that failure is invisible, so "solved" benchmarks routinely reward getting the wrong equation.'
challengeEs: 'La regresión simbólica promete lo que el machine learning simple no da: una ecuación que puedes leer, no una caja negra. Pero el campo se puntúa casi por completo en exactitud (R2 en datos retenidos), y la exactitud es la afirmación equivocada si el objetivo es descubrir. Un método puede ajustar una curva casi perfecto y devolver una expresión estructuralmente nada parecida a la ley subyacente. Reportado como un solo número promediado, esa falla es invisible, así que los benchmarks "resueltos" premian rutinariamente entregar la ecuación equivocada.'

approach: 'SymLab makes the measurement the product. On every case it reports accuracy (R2 on test) and structural recovery (did the returned expression match the true law) as two separate columns, never averaged. It runs search families with nothing in common on the same problems at published budgets: genetic programming (a Koza baseline, plus linear scaling and deduplication variants) and sparse regression over a library of candidate terms. The benchmark laws are ones where the ground-truth expression is known (for example the Feynman set), so recovery can be scored exactly by normalised edit distance to the true structure, not guessed. On the Feynman Gaussian, for instance, sparse regression reaches R2 of 1 minus 1.8e-09 in effectively zero seconds and still does not recover the law, and neither does any genetic-programming configuration; every accuracy-only benchmark would score this as solved. It runs live in the browser so anyone can watch a near-perfect fit return the wrong structure.'
approachEs: 'SymLab hace de la medición el producto. En cada caso reporta exactitud (R2 en test) y recuperación estructural (la expresión devuelta coincidió con la ley verdadera) como dos columnas separadas, nunca promediadas. Corre familias de búsqueda sin nada en común sobre los mismos problemas a presupuestos publicados: programación genética (una base Koza, más variantes con escalado lineal y deduplicación) y regresión rala sobre una biblioteca de términos candidatos. Las leyes de benchmark son aquellas donde la expresión verdadera se conoce (por ejemplo el conjunto de Feynman), así que la recuperación se puntúa exacto por distancia de edición normalizada a la estructura verdadera, no se adivina. En la Gaussiana de Feynman, por ejemplo, la regresión rala alcanza R2 de 1 menos 1.8e-09 en efectivamente cero segundos y aun así no recupera la ley, y tampoco lo hace ninguna configuración de programación genética; todo benchmark de solo-exactitud puntuaría esto como resuelto. Corre en vivo en el navegador para que cualquiera vea un ajuste casi perfecto devolver la estructura equivocada.'

businessContext: 'Anywhere a model has to be trusted, explained, or turned into a law rather than a lookup (physics, engineering, geometallurgy, any regulated setting), an interpretable closed-form model is worth far more than a black box of equal accuracy, but only if it is the RIGHT form. SymLab is the honest measuring stick for that: it separates "fits well" from "found the law", which is exactly the distinction a decision-maker needs before trusting a discovered equation, and exactly the distinction most tooling hides.'
businessContextEs: 'En cualquier lugar donde un modelo deba ser confiable, explicable, o convertido en una ley en vez de una tabla de consulta (física, ingeniería, geometalurgia, cualquier entorno regulado), un modelo interpretable en forma cerrada vale mucho más que una caja negra de igual exactitud, pero solo si es la forma CORRECTA. SymLab es la vara honesta para eso: separa "ajusta bien" de "encontró la ley", que es justo la distinción que un tomador de decisiones necesita antes de confiar en una ecuación descubierta, y justo la distinción que la mayoría de las herramientas esconde.'

strategicValue: 'SymLab is a method-honest benchmark for symbolic regression that refuses the single-number score the field defaults to. By reporting accuracy and recovery separately on known-law cases, across genetic-programming and sparse-regression families at published budgets, it makes visible the failure the accuracy-only literature rewards: a near-perfect fit with the wrong structure. It is the same discipline running through the rest of the portfolio, applied to interpretability: measure the two claims separately and let the honest gap show.'
strategicValueEs: 'SymLab es un benchmark honesto con el método para regresión simbólica que rechaza el puntaje de un solo número que el campo asume por defecto. Al reportar exactitud y recuperación por separado sobre casos de ley conocida, entre familias de programación genética y regresión rala a presupuestos publicados, hace visible la falla que la literatura de solo-exactitud premia: un ajuste casi perfecto con la estructura equivocada. Es la misma disciplina que atraviesa el resto del portafolio, aplicada a la interpretabilidad: medir las dos afirmaciones por separado y dejar que la brecha honesta se vea.'

kpis:
  - label: 'Accuracy vs recovery'
    labelEs: 'Exactitud vs recuperación'
    baseline: 'One averaged score (R2), which a wrong equation can win'
    baselineEs: 'Un puntaje promediado (R2), que una ecuación equivocada puede ganar'
    result: 'Two separate columns on every case: R2 on test AND structural recovery by edit distance to the true law'
    resultEs: 'Dos columnas separadas en cada caso: R2 en test Y recuperación estructural por distancia de edición a la ley verdadera'
    impact: 'You see when a near-perfect fit found the wrong structure'
    impactEs: 'Ves cuándo un ajuste casi perfecto encontró la estructura equivocada'
  - label: 'The headline case'
    labelEs: 'El caso de portada'
    baseline: 'Accuracy-only benchmarks score it solved'
    baselineEs: 'Los benchmarks de solo-exactitud lo puntúan resuelto'
    result: 'Feynman Gaussian: sparse regression R2 = 1 - 1.8e-09 in ~0 s, recovered = no; no GP config recovers it either'
    resultEs: 'Gaussiana de Feynman: regresión rala R2 = 1 - 1.8e-09 en ~0 s, recuperada = no; ninguna config GP la recupera tampoco'
    impact: 'A concrete, live example of the accuracy-recovery gap'
    impactEs: 'Un ejemplo concreto y en vivo de la brecha exactitud-recuperación'
  - label: 'Search families'
    labelEs: 'Familias de búsqueda'
    baseline: 'One method'
    baselineEs: 'Un método'
    result: 'Genetic programming (Koza, + linear scaling, + deduplication) and sparse regression, at published budgets'
    resultEs: 'Programación genética (Koza, + escalado lineal, + deduplicación) y regresión rala, a presupuestos publicados'
    impact: 'Two families with nothing in common, judged the same honest way'
    impactEs: 'Dos familias sin nada en común, juzgadas de la misma forma honesta'

metrics:
  - label: 'What it measures'
    labelEs: 'Qué mide'
    value: 'Symbolic regression: closed-form expression recovery from data, accuracy and recovery reported separately'
    valueEs: 'Regresión simbólica: recuperación de expresión en forma cerrada desde datos, exactitud y recuperación reportadas por separado'
  - label: 'Search families'
    labelEs: 'Familias de búsqueda'
    value: 'Genetic programming (Koza baseline + linear scaling + deduplication) and non-GP sparse regression'
    valueEs: 'Programación genética (base Koza + escalado lineal + deduplicación) y regresión rala no-GP'
  - label: 'Benchmarks'
    labelEs: 'Benchmarks'
    value: 'Known-law cases (e.g. the Feynman set), where recovery is scored exactly by edit distance to the true structure'
    valueEs: 'Casos de ley conocida (p. ej. el conjunto de Feynman), donde la recuperación se puntúa exacto por distancia de edición a la estructura verdadera'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Runs live in the browser; static SPA on GitHub Pages'
    valueEs: 'Corre en vivo en el navegador; SPA estática en GitHub Pages'

stack: [Python, symbolic-regression, genetic-programming, sparse-regression, TypeScript, React, Vite]
---
