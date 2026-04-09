# cPanel Git Deployment

## Hosting setup

- **Primary domain**: fasl-work.com → `$HOME/public_html/` (direct, no rewrite needed)
- **Addon domain**: micromundo.team → `$HOME/public_html/micromundo.team/`
- **Server IP**: 92.204.212.218
- **DNS**: nameservers in GoDaddy pointing to 123-reg (propagation up to 48h)

## How the deploy works

1. cPanel pulls the repo from GitHub.
2. `.cpanel.yml` executes `scripts/cpanel-deploy.sh`.
3. The script copies `cpanel-dist/` into `$HOME/public_html/`.
4. A **manifest** (`.fasl-deploy-manifest`) tracks which files belong to our site.
5. On redeploy, only manifested files are removed — addon domain folders are never touched.

## Files

| File | Purpose |
|------|---------|
| `.cpanel.yml` | cPanel entry point |
| `scripts/cpanel-deploy.sh` | Manifest-based deploy to public_html |
| `scripts/prepare-cpanel-static.mjs` | Generates `cpanel-dist/` from `dist/` (local) |
| `cpanel-dist/` | Pre-built static artifact |

## Workflow

```bash
# 1. Build
npm run build:cpanel

# 2. Commit and push
git add cpanel-dist/
git commit -m "Deploy: update site"
git push origin develop

# 3. Create PR (develop → main), review, merge

# 4. In cPanel: Git Version Control → Update from Remote → Deploy HEAD Commit
```

## Safety

- Uses **manifest-based cleanup**: only removes files that were deployed by us.
- **Never deletes** addon domain folders (micromundo.team/, etc.) or hosting files.
- Manifest stored as `.fasl-deploy-manifest` in public_html.
- Logs in `$HOME/deploy-logs/fasl-portfolio.log`.
