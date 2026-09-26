---
title: 'Rajo, Open Pits Seen from Orbit'
titleEs: 'Rajo, Rajos Abiertos Vistos desde la Órbita'
slug: rajo
date: 2026-09-08
category: 3d-visualization
family: geo
excerpt: 'An open observatory of the world''s great open-pit mines and lithium evaporation ponds over four decades: a 3D globe with real relief, a yearly time-lapse per site from Landsat 1985 to Sentinel-2 today, spectral and mineral indices computed live in the browser from the raw cloud-optimized GeoTIFFs, a learned mine-footprint segmentation running in the browser, change points on the mined-area signal, and the elevation difference between the 2000 and the 2011 to 2015 global surfaces. Thirty sites, Chilean copper at the core; no backend, no account, nothing uploaded.'
excerptEs: 'Un observatorio abierto de los grandes rajos del mundo y de las pozas de evaporación de litio a lo largo de cuatro décadas: un globo 3D con relieve real, un lapso anual por sitio desde Landsat 1985 hasta Sentinel-2 hoy, índices espectrales y minerales calculados en vivo en el navegador desde los GeoTIFF optimizados en la nube, una segmentación aprendida de la huella minera corriendo en el navegador, puntos de cambio sobre la señal de área minada y la diferencia de elevación entre las superficies globales de 2000 y de 2011 a 2015. Treinta sitios, el cobre chileno al centro; sin servidor, sin cuenta, nada se sube.'
icon: tabler:world
tags: [remote-sensing, landsat, sentinel-2, mining, open-pit, 3d-globe, maplibre, onnx, webgpu, change-points, dem, chile, open-data]
proprietary: false
assetPatterns: [rajo]
github: 'https://github.com/fsantibanezleal/CAOS_Rajo'
demo: 'https://rajo.fasl-work.com'
website: 'https://rajo.fasl-work.com'

challenge: 'Open-pit mines are among the largest objects people build, and their growth is recorded in public satellite archives going back forty years, yet nobody can watch a pit grow, measure its footprint or see how much rock moved without a GIS licence and a week of downloads. The reference polygons exist (Maus 2022, Tang and Werner 2023), the imagery is open (Landsat Collection 2, Sentinel-2 L2A as cloud-optimized GeoTIFFs), the elevation models are open (SRTM, Copernicus DEM), and none of it is joined into something a reader can open.'
challengeEs: 'Los rajos abiertos están entre los objetos más grandes que la gente construye, y su crecimiento queda registrado en archivos satelitales públicos de cuarenta años, pero nadie puede ver crecer un rajo, medir su huella o saber cuánta roca se movió sin una licencia de SIG y una semana de descargas. Los polígonos de referencia existen (Maus 2022, Tang y Werner 2023), las imágenes son abiertas (Landsat Colección 2, Sentinel-2 L2A como GeoTIFF optimizados en la nube), los modelos de elevación son abiertos (SRTM, DEM Copernicus), y nada de eso está unido en algo que un lector pueda abrir.'

approach: 'An offline pipeline bakes, for each of thirty sites, the yearly frames from 1985 to today (Landsat, then Sentinel-2), the classical and learned masks, the mined-area series with its change points (ruptures), the dense series of every clear Sentinel-2 date since 2017 with its harmonic breaks, and the elevation difference between the year-2000 radar surface and the 2011 to 2015 Copernicus surface; 7,107 files, validated and checksummed, committed as compact WebP frames and JSON. Two models are trained on the Jasansky 2024 tiles and exported to ONNX: a random forest walked from flat node arrays and a U-Net on WebGPU or WASM. The site is a static replay of those artifacts on a MapLibre globe with 3D terrain, plus three live lanes in the browser: range reads of the latest clear Sentinel-2 scene, nine indices with Otsu, k-means and spectral angle in a Web Worker, and the two learned masks through onnxruntime-web.'
approachEs: 'Una canalización fuera de línea calcula, para cada uno de treinta sitios, los fotogramas anuales de 1985 a hoy (Landsat, luego Sentinel-2), las máscaras clásicas y aprendidas, la serie de área minada con sus puntos de cambio (ruptures), la serie densa de cada fecha despejada de Sentinel-2 desde 2017 con sus quiebres armónicos, y la diferencia de elevación entre la superficie de radar del año 2000 y la superficie Copernicus de 2011 a 2015; 7.107 archivos, validados y con suma de verificación, versionados como fotogramas WebP compactos y JSON. Dos modelos se entrenan sobre las teselas de Jasansky 2024 y se exportan a ONNX: un bosque aleatorio recorrido desde arreglos planos de nodos y una U-Net sobre WebGPU o WASM. El sitio es una reproducción estática de esos artefactos sobre un globo MapLibre con terreno 3D, más tres carriles en vivo en el navegador: lecturas por rango de la última escena despejada de Sentinel-2, nueve índices con Otsu, k-means y ángulo espectral en un Web Worker, y las dos máscaras aprendidas a través de onnxruntime-web.'

businessContext: 'For a reader the product answers, per site, four questions the Atlas and the Observatory are built around: what am I looking at, how did it grow, where did the rock go, and how sure is the mask. Every number on screen traces to a computation that can be rerun in the browser or to a named, dated source: Cochilco and the operators'' own disclosures on the site cards, the USGS copper table by country on the Atlas, the held-out benchmark on the Methods page. It is a research showcase built on Felipe''s own visual identity rather than the shared CAOS shell, by his explicit instruction.'
businessContextEs: 'Para un lector el producto responde, por sitio, las cuatro preguntas alrededor de las que se construyen el Atlas y el Observatorio: qué estoy mirando, cómo creció, adónde fue la roca y cuán segura es la máscara. Cada número en pantalla se remonta a un cálculo que puede repetirse en el navegador o a una fuente nombrada y fechada: Cochilco y las declaraciones de los propios operadores en las fichas de sitio, la tabla de cobre por país del USGS en el Atlas, la comparativa sobre teselas retenidas en la página de Métodos. Es una muestra de investigación construida sobre la identidad visual propia de Felipe y no sobre la carcasa CAOS compartida, por su instrucción explícita.'

strategicValue: 'Rajo is live at its own domain as a vps-static deploy since 2026-09-03 and serves version 0.02.007: the four lanes on the thirty sites, the complete dense series, the Spanish surface written with its accents and its numbers formatted in the reader''s locale, each held by a gate in CI. The plan keeps its lifecycle at planned because Felipe has not moved it; the deployment facts are recorded as measured. The workflow trigger defect it found (push runs that never registered until the workflow file was renamed) is now a fleet-wide finding.'
strategicValueEs: 'Rajo está en producción en su propio dominio como despliegue estático desde el 2026-09-03 y sirve la versión 0.02.007: los cuatro carriles sobre los treinta sitios, la serie densa completa, la superficie en español escrita con sus acentos y sus números formateados en la configuración regional del lector, cada uno sostenido por una compuerta en la integración continua. El plan mantiene su ciclo de vida en planificado porque Felipe no lo ha movido; los hechos del despliegue se registran como se midieron. El defecto de disparo de flujos que encontró (corridas por push que nunca se registraron hasta renombrar el archivo del flujo) es hoy un hallazgo de toda la flota.'

kpis:
  - label: 'Four decades per site, replayed and measured'
    labelEs: 'Cuatro décadas por sitio, reproducidas y medidas'
    baseline: 'Satellite archives as records in portals'
    baselineEs: 'Archivos satelitales como registros en portales'
    result: '30 sites, yearly frames 1985 to today (Landsat then Sentinel-2), the dense Sentinel-2 series since 2017 with harmonic breaks, mined-area series with change points, 7,107 validated files'
    resultEs: '30 sitios, fotogramas anuales de 1985 a hoy (Landsat y luego Sentinel-2), la serie densa de Sentinel-2 desde 2017 con quiebres armónicos, series de área minada con puntos de cambio, 7.107 archivos validados'
    impact: 'A pit''s growth is a curve a reader can scrub, not a folder of downloads'
    impactEs: 'El crecimiento de un rajo es una curva que el lector puede recorrer, no una carpeta de descargas'
  - label: 'A learned footprint, benchmarked on held-out tiles'
    labelEs: 'Una huella aprendida, medida sobre teselas retenidas'
    baseline: 'A mask nobody scored'
    baselineEs: 'Una máscara que nadie puntuó'
    result: 'U-Net test IoU 0.378 and 0.502 on the catalog, random forest beside it, both exported to ONNX and run in the browser; the classical masks (Otsu, k-means, spectral angle) on the same axes'
    resultEs: 'U-Net con IoU de prueba 0,378 y 0,502 sobre el catálogo, bosque aleatorio al lado, ambos exportados a ONNX y corridos en el navegador; las máscaras clásicas (Otsu, k-means, ángulo espectral) en los mismos ejes'
    impact: 'The mask says how sure it is instead of pretending'
    impactEs: 'La máscara dice cuán segura es en vez de fingir'
  - label: 'Nothing leaves the browser'
    labelEs: 'Nada sale del navegador'
    baseline: 'A server, an account, an upload'
    baselineEs: 'Un servidor, una cuenta, una subida'
    result: 'No backend and no secret at runtime: range reads of the Sentinel-2 COGs, band math in a Web Worker, ONNX inference on WebGPU or WASM, a static release on the VPS with the last three releases kept'
    resultEs: 'Sin servidor ni secretos en ejecución: lecturas por rango de los COG de Sentinel-2, aritmética de bandas en un Web Worker, inferencia ONNX sobre WebGPU o WASM, una versión estática en el VPS con las tres últimas conservadas'
    impact: 'Open data stays open on the way to the reader'
    impactEs: 'Los datos abiertos siguen abiertos en el camino al lector'

metrics:
  - label: 'Sources'
    labelEs: 'Fuentes'
    value: 'Landsat Collection 2 L2 (Planetary Computer), Sentinel-2 L2A COGs (Earth Search), Maus 2022 and Tang and Werner 2023 polygons, Jasansky 2024 training tiles, SRTM 2000 and Copernicus DEM 2011 to 2015; Cochilco, operator disclosures and the USGS copper table for the facts'
    valueEs: 'Landsat Colección 2 L2 (Planetary Computer), COG Sentinel-2 L2A (Earth Search), polígonos de Maus 2022 y de Tang y Werner 2023, teselas de entrenamiento de Jasansky 2024, SRTM 2000 y DEM Copernicus 2011 a 2015; Cochilco, declaraciones de operadores y la tabla de cobre del USGS para los hechos'
  - label: 'Lanes'
    labelEs: 'Carriles'
    value: 'Replay (frames, masks, series, dense, DEM), live spectral (nine indices, Otsu, k-means, spectral angle, SAM), learned (random forest and U-Net through onnxruntime-web), signal (change points with ruptures, harmonic breaks)'
    valueEs: 'Reproducción (fotogramas, máscaras, series, denso, DEM), espectral en vivo (nueve índices, Otsu, k-means, ángulo espectral, SAM), aprendido (bosque aleatorio y U-Net a través de onnxruntime-web), señal (puntos de cambio con ruptures, quiebres armónicos)'
  - label: 'Licences'
    labelEs: 'Licencias'
    value: 'MIT code; derived polygon layers stay CC BY-SA 4.0 (Maus 2022); the EOX Sentinel-2 cloudless basemap is CC BY-NC-SA 4.0, so Rajo is a non-commercial research showcase with the attribution rendered verbatim; the GRID tailings portal is permission-only and is not redistributed'
    valueEs: 'Código MIT; las capas de polígonos derivadas siguen bajo CC BY-SA 4.0 (Maus 2022); el mapa base EOX Sentinel-2 sin nubes es CC BY-NC-SA 4.0, así que Rajo es una muestra de investigación no comercial con la atribución reproducida textualmente; el portal de relaves GRID es de acceso por permiso y no se redistribuye'
  - label: 'Gates'
    labelEs: 'Compuertas'
    value: 'Typecheck, frontend and pipeline tests, the fit, chrome, timeline and live gates, a Spanish gate that fails the build on an unaccented form or an English fragment welded around a number, a series gate that screenshots the map under each mask method and fails if the two are equal'
    valueEs: 'Comprobación de tipos, pruebas de frontend y de canalización, las compuertas de ajuste, de cromo, de línea de tiempo y de vivo, una compuerta de español que falla la construcción ante una forma sin acento o un fragmento en inglés soldado a un número, una compuerta de series que captura el mapa bajo cada método de máscara y falla si las dos son iguales'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'vps-static on the production VPS under the wildcard domain, TLS by certbot, release directories swapped atomically; live since 2026-09-03, version 0.02.007 served; public, MIT; lifecycle planned in the plan, deployment live in fact'
    valueEs: 'Estático en el VPS de producción bajo el dominio comodín, TLS por certbot, directorios de versión intercambiados atómicamente; en producción desde el 2026-09-03, versión 0.02.007 servida; público, MIT; ciclo de vida planificado en el plan, despliegue vivo de hecho'

stack: [Python, rasterio, scikit-learn, PyTorch, ONNX, ruptures, TypeScript, React, MapLibre GL, geotiff.js, onnxruntime-web, uPlot, Vite]
---
