# cPanel Git Deployment

Este repositorio está configurado para `Git Version Control` de cPanel.

## Cómo funciona

1. cPanel hace pull del repo desde GitHub.
2. `.cpanel.yml` ejecuta `scripts/cpanel-deploy.sh`.
3. El script copia `cpanel-dist/` (artifact pre-built) a `$HOME/public_html/`.
4. Si `cpanel-dist/` no existe y el servidor tiene Node.js, compila con `npm ci && npm run build`.

## Archivos relevantes

| Archivo | Propósito |
|---------|-----------|
| `.cpanel.yml` | Entry point de cPanel — ejecuta el script de deploy |
| `scripts/cpanel-deploy.sh` | Copia el sitio a `public_html` de forma segura |
| `scripts/prepare-cpanel-static.mjs` | Genera `cpanel-dist/` desde `dist/` (se ejecuta en local) |
| `cpanel-dist/` | Artifact pre-built listo para deploy |

## Flujo de trabajo

```bash
# 1. Build local
npm run build:cpanel

# 2. Revisar cambios
git status

# 3. Commit y push
git add cpanel-dist/ .cpanel.yml scripts/
git commit -m "Deploy: update site"
git push origin main

# 4. En cPanel
#    Git Version Control → Update from Remote → Deploy HEAD Commit
```

## Notas

- El deploy path es `$HOME/public_html` (raíz del dominio fasl-work.com).
- El script preserva `.htaccess`, `.well-known/`, `cgi-bin/` y otros archivos del hosting.
- Los logs de deploy se guardan en `$HOME/deploy-logs/fasl-portfolio.log`.
- cPanel requiere que no haya cambios sin commit en el repo para poder deployar.
