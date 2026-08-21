# FASL.work portfolio

The source of [fasl-work.com](https://fasl-work.com), the portfolio surface for Felipe
Santibanez-Leal: 64 product entries, each bilingual (EN/ES), most linking to a live app.

[![License](https://img.shields.io/github/license/fsantibanezleal/FASL_WEB_Portfolio)](LICENSE.md)

## What this repo is

A static [Astro 5](https://astro.build/) site built on the
[AstroWind](https://github.com/onwidget/astrowind) template, with Tailwind CSS 3 and
[astro-icon](https://github.com/natemoo-re/astro-icon) (tabler set).

Content lives in `src/data/`, not in pages. One markdown file per product under
`src/data/products/`, each carrying both languages in parallel front-matter keys (`title` and
`titleEs`, `excerpt` and `excerptEs`, and so on). Adding a product means adding one file; the
routes, the cards, the category facets and both language trees follow from it.

Architecture diagrams are hand-authored SVGs under
`src/assets/images/projects/diagrams/`, theme-aware so they read in light and dark.

## Layout

| Path | What it holds |
|---|---|
| `src/data/products/` | one markdown file per product, bilingual |
| `src/data/post/` | blog entries |
| `src/pages/` | routes; `src/pages/es/` mirrors the English tree |
| `src/assets/images/projects/diagrams/` | hand-authored architecture SVGs |
| `src/config.yaml` | site metadata, title template, analytics |
| `src/navigation.ts` | header and footer structure, per language |
| `scripts/check_content_standards.py` | the ADR-0067 guard, see below |
| `dist/` | the built site, committed on purpose, see Deploy |

## Develop

```bash
npm ci
npm run dev      # http://localhost:4321
npm run build    # writes dist/
npm run check    # astro check + eslint + prettier
```

Node 18, 20 and 22 are all exercised in CI.

## Content standards

`scripts/check_content_standards.py` fails the build on an em-dash or an emoji in tracked
content, including SVG text. This mirrors the guard the product repos inherit from the archetype
template (ADR-0067); this surface had none, and had drifted to 823 em-dashes plus a set of emoji
before it was added.

```bash
python3 scripts/check_content_standards.py
```

Replace an em-dash with a comma, colon, semicolon, period, parentheses, or a middot as the sense
requires. The ASCII double hyphen, the en-dash and the middot are all fine.

## Deploy

`dist/` is committed, and that is deliberate: the host serves the built folder directly and does
not run a build. The VPS syncs `dist/` from `main` into the nginx root, so **a local
`npm run build` and commit is mandatory before deploying**.

The `netlify.toml`, `docker-compose.yml` and `Dockerfile` in this repo are unused leftovers from
the template. The site is served by nginx, not by Netlify or a container.

## Credits

Built on [AstroWind](https://github.com/onwidget/astrowind) by onWidget, MIT licensed. This repo
keeps that license; see [LICENSE.md](./LICENSE.md).
