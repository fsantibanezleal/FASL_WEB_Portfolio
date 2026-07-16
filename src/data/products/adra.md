---
title: 'ADRA — Adversarial Dev Review Agent'
titleEs: 'ADRA — Agente de Revisión de Desarrollo Adversarial'
slug: adra
date: 2026-07-15
category: agentic-ai
family: agentic
excerpt: 'A deterministic-first, adversarial-validation engine for the software lifecycle. Deterministic tools (git, the exact CI command, bundle validation, a language/leak scan, SQL probes) run FIRST and become both the grounding the model may not contradict and the evidence in an immutable provenance log; a blocking adversarial critic tries to refute each artifact instead of blessing it, an LLM-as-judge scores with swap-and-average, and the loop escalates to a human where nothing deterministic backs the verdict. Six skills (code review, PR eval, experiment, improve, document, decide) run the same loop. Runs offline with no API key; published on PyPI as adra.'
excerptEs: 'Un motor de validación adversarial, determinista primero, para el ciclo de vida del software. Las herramientas deterministas (git, el comando exacto de CI, validación de bundle, un escaneo de lenguaje/fugas, sondas SQL) corren PRIMERO y se vuelven tanto el fundamento que el modelo no puede contradecir como la evidencia en un registro de procedencia inmutable; un crítico adversarial bloqueante intenta refutar cada artefacto en vez de aprobarlo, un LLM-como-juez puntúa con swap-and-average, y el ciclo escala a una persona donde nada determinista respalda el veredicto. Seis habilidades (revisión de código, evaluación de PR, experimento, mejora, documentar, decidir) corren el mismo ciclo. Funciona offline sin API key; publicado en PyPI como adra.'
icon: tabler:shield-check
tags: [agentic-ai, code-review, adversarial-validation, llm-as-judge, deterministic-first, provenance, devops, pydantic-ai, pypi]
proprietary: false
featured: false
assetPatterns: [adra]
github: 'https://github.com/fsantibanezleal/ADRA'
demo: 'https://adra.fasl-work.com'
website: 'https://adra.fasl-work.com'

challenge: 'The AI-code-review market splits in two and both halves miss the same spot. Reviewers (CodeRabbit, Greptile, Qodo and the like) feed linters into a language model, but the model prose is the verdict, so hallucinated and "consistently-stated-but-false" findings leak through and the deterministic signals are never the gate. Autonomous coders (Devin, OpenHands, SWE-agent) write code and treat "tests pass" as success rather than adversarially trying to prove the change wrong. Both produce opinions where a senior engineer would want proofs, refutations, and an honest "I cannot verify this, a human should decide".'
challengeEs: 'El mercado de revisión de código con IA se parte en dos y ambas mitades fallan en el mismo punto. Los revisores (CodeRabbit, Greptile, Qodo y similares) alimentan linters a un modelo de lenguaje, pero la prosa del modelo es el veredicto, así que hallazgos alucinados y "afirmados con consistencia pero falsos" se filtran y las señales deterministas nunca son la compuerta. Los programadores autónomos (Devin, OpenHands, SWE-agent) escriben código y tratan "los tests pasan" como éxito en vez de intentar adversarialmente probar que el cambio está mal. Ambos producen opiniones donde un ingeniero senior querría pruebas, refutaciones, y un honesto "no puedo verificar esto, que decida una persona".'

approach: 'ADRA occupies the gap with a deterministic spine that grounds a blocking adversarial critic. Its tools run first, in order: git and merge-base health, the exact CI command, bundle validation, a language and secret-leak scan, code discovery, and SQL warehouse probes; each returns a typed ToolResult that becomes both the grounding the model may not overturn and the evidence in the run record. On top of that floor a two-pass critic red-teams every artifact (a deterministic hard-floor pass keyed on a shared typed rubric, then an LLM semantic-attack pass whose job is to refute, not bless), and an LLM-as-judge scores with swap-and-average and reference anchoring so a winner counts only when it is stable under the order swap. Six skills run this same loop, differing only by domain prompt and tools: code_review, pr_eval, experiment, improve, document, decide. Because the deterministic floor carries the verdict, the whole loop and its test suite run offline with no API key via a mock provider; connecting a real provider through a pydantic-ai seam (config only, per-role routing) adds the semantic layer on top. It is read-only by default: writes require an explicit external flag and a human gate, and the loop escalates to a human wherever nothing deterministic backs the call.'
approachEs: 'ADRA ocupa el hueco con una columna determinista que fundamenta a un crítico adversarial bloqueante. Sus herramientas corren primero, en orden: git y salud del merge-base, el comando exacto de CI, validación de bundle, un escaneo de lenguaje y fuga de secretos, descubrimiento de código, y sondas al warehouse SQL; cada una devuelve un ToolResult tipado que se vuelve tanto el fundamento que el modelo no puede revocar como la evidencia en el registro de la corrida. Sobre ese piso, un crítico de dos pasadas hace red-team a cada artefacto (una pasada determinista de piso duro anclada en un rubric tipado compartido, luego una pasada de ataque semántico con LLM cuyo trabajo es refutar, no aprobar), y un LLM-como-juez puntúa con swap-and-average y anclaje a referencia, de modo que un ganador cuenta solo cuando es estable ante el intercambio de orden. Seis habilidades corren este mismo ciclo, diferenciándose solo por el prompt de dominio y las herramientas: code_review, pr_eval, experiment, improve, document, decide. Como el piso determinista carga el veredicto, el ciclo completo y su suite de tests corren offline sin API key vía un proveedor mock; conectar un proveedor real mediante una capa pydantic-ai (solo config, ruteo por rol) agrega la capa semántica encima. Es de solo lectura por defecto: las escrituras exigen una bandera externa explícita y una compuerta humana, y el ciclo escala a una persona donde nada determinista respalda la decisión.'

businessContext: 'Code review and validation are where engineering risk is priced. A reviewer that emits a confident but false finding costs trust; an autonomous agent that merges on a green suite it did not adversarially challenge costs an incident. The value here is a defensible verdict: every blocker traces to a deterministic tool result recorded in an immutable provenance log, the model can add semantic findings but cannot overturn the floor, and the system says out loud when it has no evidence and hands the decision to a person. That is the discipline a senior engineer already applies, made explicit and reproducible.'
businessContextEs: 'La revisión de código y la validación son donde se cotiza el riesgo de ingeniería. Un revisor que emite un hallazgo confiado pero falso cuesta confianza; un agente autónomo que fusiona sobre una suite verde que no desafió adversarialmente cuesta un incidente. El valor acá es un veredicto defendible: cada bloqueo se rastrea a un resultado de herramienta determinista registrado en un log de procedencia inmutable, el modelo puede sumar hallazgos semánticos pero no puede revocar el piso, y el sistema dice en voz alta cuando no tiene evidencia y entrega la decisión a una persona. Esa es la disciplina que un ingeniero senior ya aplica, hecha explícita y reproducible.'

strategicValue: 'ADRA is a reusable pattern for grounding a language model in deterministic evidence instead of letting its prose be the verdict, and for building an agent that refutes rather than flatters. The engine is client-agnostic: a client is a governance suite (conventions, ADRs, CI standards, glossary, incident cases) the engine grounds on, shipped with a complete fictional example (Northwind Data Platform) and selectable by an environment variable, so the same skills run against any standards without code changes. One connector Protocol lets the same loop run against GitHub, Azure DevOps, Databricks and Azure or against a self-contained offline emulator (synthetic git repos, PRs, wiki, boards, CI and a SQLite warehouse). It is deliberately framework-free (a hand-rolled state machine, no LangChain or LangGraph) and honest about scope: the connector-phase security controls it will need are labelled planned, not claimed as done.'
strategicValueEs: 'ADRA es un patrón reutilizable para fundamentar un modelo de lenguaje en evidencia determinista en vez de dejar que su prosa sea el veredicto, y para construir un agente que refuta en vez de adular. El motor es agnóstico al cliente: un cliente es una suite de gobernanza (convenciones, ADRs, estándares de CI, glosario, casos de incidentes) sobre la que el motor se fundamenta, entregada con un ejemplo ficticio completo (Northwind Data Platform) y seleccionable por una variable de entorno, así las mismas habilidades corren contra cualquier estándar sin cambiar el código. Un Protocol de conectores permite que el mismo ciclo corra contra GitHub, Azure DevOps, Databricks y Azure o contra un emulador offline autocontenido (repos git sintéticos, PRs, wiki, tableros, CI y un warehouse SQLite). Es deliberadamente libre de frameworks (una máquina de estados hecha a mano, sin LangChain ni LangGraph) y honesto sobre su alcance: los controles de seguridad de la fase de conectores que necesitará están rotulados como planeados, no reclamados como hechos.'

kpis:
  - label: 'What carries the verdict'
    labelEs: 'Qué carga el veredicto'
    baseline: 'The model prose is the verdict (false findings leak through)'
    baselineEs: 'La prosa del modelo es el veredicto (hallazgos falsos se filtran)'
    result: 'A deterministic floor (git, CI, bundle, lang/leak, SQL) grounds a blocking critic; every finding carries evidence'
    resultEs: 'Un piso determinista (git, CI, bundle, lenguaje/fugas, SQL) fundamenta un crítico bloqueante; cada hallazgo lleva su evidencia'
    impact: 'You audit the gate, not trust an opinion'
    impactEs: 'Auditas la compuerta, no confías en una opinión'
  - label: 'Autonomy stance'
    labelEs: 'Postura de autonomía'
    baseline: 'Autonomous agents treat "tests pass" as success and write freely'
    baselineEs: 'Los agentes autónomos tratan "los tests pasan" como éxito y escriben libremente'
    result: 'Adversarial critic tries to refute each artifact; read-only by default, human gate on PR create/push/merge'
    resultEs: 'El crítico adversarial intenta refutar cada artefacto; solo lectura por defecto, compuerta humana en crear/push/merge de PR'
    impact: 'No unsupervised writes; it escalates when it cannot verify'
    impactEs: 'Sin escrituras sin supervisión; escala cuando no puede verificar'
  - label: 'Runs offline'
    labelEs: 'Corre offline'
    baseline: 'Needs an API key and a cloud service'
    baselineEs: 'Necesita una API key y un servicio en la nube'
    result: 'A deterministic mock lane runs the whole loop and the test suite with no key'
    resultEs: 'Una vía mock determinista corre el ciclo completo y la suite de tests sin key'
    impact: 'Reproducible; a real provider is config-only via pydantic-ai'
    impactEs: 'Reproducible; un proveedor real es solo config vía pydantic-ai'
  - label: 'Grounding scope'
    labelEs: 'Alcance del fundamento'
    baseline: 'A reviewer wired to one host'
    baselineEs: 'Un revisor cableado a un solo host'
    result: '4 real connectors (GitHub, Azure DevOps, Databricks, Azure) + an offline emulator, one Protocol'
    resultEs: '4 conectores reales (GitHub, Azure DevOps, Databricks, Azure) + un emulador offline, un solo Protocol'
    impact: 'The same client-agnostic skills run anywhere'
    impactEs: 'Las mismas habilidades agnósticas al cliente corren en cualquier lado'

metrics:
  - label: 'Skills'
    labelEs: 'Habilidades'
    value: 'Six on one loop: code_review · pr_eval · experiment · improve · document · decide (decide is human-owned)'
    valueEs: 'Seis sobre un ciclo: code_review · pr_eval · experiment · improve · document · decide (decide es de dueño humano)'
  - label: 'Deterministic tools'
    labelEs: 'Herramientas deterministas'
    value: 'git · exact CI command · bundle validate · language/secret-leak scan · code discovery · SQL warehouse probes'
    valueEs: 'git · comando exacto de CI · validación de bundle · escaneo de lenguaje/fuga de secretos · descubrimiento de código · sondas al warehouse SQL'
  - label: 'Critic + judge'
    labelEs: 'Crítico + juez'
    value: 'Shared typed rubric drives a deterministic hard-floor pass + an LLM semantic-attack pass; LLM-as-judge with swap-and-average + reference anchoring'
    valueEs: 'Un rubric tipado compartido gobierna una pasada determinista de piso duro + una pasada de ataque semántico con LLM; LLM-como-juez con swap-and-average + anclaje a referencia'
  - label: 'Connectors'
    labelEs: 'Conectores'
    value: 'GitHub (REST v3) · Azure DevOps (REST 7.1) · Databricks (SDK) · Azure (identity + monitor); offline emulator (synthetic git/PRs/wiki/boards/CI + SQLite)'
    valueEs: 'GitHub (REST v3) · Azure DevOps (REST 7.1) · Databricks (SDK) · Azure (identity + monitor); emulador offline (git/PRs/wiki/tableros/CI sintéticos + SQLite)'
  - label: 'Providers'
    labelEs: 'Proveedores'
    value: 'pydantic-ai seam, config-only (ADRA_PROVIDER / ADRA_MODEL / ADRA_MODEL_<ROLE>), per-role routing; deterministic mock offline; no agent framework'
    valueEs: 'Capa pydantic-ai, solo config (ADRA_PROVIDER / ADRA_MODEL / ADRA_MODEL_<ROLE>), ruteo por rol; mock determinista offline; sin framework de agentes'
  - label: 'Console + package'
    labelEs: 'Consola + paquete'
    value: 'pip install adra (PyPI, Python >= 3.11, Apache-2.0); a private connection-first web console (FastAPI + web) consumes the engine live at adra.fasl-work.com'
    valueEs: 'pip install adra (PyPI, Python >= 3.11, Apache-2.0); una consola web privada connection-first (FastAPI + web) consume el motor, en vivo en adra.fasl-work.com'

stack: [Python, pydantic-ai, httpx, FastAPI, React, SQLite, pytest]
---

## From an opinion to a proof, a refutation, or an honest escalation

ADRA is a **deterministic-first, adversarial-validation engine** for the software lifecycle: it reviews diffs and PRs, runs hypothesis-driven validation experiments, proposes minimum-functional improvements, writes documentation back, and routes decisions, all on one loop. It is published on PyPI as [`adra`](https://pypi.org/project/adra) (`pip install adra`, Python >= 3.11, Apache-2.0), and a private connection-first web console consumes the same engine live at [adra.fasl-work.com](https://adra.fasl-work.com).

## Deterministic-first, by construction

The tools run **first**, not last. `git` and merge-base health, the exact CI command, `bundle validate`, a language and secret-leak scan, code discovery, and SQL warehouse probes each return a typed result that becomes two things at once: the grounding the model **may not contradict**, and the evidence written to an **immutable provenance log**. Because the deterministic floor carries the verdict, the whole loop and its tests run **offline with no API key** through a mock provider; connecting a real provider adds a semantic layer on top and never replaces the floor.

```
intake  plan  ground (deterministic tools)  generate  CRITIC
                                                 revise / accepted / escalate
                                                 artifacts + immutable run record
```

## A critic that refutes, a judge that swaps

The critic is two passes: a **deterministic hard-floor** keyed on a shared typed rubric (so "what we check" never drifts between the check and the prompt), then an **LLM semantic-attack** pass whose job is to **refute** an artifact, not bless it. The **LLM-as-judge** scores with **swap-and-average** and reference anchoring, so a winner counts only when it stays the winner after the comparison order is reversed. The orchestrator is a hand-rolled, **framework-free** state machine, no LangChain or LangGraph.

## Honest about autonomy and scope

ADRA is **read-only by default**: writes require an explicit external flag **and** a human gate, and the loop **escalates to a human** wherever nothing deterministic backs the verdict, exactly where a senior engineer would stop and ask. It is **client-agnostic** (a governance suite of conventions, ADRs, CI standards, glossary and incident cases, shipped with a complete fictional example, the Northwind Data Platform, and selectable by environment variable), and its connectors span GitHub, Azure DevOps, Databricks and Azure plus a fully offline emulator. The connector-phase security controls it will still need (dual-LLM capability split, sandboxed egress-filtered execution) are labelled **planned**, not claimed as done, which is why the package stays on `0.x`.

[Live console](https://adra.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/ADRA) · [Package on PyPI](https://pypi.org/project/adra)
