# cPanel Git Deployment

## Hosting layout

```
public_html/                    ← shared root, multiple sites
├── .htaccess                   ← rewrite rules per domain
├── fasl-work.com/              ← OUR site (primary domain)
├── micromundo.team/            ← WordPress (addon domain)
└── (other sites)               ← NEVER TOUCHED by our deploy
```

## How it works

1. cPanel pulls the repo from GitHub.
2. `.cpanel.yml` runs `scripts/cpanel-deploy.sh`.
3. Script copies `cpanel-dist/` → `public_html/fasl-work.com/`.
4. Script prepends rewrite rules at top of `public_html/.htaccess`.
5. Rewrite routes `fasl-work.com` requests to the subdirectory.

## Safety

- Site files go ONLY into `public_html/fasl-work.com/` — never the root.
- `.htaccess` uses BEGIN/END markers — only our block is touched.
- Rules prepended at TOP so they run before any WordPress catch-all.
- Rewrite conditioned on `HTTP_HOST` — only matches fasl-work.com.
- Other sites (micromundo.team, etc.) are never modified.

## Files

| File | Purpose |
|------|---------|
| `.cpanel.yml` | cPanel entry point |
| `scripts/cpanel-deploy.sh` | Deploy to subdirectory + install htaccess |
| `scripts/htaccess-root.conf` | Rewrite rules (prepended to root .htaccess) |
| `scripts/prepare-cpanel-static.mjs` | Generate `cpanel-dist/` from `dist/` (local) |
| `cpanel-dist/` | Pre-built static artifact |

## Workflow

```bash
npm run build:cpanel
git add cpanel-dist/
git commit -m "Deploy: update site"
git push origin develop
# Create PR develop → main, review, merge
# cPanel: Update from Remote → Deploy HEAD Commit
```
