---
title: 'GeoLab, Browser-Native Multi-Engine Geospatial Tool Platform'
titleEs: 'GeoLab, Plataforma Geoespacial Multi-Motor Nativa del Navegador'
slug: geolab
date: 2026-07-24
category: data-engineering
family: labs
excerpt: 'A browser-native, no-install geospatial platform: load a DEM, GeoTIFF, vector or point cloud (a bundled sample or your own file), run real geoprocessing tools, chain them into reproducible pipelines, and explore the result on a map or 3D canvas, entirely in your browser. No server, no Python, no GDAL install, and your data never leaves your machine. Today it runs 747 real WhiteboxTools / GeoLibre tools client-side via the geolibre WASM engine; the architecture (ADR-0059) is multi-engine by design, aggregating GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, OpenCV.js and ONNX behind one uniform tool interface as adapters land incrementally. Every tool shows its source engine, authors and license, and the tool count is only what genuinely runs, never padded.'
excerptEs: 'Una plataforma geoespacial nativa del navegador, sin instalación: carga un DEM, GeoTIFF, vector o nube de puntos (una muestra incluida o tu propio archivo), corre herramientas de geoprocesamiento reales, encadénalas en pipelines reproducibles, y explora el resultado en un mapa o lienzo 3D, enteramente en tu navegador. Sin servidor, sin Python, sin instalar GDAL, y tus datos nunca salen de tu máquina. Hoy corre 747 herramientas reales WhiteboxTools / GeoLibre del lado del cliente vía el motor WASM de geolibre; la arquitectura (ADR-0059) es multi-motor por diseño, agregando GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, OpenCV.js y ONNX tras una interfaz de herramientas uniforme a medida que los adaptadores llegan de a poco. Cada herramienta muestra su motor de origen, autores y licencia, y el conteo de herramientas es solo lo que genuinamente corre, nunca inflado.'
icon: tabler:stack-2
tags: [data-engineering, geospatial, gis, webassembly, gdal, whiteboxtools, pipelines, browser, provenance]
proprietary: false
featured: false
assetPatterns: [geolab]
github: 'https://github.com/fsantibanezleal/CAOS_GEOLAB'
demo: 'https://geolab.fasl-work.com'
website: 'https://geolab.fasl-work.com'

challenge: 'Serious geospatial analysis normally means installing GDAL, a Python stack, or desktop GIS, and often uploading data to a server. That is a barrier for quick analysis, a privacy problem for sensitive data, and a reproducibility problem because everyone runs a slightly different toolchain. The WebAssembly ecosystem now has real geospatial engines that run in the browser, but they are fragmented: each is a separate library with its own interface, so no single place lets you reach across them, compare them, and chain their tools into a shareable workflow.'
challengeEs: 'El análisis geoespacial serio normalmente implica instalar GDAL, un stack de Python, o GIS de escritorio, y a menudo subir datos a un servidor. Eso es una barrera para el análisis rápido, un problema de privacidad para datos sensibles, y un problema de reproducibilidad porque cada uno corre una cadena de herramientas algo distinta. El ecosistema WebAssembly ya tiene motores geoespaciales reales que corren en el navegador, pero están fragmentados: cada uno es una biblioteca separada con su propia interfaz, así que ningún lugar único te deja alcanzarlos todos, compararlos, y encadenar sus herramientas en un flujo compartible.'

approach: 'GeoLab aggregates WebAssembly and JS geospatial engines behind one uniform tool interface, runs everything client-side, and keeps your data on your machine. You load a bundled synthetic sample (labelled as such) or your own GeoTIFF / GeoJSON, and the toolbox populates; each result becomes a layer you inspect with a colormap and a value read-out at the cursor, in a grid or map view. Live today it exposes the geolibre WASM engine with 747 real WhiteboxTools / GeoLibre tools running in a Web Worker so the UI stays responsive. The architecture (ADR-0059) is deliberately multi-engine: adding an engine is one adapter, and GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, wasm-vips, OpenCV.js and ONNX Runtime Web are integrated incrementally toward a catalog of a thousand-plus tools. On top of the aggregation it adds its own original tools: composite workflow-tools, a cross-engine comparison (run the same operation through two engines and see the difference), and models trained to ONNX that run in-browser. A visual node editor chains tools into a reproducible recipe (JSON) you can save, share and re-run on new data. Every tool shows its source engine, authors and license, and the tool count only ever reflects what genuinely runs.'
approachEs: 'GeoLab agrega motores geoespaciales WebAssembly y JS tras una interfaz de herramientas uniforme, corre todo del lado del cliente, y mantiene tus datos en tu máquina. Cargas una muestra sintética incluida (etiquetada como tal) o tu propio GeoTIFF / GeoJSON, y la caja de herramientas se puebla; cada resultado se vuelve una capa que inspeccionas con un colormap y una lectura de valor en el cursor, en vista de grilla o mapa. En vivo hoy expone el motor WASM de geolibre con 747 herramientas reales WhiteboxTools / GeoLibre corriendo en un Web Worker para que la UI siga responsiva. La arquitectura (ADR-0059) es deliberadamente multi-motor: agregar un motor es un adaptador, y GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, wasm-vips, OpenCV.js y ONNX Runtime Web se integran de a poco hacia un catálogo de mil y tantas herramientas. Sobre la agregación agrega sus propias herramientas originales: workflow-tools compuestas, una comparación cross-motor (correr la misma operación por dos motores y ver la diferencia), y modelos entrenados a ONNX que corren en el navegador. Un editor de nodos visual encadena herramientas en una receta reproducible (JSON) que puedes guardar, compartir y re-correr sobre datos nuevos. Cada herramienta muestra su motor de origen, autores y licencia, y el conteo de herramientas solo refleja lo que genuinamente corre.'

businessContext: 'Geospatial work touches mining, environment, infrastructure and agriculture, and the friction is real: installs, server uploads, and non-reproducible toolchains. A browser-native platform where the data never leaves the machine removes the privacy and setup barriers at once, and a shareable JSON recipe makes an analysis reproducible by anyone with a browser. The multi-engine aggregation is the differentiator: instead of betting on one library, it puts many behind one interface and lets you compare them, which is exactly what someone evaluating a method needs.'
businessContextEs: 'El trabajo geoespacial toca minería, medio ambiente, infraestructura y agricultura, y la fricción es real: instalaciones, subidas a servidor, y cadenas de herramientas no reproducibles. Una plataforma nativa del navegador donde los datos nunca salen de la máquina elimina las barreras de privacidad y configuración a la vez, y una receta JSON compartible hace un análisis reproducible por cualquiera con un navegador. La agregación multi-motor es el diferenciador: en vez de apostar a una biblioteca, pone muchas tras una interfaz y te deja compararlas, que es justo lo que alguien evaluando un método necesita.'

strategicValue: 'GeoLab is a browser-native, multi-engine geospatial platform that turns a fragmented WASM ecosystem into one tool interface with reproducible pipelines and per-tool provenance, all client-side with no data leaving the machine. It ships 747 real tools live via the geolibre engine and is built (ADR-0059) to aggregate many more as adapters, with its own cross-engine comparison and composite tools on top. It holds the same honesty line as the rest of the labs: the tool count is only what genuinely runs, sample data is labelled synthetic, and it is openly an actively-built-out lab rather than a finished product.'
strategicValueEs: 'GeoLab es una plataforma geoespacial multi-motor nativa del navegador que convierte un ecosistema WASM fragmentado en una interfaz de herramientas única con pipelines reproducibles y procedencia por herramienta, todo del lado del cliente sin que los datos salgan de la máquina. Entrega 747 herramientas reales en vivo vía el motor geolibre y está construida (ADR-0059) para agregar muchas más como adaptadores, con su propia comparación cross-motor y herramientas compuestas encima. Mantiene la misma línea de honestidad que el resto de los labs: el conteo de herramientas es solo lo que genuinamente corre, los datos de muestra se etiquetan como sintéticos, y es abiertamente un lab en construcción activa más que un producto terminado.'

kpis:
  - label: 'No install, no server'
    labelEs: 'Sin instalación, sin servidor'
    baseline: 'Install GDAL / Python / desktop GIS; often upload data to a server'
    baselineEs: 'Instalar GDAL / Python / GIS de escritorio; a menudo subir datos a un servidor'
    result: 'Runs entirely in the browser (WASM, Web Worker); your data never leaves the machine'
    resultEs: 'Corre enteramente en el navegador (WASM, Web Worker); tus datos nunca salen de la máquina'
    impact: 'Zero setup and private by construction'
    impactEs: 'Cero configuración y privado por construcción'
  - label: 'Tools available live'
    labelEs: 'Herramientas disponibles en vivo'
    baseline: 'One WASM engine, or a bespoke script'
    baselineEs: 'Un motor WASM, o un script a medida'
    result: '747 real WhiteboxTools / GeoLibre tools today via the geolibre engine; multi-engine architecture (GDAL, GEOS, Turf, H3, ITK, OpenCV, ONNX) landing incrementally'
    resultEs: '747 herramientas reales WhiteboxTools / GeoLibre hoy vía el motor geolibre; arquitectura multi-motor (GDAL, GEOS, Turf, H3, ITK, OpenCV, ONNX) llegando de a poco'
    impact: 'Many engines behind one interface, counted honestly'
    impactEs: 'Muchos motores tras una interfaz, contados honestamente'
  - label: 'Reproducibility'
    labelEs: 'Reproducibilidad'
    baseline: 'Loose scripts nobody can re-run'
    baselineEs: 'Scripts sueltos que nadie puede re-correr'
    result: 'A visual node editor chains tools into a shareable JSON recipe, re-runnable on new data, with per-tool provenance (engine, authors, license)'
    resultEs: 'Un editor de nodos visual encadena herramientas en una receta JSON compartible, re-corrible sobre datos nuevos, con procedencia por herramienta (motor, autores, licencia)'
    impact: 'An analysis anyone with a browser can reproduce'
    impactEs: 'Un análisis que cualquiera con un navegador puede reproducir'

metrics:
  - label: 'What it is'
    labelEs: 'Qué es'
    value: 'Browser-native, no-install, multi-engine geospatial tool platform (a CAOS lab, same family as SimLab / PINN-Lab / QLab)'
    valueEs: 'Plataforma geoespacial multi-motor nativa del navegador, sin instalación (un lab CAOS, misma familia que SimLab / PINN-Lab / QLab)'
  - label: 'Engines'
    labelEs: 'Motores'
    value: 'Live: geolibre-wasm (747 WhiteboxTools / GeoLibre tools). Architected for GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, wasm-vips, OpenCV.js, ONNX Runtime Web (incremental)'
    valueEs: 'En vivo: geolibre-wasm (747 herramientas WhiteboxTools / GeoLibre). Arquitectado para GDAL, GEOS, Turf, H3, mapshaper, ITK-Wasm, wasm-vips, OpenCV.js, ONNX Runtime Web (incremental)'
  - label: 'Inputs'
    labelEs: 'Entradas'
    value: 'DEM / GeoTIFF / vector / point cloud (bundled synthetic sample, labelled, or your own file)'
    valueEs: 'DEM / GeoTIFF / vector / nube de puntos (muestra sintética incluida, etiquetada, o tu propio archivo)'
  - label: 'Honesty'
    labelEs: 'Honestidad'
    value: 'Tool count is only what genuinely runs (never padded); provenance per tool; sample data labelled synthetic; an actively-built-out lab, not a finished app'
    valueEs: 'El conteo de herramientas es solo lo que genuinamente corre (nunca inflado); procedencia por herramienta; datos de muestra etiquetados sintéticos; un lab en construcción activa, no una app terminada'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Static SPA, client-side WASM in a Web Worker; EN/ES, light/dark; GitHub Pages'
    valueEs: 'SPA estática, WASM del lado del cliente en un Web Worker; EN/ES, claro/oscuro; GitHub Pages'

stack: [TypeScript, React, WebAssembly, geolibre-wasm, WhiteboxTools, GDAL, ONNX Runtime Web, Web Workers]
---
