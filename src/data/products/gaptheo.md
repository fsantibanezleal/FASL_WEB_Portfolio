---
title: 'GapTheo, a Visual Atlas of the Three-Gap Theorem'
titleEs: 'GapTheo, un Atlas Visual del Teorema de las Tres Distancias'
slug: gaptheo
date: 2026-09-24
category: research
family: science
excerpt: 'Place the first N multiples of an irrational number on a circle and the gaps between neighbours take at most three distinct lengths. GapTheo keeps that sorted finite orbit as the primary live calculation and synchronises it with eleven linked readings of the same object: Farey-cell geometry, continued fractions, return gaps, cyclic words, a lattice schematic, a two-interval exchange lens and a finite 0D Rips topology view. Twelve canonical cases, an exact finite direct oracle, generated certificates, a staged reference pipeline, a complete benchmark, the manuscript source and a deep wiki ship together. Seeded random placement, a farthest-point allocator and a two-frequency extension are explicit contrast regimes, never silently treated as inputs to the classical theorem. No new theorem or formal proof is claimed.'
excerptEs: 'Coloca los primeros N múltiplos de un número irracional sobre un círculo y las distancias entre vecinos toman a lo más tres largos distintos. GapTheo mantiene esa órbita finita ordenada como el cálculo vivo principal y la sincroniza con once lecturas enlazadas del mismo objeto: geometría de celdas de Farey, fracciones continuas, distancias de retorno, palabras cíclicas, un esquema de retículo, una lente de intercambio de dos intervalos y una vista de topología de Rips 0D finita. Doce casos canónicos, un oráculo directo finito exacto, certificados generados, un pipeline de referencia por etapas, un benchmark completo, la fuente del manuscrito y una wiki profunda se entregan juntos. La colocación aleatoria con semilla, un asignador de punto más lejano y una extensión de dos frecuencias son regímenes de contraste explícitos, nunca tratados en silencio como entradas del teorema clásico. No se afirma ningún teorema nuevo ni prueba formal.'
icon: tabler:math-function
tags: [mathematics, dynamical-systems, three-gap-theorem, continued-fractions, farey, visualization, reproducible-research, education]
proprietary: false
assetPatterns: [gaptheo]
github: 'https://github.com/fsantibanezleal/CAOS_RES_GapTheo'
demo: 'https://gaptheo.fasl-work.com'
website: 'https://gaptheo.fasl-work.com'

challenge: 'The three-gap theorem is one of the cleanest statements in Diophantine approximation, and one of the hardest to see: the same finite orbit is at once a set of points on a circle, a walk through the Farey tessellation, a truncated continued fraction, a cyclic word over two or three letters, an interval exchange and a lattice. Textbook figures show one of these at a time. A reader who wants to move N or the rotation number and watch every reading change together has no instrument for it, and a research application that tried to offer one would have to keep every view an exact, certified function of the same orbit rather than a decoration.'
challengeEs: 'El teorema de las tres distancias es una de las afirmaciones más limpias de la aproximación diofántica, y una de las más difíciles de ver: la misma órbita finita es a la vez un conjunto de puntos sobre un círculo, un recorrido por la teselación de Farey, una fracción continua truncada, una palabra cíclica sobre dos o tres letras, un intercambio de intervalos y un retículo. Las figuras de los textos muestran una de estas cosas a la vez. Un lector que quiera mover N o el número de rotación y ver cambiar todas las lecturas a la vez no tiene un instrumento para eso, y una aplicación de investigación que intentara ofrecerlo tendría que mantener cada vista como una función exacta y certificada de la misma órbita y no como una decoración.'

approach: 'The sorted finite orbit is the primary live calculation, computed by an exact finite direct oracle, and every other view is derived from it and kept in sync: the circular gap partition, the Farey-cell geometry with its continued-fraction certificate, return gaps, cyclic words, the lattice schematic, the two-interval exchange lens and a finite 0D Rips topology view. Twelve canonical cases cover the rotation numbers a reader would reach for, each with generated certificates and validation scripts, and the staged reference pipeline bakes them for the artifact-backed benchmark. Three contrast regimes are offered on purpose and labelled as such: seeded random placement, a farthest-point allocator and a two-frequency extension, none of which is an input to the classical theorem. The CAOS shell owns palette, typography, themes, cards, buttons, tabs, page structure and callouts; six routes, 35 documentation tabs and five architecture plates render in English and Spanish, in both themes, down to a 390 pixel viewport with no document overflow. The manuscript source and a public deep research review ship in the repository.'
approachEs: 'La órbita finita ordenada es el cálculo vivo principal, calculada por un oráculo directo finito exacto, y todas las demás vistas se derivan de ella y se mantienen sincronizadas: la partición circular de distancias, la geometría de celdas de Farey con su certificado de fracción continua, distancias de retorno, palabras cíclicas, el esquema de retículo, la lente de intercambio de dos intervalos y una vista de topología de Rips 0D finita. Doce casos canónicos cubren los números de rotación que un lector buscaría, cada uno con certificados generados y scripts de validación, y el pipeline de referencia por etapas los hornea para el benchmark respaldado por artefactos. Tres regímenes de contraste se ofrecen a propósito y se etiquetan como tales: colocación aleatoria con semilla, un asignador de punto más lejano y una extensión de dos frecuencias, ninguno de los cuales es una entrada del teorema clásico. El shell CAOS es dueño de la paleta, la tipografía, los temas, las tarjetas, los botones, las pestañas, la estructura de página y los avisos; seis rutas, 35 pestañas de documentación y cinco láminas de arquitectura se renderizan en inglés y español, en ambos temas, hasta una ventana de 390 píxeles sin desbordamiento del documento. La fuente del manuscrito y una revisión pública de investigación profunda se entregan en el repositorio.'

businessContext: 'GapTheo is a research and teaching instrument. Its value is that a claim about the orbit can be checked on the screen against a certificate rather than trusted from a figure, and that the eleven readings are one object rather than eleven drawings. That makes it usable in a lecture, in a reading group and as a reference implementation for anyone who needs the sorted orbit and its Farey certificate as data. No adoption or external user evidence is claimed; the value axis of the plan is recorded as unvalidated.'
businessContextEs: 'GapTheo es un instrumento de investigación y de enseñanza. Su valor está en que una afirmación sobre la órbita puede verificarse en pantalla contra un certificado en lugar de confiarse desde una figura, y en que las once lecturas son un solo objeto y no once dibujos. Eso lo hace usable en una clase, en un grupo de lectura y como implementación de referencia para quien necesite la órbita ordenada y su certificado de Farey como datos. No se afirma adopción ni evidencia de usuarios externos; el eje de valor del plan se registra como no validado.'

strategicValue: 'The product is complete as a research application: twelve cases, eleven linked readings, the pipeline, the benchmark, the manuscript and the wiki are implemented and tested, and it makes no claim beyond them. Its most instructive release is v0.03.002, which corrected a visual-ownership failure in v0.03.000: a bespoke teal and green theme, decorative gradients, custom fonts, local copies of the shell and promotional headings had crept into the app, and they were removed so that the shared shell owns the visual layer again; CI now rejects app-owned theme, palette, font and shell-primitive styling. Production QA covers every route and top-level tab in both languages, the five plates in both themes, direct routes and a phone viewport, and verifies literal labels such as the circular gap partition and the Farey and continued-fraction certificate in both languages.'
strategicValueEs: 'El producto está completo como aplicación de investigación: doce casos, once lecturas enlazadas, el pipeline, el benchmark, el manuscrito y la wiki están implementados y probados, y no afirma nada más allá de eso. Su release más instructivo es v0.03.002, que corrigió una falla de propiedad visual en v0.03.000: un tema propio verde azulado, gradientes decorativos, fuentes personalizadas, copias locales del shell y titulares promocionales se habían colado en la aplicación, y se eliminaron para que el shell compartido volviera a ser dueño de la capa visual; CI ahora rechaza tema, paleta, fuentes y estilos de primitivas del shell propios de la aplicación. La verificación de producción cubre cada ruta y pestaña de primer nivel en ambos idiomas, las cinco láminas en ambos temas, rutas directas y una ventana de teléfono, y verifica etiquetas literales como la partición circular de distancias y el certificado de Farey y fracción continua en ambos idiomas.'

kpis:
  - label: 'One orbit, eleven exact readings'
    labelEs: 'Una órbita, once lecturas exactas'
    baseline: 'One textbook figure at a time'
    baselineEs: 'Una figura de texto a la vez'
    result: 'The sorted finite orbit is the live primary calculation; Farey cells, continued fractions, return gaps, cyclic words, lattice, interval exchange and Rips topology are derived from it and stay in sync as N and the rotation number move'
    resultEs: 'La órbita finita ordenada es el cálculo vivo principal; celdas de Farey, fracciones continuas, distancias de retorno, palabras cíclicas, retículo, intercambio de intervalos y topología de Rips se derivan de ella y siguen sincronizadas cuando N y el número de rotación se mueven'
    impact: 'A claim is checked against a certificate, not a picture'
    impactEs: 'Una afirmación se verifica contra un certificado, no contra un dibujo'
  - label: 'Contrast regimes kept apart'
    labelEs: 'Regímenes de contraste separados'
    baseline: 'Experiments that quietly become inputs to the theorem'
    baselineEs: 'Experimentos que en silencio se vuelven entradas del teorema'
    result: 'Seeded random placement, a farthest-point allocator and a two-frequency extension are labelled as contrasts and never fed to the classical statement'
    resultEs: 'La colocación aleatoria con semilla, un asignador de punto más lejano y una extensión de dos frecuencias se etiquetan como contrastes y nunca se entregan al enunciado clásico'
    impact: 'The theorem stays the theorem'
    impactEs: 'El teorema sigue siendo el teorema'
  - label: 'A visual regression, owned and reverted'
    labelEs: 'Una regresión visual, reconocida y revertida'
    baseline: 'v0.03.000 shipped a bespoke theme over the shared shell'
    baselineEs: 'v0.03.000 salió con un tema propio sobre el shell compartido'
    result: 'v0.03.002 removed it; the shell owns the visual layer and CI rejects app-owned theming'
    resultEs: 'v0.03.002 lo eliminó; el shell es dueño de la capa visual y CI rechaza el tema propio de la aplicación'
    impact: 'The fleet standard is enforced, not assumed'
    impactEs: 'El estándar de la flota se aplica, no se supone'

metrics:
  - label: 'Cases and readings'
    labelEs: 'Casos y lecturas'
    value: '12 canonical cases, 11 linked mathematical readings, generated certificates and validation scripts, a staged reference pipeline and an artifact-backed benchmark'
    valueEs: '12 casos canónicos, 11 lecturas matemáticas enlazadas, certificados generados y scripts de validación, un pipeline de referencia por etapas y un benchmark respaldado por artefactos'
  - label: 'Documentation'
    labelEs: 'Documentación'
    value: '6 routes, 35 documentation tabs, 5 architecture plates, the manuscript source and a public deep research review, in English and Spanish'
    valueEs: '6 rutas, 35 pestañas de documentación, 5 láminas de arquitectura, la fuente del manuscrito y una revisión pública de investigación profunda, en inglés y español'
  - label: 'Rendered verification'
    labelEs: 'Verificación renderizada'
    value: 'Every route and top-level tab in both languages, the plates in both themes, direct routes, a 390 by 844 viewport with no document overflow, no gradients and no opaque-black SVG marks; literal labels verified in both languages'
    valueEs: 'Cada ruta y pestaña de primer nivel en ambos idiomas, las láminas en ambos temas, rutas directas, una ventana de 390 por 844 sin desbordamiento, sin gradientes y sin marcas SVG negras opacas; etiquetas literales verificadas en ambos idiomas'
  - label: 'What is not claimed'
    labelEs: 'Lo que no se afirma'
    value: 'No new theorem, no formal proof, no adoption or external user evidence'
    valueEs: 'Ningún teorema nuevo, ninguna prueba formal, ninguna adopción ni evidencia de usuarios externos'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'GitHub Pages at a custom domain, the exact main commit published; shared @fasl-work/caos-app-shell'
    valueEs: 'GitHub Pages en dominio propio, el commit exacto de main publicado; shell compartido @fasl-work/caos-app-shell'

stack: [TypeScript, React, Vite, Python, NumPy, KaTeX]
---
