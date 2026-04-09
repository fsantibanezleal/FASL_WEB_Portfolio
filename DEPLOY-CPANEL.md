# cPanel Git Deployment

Este repositorio está configurado para `Git Version Control` de cPanel.

## Cómo funciona

1. cPanel hace pull del repo desde GitHub.
2. `.cpanel.yml` ejecuta `scripts/cpanel-deploy.sh`.
3. El script copia `cpanel-dist/` a `$HOME/public_html/fasl-work.com/`.
4. Si `cpanel-dist/` no existe y el servidor tiene Node.js, compila con `npm ci && npm run build`.

## Archivos relevantes

| Archivo | Propósito |
|---------|-----------|
| `.cpanel.yml` | Entry point de cPanel — ejecuta el script de deploy |
| `scripts/cpanel-deploy.sh` | Copia el sitio a `public_html/fasl-work.com/` de forma segura |
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

## Seguridad

- El deploy path es `$HOME/public_html/fasl-work.com` (subdirectorio dedicado).
- **NUNCA** escribe en `public_html/` directamente — protege los otros sitios del hosting.
- El script tiene doble validación: debe ser subdirectorio de `public_html` Y contener "fasl" en el nombre.
- Si cPanel mapea el dominio a otra carpeta, editar `SITE_DIR` en `scripts/cpanel-deploy.sh`.
- Preserva `.htaccess` si existe en el directorio destino.
- Los logs de deploy se guardan en `$HOME/deploy-logs/fasl-portfolio.log`.
- cPanel requiere que no haya cambios sin commit en el repo para poder deployar.
