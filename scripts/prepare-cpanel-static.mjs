import { cp, mkdir, rm, stat } from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(scriptDir, '..');
const distDir = path.join(repoRoot, 'dist');
const cpanelDistDir = path.join(repoRoot, 'cpanel-dist');

try {
  await stat(distDir);
} catch {
  console.error('dist/ does not exist. Run `npm run build` before preparing cPanel artifacts.');
  process.exit(1);
}

await rm(cpanelDistDir, { recursive: true, force: true });
await mkdir(cpanelDistDir, { recursive: true });
await cp(distDir, cpanelDistDir, { recursive: true });

console.log('Prepared cpanel-dist/ from dist/.');
