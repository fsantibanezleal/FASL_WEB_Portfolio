"""Fail if tracked content carries an em-dash or an emoji (ADR-0067).

Felipe reads both as a signal that text was machine-generated. This mirrors the guard the product
repos inherit from the archetype template; the public surfaces had none, and had drifted to 1,613
em-dashes before this was added.

Not banned: the ASCII double hyphen (correct in CLI flags, code, and LaTeX), the en-dash, and the
middot, which is the usual replacement for a separator.
"""
import pathlib
import re
import subprocess
import sys

BANNED = {
    '—': 'em-dash (U+2014)',
    '―': 'horizontal bar (U+2015)',
}
EMOJI = re.compile('[\U0001F000-\U0001FAFF️]')

# Third-party bundles and other people's words are not ours to rewrite.
SKIP_DIRS = {'.git', 'node_modules', 'vendor', 'dist', '_site'}
SKIP_SUFFIX = {'.min.js', '.min.css', '.lock'}
SKIP_PATHS = {'_data/comments'}
TEXT_SUFFIX = {'.md', '.markdown', '.yml', '.yaml', '.html', '.svg', '.astro',
               '.ts', '.tsx', '.js', '.json', '.scss', '.css', '.txt'}


def tracked_files():
    out = subprocess.run(['git', 'ls-files'], capture_output=True, text=True).stdout
    for line in out.splitlines():
        p = pathlib.Path(line)
        if set(p.parts) & SKIP_DIRS:
            continue
        if any(str(p).replace(chr(92), '/').startswith(s) for s in SKIP_PATHS):
            continue
        if any(str(p).endswith(s) for s in SKIP_SUFFIX):
            continue
        if p.suffix.lower() in TEXT_SUFFIX and p.is_file():
            yield p


def main():
    # A Windows console defaults to cp1252 and would crash printing the very characters we ban.
    try:
        sys.stdout.reconfigure(encoding='utf-8', errors='replace')
    except (AttributeError, ValueError):
        pass
    hits = []
    for p in tracked_files():
        try:
            text = p.read_text(encoding='utf-8')
        except (UnicodeDecodeError, OSError):
            continue
        for n, line in enumerate(text.splitlines(), 1):
            for ch, label in BANNED.items():
                col = line.find(ch)
                if col >= 0:
                    hits.append(f'  {p}:{n}:{col + 1}  {label}')
            m = EMOJI.search(line)
            if m:
                hits.append(f'  {p}:{n}:{m.start() + 1}  emoji {m.group(0)!r}')
    if hits:
        print('banned characters found (ADR-0067: no em-dash, no emoji in content):')
        print('\n'.join(hits[:200]))
        if len(hits) > 200:
            print(f'  ... and {len(hits) - 200} more')
        print('')
        print('Replace an em-dash with a comma, colon, semicolon, period, parentheses, or a middot')
        print('as the sense requires. Remove emojis.')
        return 1
    print(f'content standards OK: no em-dash, no emoji')
    return 0


if __name__ == '__main__':
    sys.exit(main())
