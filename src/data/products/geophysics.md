---
title: 'Inverse Earth Studio, a Geophysical Inversion Workbench on Original Synthetic Earths'
titleEs: 'Inverse Earth Studio, un Banco de Trabajo de Inversión Geofísica sobre Tierras Sintéticas Originales'
slug: geophysics
date: 2026-09-24
category: geophysics
family: labs
excerpt: 'A bilingual geophysics research workbench covering 3D potential fields, layered magnetotellurics, acoustic full-waveform inversion, learned inverses and joint cross-gradient inversion, on twenty distinct geological constructors with six computed conditions each: 120 artifacts and 324 method results, replayed in the browser with an inversion scrubber, a 3D scene with cut, threshold and rotation, and live MT parity. Fifteen numerical tests include an executed Deepwave CUDA adjoint derivative, independent Choclo and SimPEG prism checks, complex MT parity and checkpoint reload; the learned split holds 800, 160 and 160 independent realizations. Original synthetic examples, not field validation; no posterior uncertainty or algorithmic novelty is claimed. Version 2 replaced a first version its owner rejected.'
excerptEs: 'Un banco de trabajo bilingüe de investigación geofísica que cubre campos potenciales 3D, magnetotelúrica por capas, inversión acústica de forma de onda completa, inversas aprendidas e inversión conjunta por gradiente cruzado, sobre veinte constructores geológicos distintos con seis condiciones calculadas cada uno: 120 artefactos y 324 resultados de método, reproducidos en el navegador con un deslizador de inversión, una escena 3D con corte, umbral y rotación, y paridad MT en vivo. Quince pruebas numéricas incluyen una derivada adjunta CUDA de Deepwave ejecutada, verificaciones independientes de prismas con Choclo y SimPEG, paridad MT compleja y recarga de checkpoints; la partición aprendida contiene 800, 160 y 160 realizaciones independientes. Ejemplos sintéticos originales, no validación de campo; no se afirma incertidumbre posterior ni novedad algorítmica. La versión 2 reemplazó a una primera versión que su dueño rechazó.'
icon: tabler:layers-intersect
tags: [geophysics, inversion, gravity, magnetotellurics, full-waveform-inversion, simpeg, deepwave, cross-gradient, scientific-ml, reproducible-research]
proprietary: false
assetPatterns: [geophysics]
github: 'https://github.com/fsantibanezleal/CAOS_Geophysics'
demo: 'https://geophysics.ml.fasl-work.com'
website: 'https://geophysics.ml.fasl-work.com'

challenge: 'Geophysical inversion is taught one method at a time on one example each: a gravity anomaly here, a magnetotelluric sounding there, a seismic velocity model somewhere else, each with its own conventions, its own regularization and its own way of hiding non-uniqueness. A workbench that wants to show what a surface survey can and cannot recover has to hold several physics on the same geological cases, run every method on every case under the same conditions, and let the reader watch the inversion converge rather than read that it did. The first version of this product, with a bespoke look and a course''s material it had no permission to redistribute, was rejected by its owner; the second is built on original synthetic earths and the shared CAOS shell.'
challengeEs: 'La inversión geofísica se enseña un método a la vez con un ejemplo cada uno: una anomalía gravimétrica aquí, un sondaje magnetotelúrico allá, un modelo de velocidad sísmica en otra parte, cada uno con sus convenciones, su regularización y su propia forma de ocultar la no unicidad. Un banco de trabajo que quiera mostrar qué puede y qué no puede recuperar un levantamiento de superficie tiene que sostener varias físicas sobre los mismos casos geológicos, correr cada método en cada caso bajo las mismas condiciones, y dejar que el lector vea converger la inversión en lugar de leer que convergió. La primera versión de este producto, con un aspecto propio y el material de un curso que no tenía permiso de redistribuir, fue rechazada por su dueño; la segunda está construida sobre tierras sintéticas originales y el shell CAOS compartido.'

approach: 'Twenty distinct geological constructors (intrusive stocks, layered basins, faults, dykes and the like) each computed under six conditions produce 120 artifacts and 324 method results, baked locally on an RTX 4070 as the authoritative accelerator and replayed in the browser: the pipeline never runs in CI. The physics: 3D potential fields (gravity) with SimPEG integral kernels checked against independent Choclo and SimPEG prism computations; layered magnetotellurics with complex parity tests and a live browser solve; acoustic full-waveform inversion with an executed Deepwave CUDA adjoint derivative; learned inverses (a CNN and an autoencoder on 800, 160 and 160 independent realizations, the inverse CNN estimating column density rather than a 3D volume); and joint cross-gradient inversion coupling two physics on one earth. The App is one case at a time: a case selector with its hypothesis, the experiment and the inverse method (sparse IRLS among them), an inversion replay scrubber over the computed states, a 3D scene of the known and the recovered geology with survey plane, cut, threshold and rotation, and an export of the run. Six routes on the shared shell, both languages and themes; fifteen frontend tests cover grid orientation, live MT parity, isosurface orientation and bilingual rendering.'
approachEs: 'Veinte constructores geológicos distintos (stocks intrusivos, cuencas estratificadas, fallas, diques y similares) calculados cada uno bajo seis condiciones producen 120 artefactos y 324 resultados de método, horneados localmente en una RTX 4070 como acelerador autoritativo y reproducidos en el navegador: el pipeline nunca corre en CI. La física: campos potenciales 3D (gravedad) con núcleos integrales de SimPEG verificados contra cálculos de prismas independientes con Choclo y SimPEG; magnetotelúrica por capas con pruebas de paridad compleja y una resolución en vivo en el navegador; inversión acústica de forma de onda completa con una derivada adjunta CUDA de Deepwave ejecutada; inversas aprendidas (una CNN y un autoencoder sobre 800, 160 y 160 realizaciones independientes, con la CNN inversa estimando densidad de columna y no un volumen 3D); e inversión conjunta por gradiente cruzado acoplando dos físicas sobre una misma tierra. La App es un caso a la vez: un selector de caso con su hipótesis, el experimento y el método inverso (IRLS disperso entre ellos), un deslizador de reproducción de la inversión sobre los estados calculados, una escena 3D de la geología conocida y la recuperada con plano de levantamiento, corte, umbral y rotación, y una exportación de la corrida. Seis rutas sobre el shell compartido, ambos idiomas y temas; quince pruebas de frontend cubren la orientación de la grilla, la paridad MT en vivo, la orientación de isosuperficies y el renderizado bilingüe.'

businessContext: 'For a geoscience student or a reviewer the value is seeing, on the same earth, what gravity alone recovers, what a joint inversion adds and where a learned inverse stops being trustworthy, with the numerical checks that back each method visible on the site. The boundaries are on the page: original synthetic examples, no field validation, no posterior uncertainty and no algorithmic novelty claimed; the inverse network estimates column density, not a volume; Devito, MTpy/MTH5 and PGI were surveyed and are not runtime implementations; the reference course was researched and cited, and none of its notebooks, media or data were redistributed. EDI import, PGI and ensemble uncertainty stay open in a public issue rather than in a roadmap sentence.'
businessContextEs: 'Para un estudiante de geociencias o un revisor, el valor está en ver, sobre la misma tierra, qué recupera la gravedad sola, qué agrega una inversión conjunta y dónde una inversa aprendida deja de ser confiable, con las verificaciones numéricas que respaldan cada método visibles en el sitio. Los límites están en la página: ejemplos sintéticos originales, sin validación de campo, sin incertidumbre posterior ni novedad algorítmica afirmadas; la red inversa estima densidad de columna, no un volumen; Devito, MTpy/MTH5 y PGI fueron revisados y no son implementaciones en tiempo de ejecución; el curso de referencia fue investigado y citado, y ninguno de sus cuadernos, medios o datos fue redistribuido. La importación EDI, PGI y la incertidumbre por ensambles siguen abiertas en un issue público y no en una frase de hoja de ruta.'

strategicValue: 'Inverse Earth Studio is the case in the line where a rejected version was withdrawn in full: the whole-project complete claim was retracted, the bespoke palette, fonts and slogan headings were removed in the 0.03.000 correction so the shared shell owns the visual layer, the scientific explanations were rewritten in both languages, and every case was regenerated on refined grids. Both public hosts (the ML VPS and GitHub Pages) were verified byte for byte against the local build: 120 experiment hashes, six route documents and three model files. Engineering verification is stated for what it is; the owner''s acceptance of the new design is not inferred, and the plan records the lifecycle as building.'
strategicValueEs: 'Inverse Earth Studio es el caso de la línea en que una versión rechazada fue retirada por completo: la afirmación de proyecto terminado se retractó, la paleta, las fuentes y los titulares de eslogan propios se eliminaron en la corrección 0.03.000 para que el shell compartido sea dueño de la capa visual, las explicaciones científicas se reescribieron en ambos idiomas, y cada caso se regeneró sobre grillas refinadas. Ambos hosts públicos (el VPS de ML y GitHub Pages) se verificaron byte a byte contra la construcción local: 120 hashes de experimentos, seis documentos de ruta y tres archivos de modelo. La verificación de ingeniería se declara como lo que es; la aceptación del nuevo diseño por su dueño no se infiere, y el plan registra el ciclo de vida como en construcción.'

kpis:
  - label: 'Several physics on the same earths'
    labelEs: 'Varias físicas sobre las mismas tierras'
    baseline: 'One method, one example, its own conventions'
    baselineEs: 'Un método, un ejemplo, sus propias convenciones'
    result: '20 geological constructors under 6 conditions each: 120 artifacts and 324 method results across gravity, layered MT, acoustic FWI, learned inverses and joint cross-gradient inversion'
    resultEs: '20 constructores geológicos bajo 6 condiciones cada uno: 120 artefactos y 324 resultados de método entre gravedad, MT por capas, FWI acústica, inversas aprendidas e inversión conjunta por gradiente cruzado'
    impact: 'What a survey recovers is compared, not asserted'
    impactEs: 'Lo que recupera un levantamiento se compara, no se afirma'
  - label: 'Numerics checked against codes the author does not own'
    labelEs: 'Numérica verificada contra códigos ajenos'
    baseline: 'Self-consistency'
    baselineEs: 'Autoconsistencia'
    result: 'Independent Choclo and SimPEG prism checks, an executed Deepwave CUDA adjoint derivative, complex MT parity, checkpoint reload and split uniqueness among 15 numerical tests'
    resultEs: 'Verificaciones independientes de prismas con Choclo y SimPEG, una derivada adjunta CUDA de Deepwave ejecutada, paridad MT compleja, recarga de checkpoints y unicidad de la partición entre 15 pruebas numéricas'
    impact: 'The replayed numbers are the checked numbers'
    impactEs: 'Los números reproducidos son los números verificados'
  - label: 'A rejected version, withdrawn'
    labelEs: 'Una versión rechazada, retirada'
    baseline: 'A first version with a bespoke look and material it could not redistribute'
    baselineEs: 'Una primera versión con aspecto propio y material que no podía redistribuir'
    result: 'Version 2 on original synthetic earths and the shared shell; 0.03.000 removed the custom palette, fonts and slogans and rewrote the science in EN and ES; the complete claim retracted'
    resultEs: 'Versión 2 sobre tierras sintéticas originales y el shell compartido; 0.03.000 eliminó paleta, fuentes y eslóganes propios y reescribió la ciencia en EN y ES; la afirmación de completitud retractada'
    impact: 'The record says building, not done'
    impactEs: 'El registro dice en construcción, no terminado'

metrics:
  - label: 'Physics'
    labelEs: 'Física'
    value: '3D potential fields (gravity, SimPEG integral kernels); layered magnetotellurics with a live browser solve; acoustic full-waveform inversion (Deepwave); learned inverses (CNN, autoencoder; 800/160/160 independent realizations); joint cross-gradient inversion'
    valueEs: 'Campos potenciales 3D (gravedad, núcleos integrales de SimPEG); magnetotelúrica por capas con resolución en vivo en el navegador; inversión acústica de forma de onda completa (Deepwave); inversas aprendidas (CNN, autoencoder; 800/160/160 realizaciones independientes); inversión conjunta por gradiente cruzado'
  - label: 'The App'
    labelEs: 'La App'
    value: 'One case at a time: case, experiment and inverse method selectors; an inversion replay scrubber over the computed states; a 3D scene of known and recovered geology with survey plane, cut, threshold and rotation; run export'
    valueEs: 'Un caso a la vez: selectores de caso, experimento y método inverso; un deslizador de reproducción de la inversión sobre los estados calculados; una escena 3D de la geología conocida y la recuperada con plano de levantamiento, corte, umbral y rotación; exportación de la corrida'
  - label: 'Verification'
    labelEs: 'Verificación'
    value: '15 numerical and 15 frontend tests; both hosts match the local build byte for byte (120 experiment hashes, 6 route documents, 3 model files); browser QA over 20 cases, 11 algorithm panels, 17 benchmark selections, both themes and languages, 390 to 2560 px'
    valueEs: '15 pruebas numéricas y 15 de frontend; ambos hosts coinciden byte a byte con la construcción local (120 hashes de experimentos, 6 documentos de ruta, 3 archivos de modelo); QA de navegador sobre 20 casos, 11 paneles de algoritmo, 17 selecciones de benchmark, ambos temas e idiomas, de 390 a 2560 px'
  - label: 'Not claimed'
    labelEs: 'No afirmado'
    value: 'Field validation, posterior uncertainty, algorithmic novelty, a 3D volume from the inverse CNN, runtime Devito, MTpy/MTH5 or PGI; EDI, PGI and ensemble uncertainty remain open in issue #10'
    valueEs: 'Validación de campo, incertidumbre posterior, novedad algorítmica, un volumen 3D desde la CNN inversa, Devito, MTpy/MTH5 o PGI en tiempo de ejecución; EDI, PGI e incertidumbre por ensambles siguen abiertos en el issue #10'
  - label: 'Deploy and licence'
    labelEs: 'Despliegue y licencia'
    value: 'GitHub Pages plus a static mirror on the ML VPS over HTTPS; version 0.03.000; Apache-2.0 code and CC-BY-4.0 content; the bake runs locally on the RTX 4070, never in CI'
    valueEs: 'GitHub Pages más un espejo estático en el VPS de ML sobre HTTPS; versión 0.03.000; código Apache-2.0 y contenido CC-BY-4.0; el horneado corre localmente en la RTX 4070, nunca en CI'

stack: [Python, SimPEG, Deepwave, PyTorch, NumPy, TypeScript, React, Vite, Three.js]
---
