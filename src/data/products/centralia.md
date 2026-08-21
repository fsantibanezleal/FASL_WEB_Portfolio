---
title: 'CentralIA, Initiative-Management Console over a Version-Control Provider'
titleEs: 'CentralIA, Consola de Gestión de Iniciativas sobre un Proveedor de Control de Versiones'
slug: centralia
date: 2026-07-21
category: data-engineering
family: platforms
excerpt: 'A connection-first web console that connects to a version-control provider (GitHub, GitLab, or an offline emulator), reads a management repo through its structure map, and renders a whole portfolio of repo-mapped initiatives: a filterable grid, per-initiative 5-axis status (development, design, implementation, deployment, value), implementation backlog, live open issues, plans, findings and history, plus a hub drill-down with a growth graph showing how a suite of components knits together through consumes edges. It is a real tool, not a mockup: the connectors are genuinely implemented and the offline emulator is a self-contained backend with a bundled fake management repo. The access token lives in the server environment, never the browser or a database, and a server-side anonymize toggle redacts client info for screen-sharing.'
excerptEs: 'Una consola web con conexión primero que se conecta a un proveedor de control de versiones (GitHub, GitLab, o un emulador offline), lee un repo de gestión a través de su mapa de estructura, y renderiza todo un portafolio de iniciativas mapeadas a repos: una grilla filtrable, estado por iniciativa en 5 ejes (desarrollo, diseño, implementación, despliegue, valor), backlog de implementación, issues abiertos en vivo, planes, hallazgos e historia, más un drill-down de hub con un grafo de crecimiento que muestra cómo una suite de componentes se teje mediante aristas consumes. Es una herramienta real, no un mockup: los conectores están genuinamente implementados y el emulador offline es un backend autocontenido con un repo de gestión falso incluido. El token de acceso vive en el entorno del servidor, nunca en el navegador ni en una base de datos, y un toggle de anonimización del lado del servidor redacta info de cliente para compartir pantalla.'
icon: tabler:layout-dashboard
tags: [data-engineering, developer-tools, project-management, github, gitlab, dashboard, graph, connectors]
proprietary: false
featured: false
assetPatterns: [centralia_pipeline]
github: 'https://github.com/fsantibanezleal/CentralIA'
demo: 'https://centralia.fasl-work.com'
website: 'https://centralia.fasl-work.com'

challenge: 'Once you run more than a handful of software initiatives across many repos, the state of the whole portfolio lives nowhere: it is scattered across READMEs, plan files, issue trackers and your own head. Which initiatives are stalled, which are deployed, which are just plans, how the components consume each other. Answering that by hand does not scale, and a static dashboard goes stale the moment a repo moves. The state has to be read live from the source of truth, the repos themselves.'
challengeEs: 'Una vez que corres más de un puñado de iniciativas de software a través de muchos repos, el estado del portafolio completo no vive en ningún lado: está disperso en READMEs, archivos de plan, trackers de issues y tu propia cabeza. Cuáles iniciativas están estancadas, cuáles desplegadas, cuáles son solo planes, cómo los componentes se consumen entre sí. Responder eso a mano no escala, y un dashboard estático queda obsoleto en cuanto un repo se mueve. El estado debe leerse en vivo desde la fuente de verdad, los repos mismos.'

approach: 'CentralIA is connection-first: you connect to a version-control provider, point it at a management repo, and declare the structure file that maps the portfolio. It then reads the whole set of repo-mapped initiatives live and renders them. The portfolio grid filters by group, line, hub, lifecycle, deploy class, kind, a per-axis threshold and free text. Each initiative detail shows a 5-axis status (development, design, implementation, deployment, value, each scored 0 to 5), the implementation backlog, live open issues pulled from the provider, and the plan, findings, history and deployment notes. A hub drill-down renders a growth graph where nodes are coloured by component type and ringed by lifecycle, with directed consumes edges showing the suite knitting together. Three header toggles cover theme, language, and a server-side anonymize mode (real redaction of client info, default off, for screen-sharing). The access token is kept in the server environment only, never in the browser or a database. It ships with a genuine offline emulator, a self-contained backend serving a bundled fake management repo with a full hub, so the tool can be run and demonstrated with no real credentials.'
approachEs: 'CentralIA es conexión primero: te conectas a un proveedor de control de versiones, lo apuntas a un repo de gestión, y declaras el archivo de estructura que mapea el portafolio. Luego lee en vivo todo el conjunto de iniciativas mapeadas a repos y las renderiza. La grilla de portafolio filtra por grupo, línea, hub, ciclo de vida, clase de despliegue, tipo, un umbral por eje y texto libre. Cada detalle de iniciativa muestra un estado en 5 ejes (desarrollo, diseño, implementación, despliegue, valor, cada uno puntuado de 0 a 5), el backlog de implementación, issues abiertos en vivo traídos del proveedor, y el plan, hallazgos, historia y notas de despliegue. Un drill-down de hub renderiza un grafo de crecimiento donde los nodos se colorean por tipo de componente y se anillan por ciclo de vida, con aristas dirigidas consumes que muestran la suite tejiéndose. Tres toggles de encabezado cubren tema, idioma, y un modo de anonimización del lado del servidor (redacción real de info de cliente, por defecto apagado, para compartir pantalla). El token de acceso se guarda solo en el entorno del servidor, nunca en el navegador ni una base de datos. Se entrega con un emulador offline genuino, un backend autocontenido que sirve un repo de gestión falso incluido con un hub completo, para que la herramienta se corra y demuestre sin credenciales reales.'

businessContext: 'Any organization or individual running a real portfolio of software initiatives needs a single, always-current view of where everything stands, tied to the repos rather than to a spreadsheet somebody forgot to update. CentralIA turns the version-control provider itself into the backend of a management console, so the status is never staler than the last commit. The anonymize mode makes it safe to show a client-facing portfolio without leaking client identities, and the offline emulator means it can be evaluated with zero setup and zero credentials.'
businessContextEs: 'Cualquier organización o individuo que corra un portafolio real de iniciativas de software necesita una vista única y siempre actual de dónde está todo, atada a los repos y no a una planilla que alguien olvidó actualizar. CentralIA convierte al proveedor de control de versiones mismo en el backend de una consola de gestión, así el estado nunca está más obsoleto que el último commit. El modo de anonimización hace seguro mostrar un portafolio de cara al cliente sin filtrar identidades de cliente, y el emulador offline significa que puede evaluarse con cero configuración y cero credenciales.'

strategicValue: 'CentralIA is a connection-first management console that reads state live from repos instead of a hand-maintained dashboard, with real connectors (GitHub, GitLab, offline emulator), a 5-axis initiative model, and a component growth graph. Built as a real tool with a genuine self-contained emulator, server-only token handling and server-side anonymization, it is a reusable pattern for portfolio management over version control. The public instance is single-user and private; the offline emulator is the way to see it without credentials.'
strategicValueEs: 'CentralIA es una consola de gestión con conexión primero que lee el estado en vivo desde los repos en vez de un dashboard mantenido a mano, con conectores reales (GitHub, GitLab, emulador offline), un modelo de iniciativa en 5 ejes, y un grafo de crecimiento de componentes. Construida como herramienta real con un emulador autocontenido genuino, manejo del token solo en el servidor y anonimización del lado del servidor, es un patrón reutilizable para gestión de portafolio sobre control de versiones. La instancia pública es de un solo usuario y privada; el emulador offline es la forma de verla sin credenciales.'

kpis:
  - label: 'Source of truth'
    labelEs: 'Fuente de verdad'
    baseline: 'A hand-maintained dashboard or spreadsheet that goes stale'
    baselineEs: 'Un dashboard o planilla mantenida a mano que queda obsoleta'
    result: 'State read live from the repos through the management-repo structure map (GitHub / GitLab / offline emulator)'
    resultEs: 'Estado leído en vivo desde los repos vía el mapa de estructura del repo de gestión (GitHub / GitLab / emulador offline)'
    impact: 'Never staler than the last commit'
    impactEs: 'Nunca más obsoleto que el último commit'
  - label: 'Initiative model'
    labelEs: 'Modelo de iniciativa'
    baseline: 'A single percent-complete number'
    baselineEs: 'Un solo número de porcentaje completo'
    result: '5-axis status (development, design, implementation, deployment, value) + backlog + live open issues + hub growth graph'
    resultEs: 'Estado en 5 ejes (desarrollo, diseño, implementación, despliegue, valor) + backlog + issues abiertos en vivo + grafo de crecimiento de hub'
    impact: 'A real picture of where each initiative stands'
    impactEs: 'Una imagen real de dónde está cada iniciativa'
  - label: 'Safety'
    labelEs: 'Seguridad'
    baseline: 'Token in the browser; client names on screen'
    baselineEs: 'Token en el navegador; nombres de cliente en pantalla'
    result: 'Token in the server env only (never browser/DB); server-side anonymize toggle for screen-sharing'
    resultEs: 'Token solo en el entorno del servidor (nunca navegador/DB); toggle de anonimización del lado del servidor para compartir pantalla'
    impact: 'Safe to demo a client-facing portfolio'
    impactEs: 'Seguro para demostrar un portafolio de cara al cliente'

metrics:
  - label: 'What it is'
    labelEs: 'Qué es'
    value: 'A connection-first initiative-management console over a version-control provider; a real tool with a self-contained offline emulator, not a mockup'
    valueEs: 'Una consola de gestión de iniciativas con conexión primero sobre un proveedor de control de versiones; una herramienta real con emulador offline autocontenido, no un mockup'
  - label: 'Connectors'
    labelEs: 'Conectores'
    value: 'GitHub · GitLab · offline emulator (a bundled fake management repo with a full hub)'
    valueEs: 'GitHub · GitLab · emulador offline (un repo de gestión falso incluido con un hub completo)'
  - label: 'Views'
    labelEs: 'Vistas'
    value: 'Filterable portfolio grid · 5-axis initiative detail · live open issues · hub drill-down + Cytoscape growth graph · architecture modal'
    valueEs: 'Grilla de portafolio filtrable · detalle de iniciativa en 5 ejes · issues abiertos en vivo · drill-down de hub + grafo de crecimiento Cytoscape · modal de arquitectura'
  - label: 'Access'
    labelEs: 'Acceso'
    value: 'Single-user auth; public instance is private; the offline emulator runs with no credentials'
    valueEs: 'Auth de un solo usuario; la instancia pública es privada; el emulador offline corre sin credenciales'
  - label: 'Deploy'
    labelEs: 'Despliegue'
    value: 'Web console with a real backend; EN/ES; light/dark; server-side token handling and anonymization'
    valueEs: 'Consola web con backend real; EN/ES; claro/oscuro; manejo de token y anonimización del lado del servidor'

stack: [Python, FastAPI, TypeScript, React, Cytoscape, GitHub API, GitLab API]
---
