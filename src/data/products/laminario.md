---
title: 'Laminario, an Open Collection of Microscope Slides in the Spirit of iNaturalist'
titleEs: 'Laminario, una Colección Abierta de Láminas de Microscopio al Estilo de iNaturalist'
slug: laminario
date: 2026-09-25
category: education
family: outreach
excerpt: 'A public collection where every case is a real microscope slide shown as the glass object it is, its format and size, the specimen under the coverslip, a printed label with a scannable QR, and behind the glass the micro imagery, from one photomicrograph to a whole-slide scan with focal planes and polarised pairs, explored in deep zoom over IIIF. Three realms, 18 collections and 129 sub-collections with their own iconography; visitors browse without an account, invited contributors add slides, the community agrees on identifications. Version 0.01.000: the data model and both contracts; nothing deployed yet, and the card says so.'
excerptEs: 'Una colección pública donde cada caso es una lámina de microscopio real mostrada como el objeto de vidrio que es, su formato y tamaño, el espécimen bajo el cubreobjetos, una etiqueta impresa con un QR escaneable, y tras el vidrio la imagen microscópica, desde una fotomicrografía hasta un escaneo de lámina completa con planos focales y pares polarizados, explorada en zoom profundo sobre IIIF. Tres reinos, 18 colecciones y 129 subcolecciones con su propia iconografía; los visitantes navegan sin cuenta, los colaboradores invitados agregan láminas, la comunidad acuerda las identificaciones. Versión 0.01.000: el modelo de datos y ambos contratos; nada desplegado todavía, y la ficha lo dice.'
icon: tabler:microscope
tags: [microscopy, slides, natural-history, iiif, deep-zoom, openslide, community, education, open-collections, fastapi]
proprietary: false
assetPatterns: [laminario]
github: 'https://github.com/fsantibanezleal/CAOS_Laminario'

challenge: 'Microscope slides are among the most numerous objects in natural-history and teaching collections; the Natural History Museum in London alone holds about 2.5 million. A growing share is digitised and openly licensed, but it is published as records in museum portals or as files in data deposits: nobody can browse slides as slides, across plants, animals, microbes, rocks, minerals and crystals, or add their own. The whole-slide files are multi-gigabyte scanner formats (NDPI, SVS, MRXS, DICOM) that ordinary web tooling cannot open.'
challengeEs: 'Las láminas de microscopio están entre los objetos más numerosos de las colecciones de historia natural y de enseñanza; solo el Museo de Historia Natural de Londres guarda cerca de 2,5 millones. Una parte creciente está digitalizada y bajo licencias abiertas, pero se publica como registros en portales de museos o como archivos en depósitos de datos: nadie puede recorrer láminas como láminas, a través de plantas, animales, microbios, rocas, minerales y cristales, ni agregar las suyas. Los archivos de lámina completa son formatos de escáner de varios gigabytes (NDPI, SVS, MRXS, DICOM) que las herramientas web comunes no pueden abrir.'

approach: 'A FastAPI API over SQLite with full-text search and invitation-only accounts; a separate worker claiming durable jobs from the same database; libvips with OpenSlide writing one pyramidal BigTIFF per image plane; the IIIF Image API 3 at level 2 from iipsrv behind an nginx cache, plus a IIIF Presentation 3 manifest per slide so any IIIF viewer can open it; resumable uploads through tusd with quarantine, sniffing, checksum and quotas; a React and TypeScript frontend with OpenSeadragon for the stage and MapLibre over a self-hosted PMTiles basemap for the places. The base collection of at least 300 openly licensed slides (NHM, Smithsonian Open Access, Zenodo, Wikimedia Commons, CDC PHIL) is ingested through the same pipeline as a contributor''s upload. The product carries its own original design system: the shared CAOS shell is excluded by Felipe''s instruction.'
approachEs: 'Una API FastAPI sobre SQLite con búsqueda de texto completo y cuentas solo por invitación; un proceso trabajador aparte que reclama trabajos durables desde la misma base de datos; libvips con OpenSlide escribiendo un BigTIFF piramidal por plano de imagen; la IIIF Image API 3 en nivel 2 desde iipsrv tras una caché nginx, más un manifiesto IIIF Presentation 3 por lámina para que cualquier visor IIIF pueda abrirla; subidas reanudables a través de tusd con cuarentena, inspección, suma de verificación y cuotas; un frontend en React y TypeScript con OpenSeadragon para la platina y MapLibre sobre un mapa base PMTiles propio para los lugares. La colección base de al menos 300 láminas con licencia abierta (NHM, Smithsonian Open Access, Zenodo, Wikimedia Commons, CDC PHIL) se ingesta por la misma canalización que la subida de un colaborador. El producto lleva su propio sistema de diseño original: la carcasa CAOS compartida queda excluida por instrucción de Felipe.'

businessContext: 'For a visitor the promise is to look at a slide as an object and then put it on the stage: objectives derived from the pixel size, a scale bar in real units, focal planes, polarised pairs and rotation for rocks and minerals, and a label whose QR opens the slide''s page. For a teacher or a collection, the promise is a place where a slide can be added with its provenance, licence and author per asset, identified by a two-thirds agreement rule, and served as a standard IIIF manifest rather than locked in one viewer.'
businessContextEs: 'Para un visitante la promesa es mirar una lámina como objeto y luego ponerla en la platina: objetivos derivados del tamaño de píxel, una barra de escala en unidades reales, planos focales, pares polarizados y rotación para rocas y minerales, y una etiqueta cuyo QR abre la página de la lámina. Para un docente o una colección, la promesa es un lugar donde una lámina puede agregarse con su procedencia, licencia y autor por activo, identificarse por una regla de acuerdo de dos tercios y servirse como manifiesto IIIF estándar en vez de quedar encerrada en un visor.'

strategicValue: 'Laminario is being built in the mandatory order: seven research dossiers, an architecture decision (ADR-0077), a software design document with a named verification gate per requirement, the plan validated by Felipe on 2026-09-24, and then the units. Version 0.01.000 (2026-09-25) is the repository base and the data model: the slide-case ingestion contract, the catalog and IIIF artifact contract, the SQLite schema with migrations, the JSON Schemas mirrored as TypeScript types, and an API that validates, stores and serves a slide case. The 100 GB data volume is mounted on the ML VPS. The imaging engine, the delivery, the worker, the uploads, the accounts, the collection tree, the base collection, the design system and the interface are the units that follow; nothing is deployed, and the lifecycle is planned.'
strategicValueEs: 'Laminario se construye en el orden obligatorio: siete dosieres de investigación, una decisión de arquitectura (ADR-0077), un documento de diseño de software con una compuerta de verificación nombrada por requisito, el plan validado por Felipe el 2026-09-24, y luego las unidades. La versión 0.01.000 (2026-09-25) es la base del repositorio y el modelo de datos: el contrato de ingesta del caso de lámina, el contrato de catálogo y artefacto IIIF, el esquema SQLite con migraciones, los esquemas JSON reflejados como tipos TypeScript y una API que valida, guarda y sirve un caso de lámina. El volumen de datos de 100 GB está montado en el VPS de aprendizaje automático. El motor de imágenes, la entrega, el trabajador, las subidas, las cuentas, el árbol de colecciones, la colección base, el sistema de diseño y la interfaz son las unidades que siguen; nada está desplegado, y el ciclo de vida es planificado.'

kpis:
  - label: 'A slide as an object, not a record'
    labelEs: 'Una lámina como objeto, no como registro'
    baseline: 'A row in a museum portal or a file in a deposit'
    baselineEs: 'Una fila en un portal de museo o un archivo en un depósito'
    result: 'True format and size, the macro image under the coverslip, a printed label with a scannable QR, then the micro assets: single images, deep-zoom pyramids, focal planes, polarisation states'
    resultEs: 'Formato y tamaño reales, la imagen macro bajo el cubreobjetos, una etiqueta impresa con QR escaneable, y luego los activos micro: imágenes sueltas, pirámides de zoom profundo, planos focales, estados de polarización'
    impact: 'The thing on the screen is the thing in the drawer'
    impactEs: 'Lo que está en pantalla es lo que está en el cajón'
  - label: 'A collection tree with its own iconography'
    labelEs: 'Un árbol de colecciones con iconografía propia'
    baseline: 'One taxonomy for life, nothing for rocks and crystals'
    baselineEs: 'Una taxonomía para lo vivo, nada para rocas y cristales'
    result: 'Three realms (life, earth, matter), 18 collections, 129 sub-collections, 185 designed icons, placement rules anchored on GBIF, the IMA mineral list, crystal systems and materials'
    resultEs: 'Tres reinos (vida, tierra, materia), 18 colecciones, 129 subcolecciones, 185 íconos diseñados, reglas de ubicación ancladas en GBIF, la lista mineral de la IMA, los sistemas cristalinos y los materiales'
    impact: 'Plants, microbes, thin sections and crystals sit in one cabinet'
    impactEs: 'Plantas, microbios, láminas delgadas y cristales caben en un mismo gabinete'
  - label: 'Standards on the way out'
    labelEs: 'Estándares a la salida'
    baseline: 'Imagery locked in one viewer'
    baselineEs: 'Imágenes encerradas en un visor'
    result: 'IIIF Image API 3 level 2 tiles and a IIIF Presentation 3 manifest per slide; source, author and licence per asset; resumable uploads of multi-gigabyte scanner files'
    resultEs: 'Teselas IIIF Image API 3 nivel 2 y un manifiesto IIIF Presentation 3 por lámina; fuente, autor y licencia por activo; subidas reanudables de archivos de escáner de varios gigabytes'
    impact: 'Any IIIF viewer can open a Laminario slide'
    impactEs: 'Cualquier visor IIIF puede abrir una lámina de Laminario'

metrics:
  - label: 'State'
    labelEs: 'Estado'
    value: 'Version 0.01.000 (2026-09-25): repository base (U0) and the data model with both contracts (U1); the imaging engine (U2) is next; nothing deployed; lifecycle planned; target laminario.ml.fasl-work.com on the ML VPS with a 100 GB volume mounted since 2026-09-23'
    valueEs: 'Versión 0.01.000 (2026-09-25): base del repositorio (U0) y el modelo de datos con ambos contratos (U1); el motor de imágenes (U2) es lo siguiente; nada desplegado; ciclo de vida planificado; destino laminario.ml.fasl-work.com en el VPS de aprendizaje automático con un volumen de 100 GB montado desde el 2026-09-23'
  - label: 'Imaging'
    labelEs: 'Imágenes'
    value: 'libvips with OpenSlide (NDPI, SVS, MRXS, DICOM, TIFF, JPEG, PNG, WebP), one pyramidal BigTIFF per plane, z-plane policy, PPL and XPL pairs for rocks and minerals, an extended-depth-of-field composite with parity against the EPFL reference'
    valueEs: 'libvips con OpenSlide (NDPI, SVS, MRXS, DICOM, TIFF, JPEG, PNG, WebP), un BigTIFF piramidal por plano, política de planos z, pares PPL y XPL para rocas y minerales, un compuesto de profundidad de campo extendida con paridad contra la referencia de la EPFL'
  - label: 'Accounts'
    labelEs: 'Cuentas'
    value: 'Visitors need no account; contributors are invited by the admin or a curator; roles contributor, identifier, curator, admin; identification by a two-thirds agreement rule; email optional through a sender credential, otherwise the admin copies the invitation link'
    valueEs: 'Los visitantes no necesitan cuenta; los colaboradores son invitados por el administrador o un curador; roles colaborador, identificador, curador, administrador; identificación por regla de acuerdo de dos tercios; correo opcional mediante una credencial de envío, si no el administrador copia el enlace de invitación'
  - label: 'Licences'
    labelEs: 'Licencias'
    value: 'MIT for code; CC BY 4.0 for authored content (texts, icons, figures); every collection asset keeps its own licence, recorded per asset'
    valueEs: 'MIT para el código; CC BY 4.0 para el contenido de autoría propia (textos, íconos, figuras); cada activo de colección conserva su propia licencia, registrada por activo'
  - label: 'Honest scope'
    labelEs: 'Alcance honesto'
    value: 'Not a museum catalogue and not a diagnostic tool: identifications are community agreements with their rule stated, imagery keeps the provenance it came with, and the product is described here as it is, one released unit of eleven, so that a visitor does not read a plan as a product'
    valueEs: 'No es un catálogo de museo ni una herramienta de diagnóstico: las identificaciones son acuerdos de la comunidad con su regla declarada, las imágenes conservan la procedencia con la que llegaron, y el producto se describe aquí tal como está, una unidad liberada de once, para que un visitante no lea un plan como un producto'

stack: [Python, FastAPI, SQLite, libvips, OpenSlide, iipsrv, IIIF, tusd, TypeScript, React, OpenSeadragon, MapLibre GL]
---
