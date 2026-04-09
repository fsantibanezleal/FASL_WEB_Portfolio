# cPanel Git Deployment

Este repositorio queda configurado para `Git Version Control` de cPanel con dos rutas:

- Opcion A: desplegar el artefacto versionado en `cpanel-dist/`.
- Opcion B: si `cpanel-dist/` no existe y el servidor tiene `node` + `npm`, compilar en cPanel con `npm ci && npm run build`.

## Archivos relevantes

- `.cpanel.yml`: entrypoint de despliegue para cPanel.
- `scripts/cpanel-deploy.sh`: copia el sitio al `public_html` de forma segura.
- `scripts/prepare-cpanel-static.mjs`: genera `cpanel-dist/` desde `dist/`.

## Flujo recomendado

1. Ejecutar `npm run build:cpanel`.
2. Revisar cambios en `cpanel-dist/`.
3. Commit de `.cpanel.yml`, `scripts/`, `package.json`, `DEPLOY-CPANEL.md`, `cpanel-dist/` y los cambios del sitio.
4. Push a GitHub.
5. En cPanel, usar `Update from Remote`.
6. En cPanel, usar `Deploy HEAD Commit`.

## Notas

- El path de despliegue por defecto es `$HOME/public_html` (raíz del dominio fasl-work.com en el hosting compartido).
- El script preserva `.htaccess`, `.well-known/` y `cgi-bin/` si ya existen en el hosting.
- cPanel no habilita deploy si falta `.cpanel.yml` en la raiz o si el repo administrado tiene cambios sin commit.
