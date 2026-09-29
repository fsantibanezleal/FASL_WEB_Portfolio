---
title: 'Laminario, an Open Collection of Microscope Slides in the Spirit of iNaturalist'
titleEs: 'Laminario, una Colección Abierta de Láminas de Microscopio al Estilo de iNaturalist'
slug: laminario
date: 2026-09-25
category: education
family: outreach
excerpt: 'A public collection where every case is a real microscope slide shown as the glass object it is, its format and size, the specimen under the coverslip, a printed label with a scannable QR, and behind the glass the micro imagery, from one photomicrograph to a whole-slide scan with focal planes and polarised pairs, explored in deep zoom over IIIF. Three realms, 18 collections and 130 sub-collections and groups with their own iconography; visitors browse without an account, invited contributors add slides, the community agrees on identifications. Version 0.15.000: fifteen units released, among them a base collection of 505 slides from open sources and the places a visitor walks; the deployment is being installed and the site does not serve slides yet, and the card says so.'
excerptEs: 'Una colección pública donde cada caso es una lámina de microscopio real mostrada como el objeto de vidrio que es, su formato y tamaño, el espécimen bajo el cubreobjetos, una etiqueta impresa con un QR escaneable, y tras el vidrio la imagen microscópica, desde una fotomicrografía hasta un escaneo de lámina completa con planos focales y pares polarizados, explorada en zoom profundo sobre IIIF. Tres reinos, 18 colecciones y 130 subcolecciones y grupos con su propia iconografía; los visitantes navegan sin cuenta, los colaboradores invitados agregan láminas, la comunidad acuerda las identificaciones. Versión 0.15.000: quince unidades liberadas, entre ellas una colección base de 505 láminas de fuentes abiertas y los lugares que recorre un visitante; el despliegue se está instalando y el sitio todavía no sirve láminas, y la ficha lo dice.'
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

strategicValue: 'Laminario is being built in the mandatory order: seven research dossiers, an architecture decision (ADR-0077), a software design document with a named verification gate per requirement, the plan validated by Felipe on 2026-09-24, and then the units. Version 0.01.000 (2026-09-25) was the repository base and the data model with both contracts. On 2026-09-28 and 29 the units followed in order, each with its verdict page, up to 0.15.000: the imaging engine, delivery over IIIF, the worker, resumable uploads, invitation-only accounts, the collection tree, a base collection of 505 slides over the 18 collections (Wikimedia Commons, the Natural History Museum''s Data Portal, Smithsonian Open Access, Zenodo''s NMNH focal stacks, the OpenSlide test data; 14 whole-slide scans and a registered polarised pair for every rock family, each image with its licence, author, source record and SHA-256), the product''s own visual system, Explore, the slide and its stage, Contribute, Identify with iNaturalist''s community-taxon rule read from its source, the cabinet with label sheets printed at 1:1, and About. The deployment unit is being installed: on 2026-09-29 the web app answers over HTTPS at laminario.ml.fasl-work.com, but its API, worker, upload and tile services are not registered yet, so the site does not serve slides, and the base collection is imported once its bake finishes. The lifecycle is planned.'
strategicValueEs: 'Laminario se construye en el orden obligatorio: siete dosieres de investigación, una decisión de arquitectura (ADR-0077), un documento de diseño de software con una compuerta de verificación nombrada por requisito, el plan validado por Felipe el 2026-09-24, y luego las unidades. La versión 0.01.000 (2026-09-25) fue la base del repositorio y el modelo de datos con ambos contratos. El 2026-09-28 y 29 siguieron las unidades en orden, cada una con su página de veredicto, hasta la 0.15.000: el motor de imágenes, la entrega por IIIF, el trabajador, las subidas reanudables, las cuentas por invitación, el árbol de colecciones, una colección base de 505 láminas en las 18 colecciones (Wikimedia Commons, el Data Portal del Natural History Museum, Smithsonian Open Access, las pilas focales del NMNH en Zenodo, los datos de prueba de OpenSlide; 14 escaneos de lámina completa y un par polarizado registrado para cada familia de rocas, cada imagen con su licencia, autor, registro de origen y SHA-256), el sistema visual propio del producto, Explorar, la lámina y su platina, Contribuir, Identificar con la regla del taxón comunitario de iNaturalist leída de su fuente, el gabinete con hojas de etiquetas impresas a 1:1, y Acerca de. La unidad de despliegue se está instalando: el 2026-09-29 la aplicación web responde por HTTPS en laminario.ml.fasl-work.com, pero sus servicios de API, trabajador, subidas y teselas todavía no están registrados, así que el sitio no sirve láminas, y la colección base se importa cuando termine su horneado. El ciclo de vida es planificado.'

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
    result: 'Three realms (life, earth, matter), 18 collections, 130 sub-collections and groups, 186 hand-drawn icons, placement rules anchored on GBIF, the IMA mineral list, crystal systems and materials'
    resultEs: 'Tres reinos (vida, tierra, materia), 18 colecciones, 130 subcolecciones y grupos, 186 íconos dibujados a mano, reglas de ubicación ancladas en GBIF, la lista mineral de la IMA, los sistemas cristalinos y los materiales'
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
    value: 'Version 0.15.000 (2026-09-29): units U0 to U15 released; the deployment unit (U16) being installed on the ML VPS, where the web app answers over HTTPS and the API, worker, upload and tile services wait to be registered; lifecycle planned'
    valueEs: 'Versión 0.15.000 (2026-09-29): unidades U0 a U15 liberadas; la unidad de despliegue (U16) en instalación en el VPS de aprendizaje automático, donde la aplicación web responde por HTTPS y los servicios de API, trabajador, subidas y teselas esperan ser registrados; ciclo de vida planificado'
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
    value: 'Not a museum catalogue and not a diagnostic tool: identifications are community agreements with their rule stated, imagery keeps the provenance it came with, and the product is described here as it is, fifteen units released and a deployment not yet serving slides, so that a visitor does not read an installation as a live product'
    valueEs: 'No es un catálogo de museo ni una herramienta de diagnóstico: las identificaciones son acuerdos de la comunidad con su regla declarada, las imágenes conservan la procedencia con la que llegaron, y el producto se describe aquí tal como está, quince unidades liberadas y un despliegue que todavía no sirve láminas, para que un visitante no lea una instalación como un producto en vivo'

stack: [Python, FastAPI, SQLite, libvips, OpenSlide, iipsrv, IIIF, tusd, TypeScript, React, OpenSeadragon, MapLibre GL]
---
