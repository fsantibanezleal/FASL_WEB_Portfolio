"""Fail if tracked content carries an em-dash or an emoji (ADR-0067).

Felipe reads both as a signal that text was machine-generated. This mirrors the guard the product
repos inherit from the archetype template; the public surfaces had none, and had drifted to 1,613
em-dashes before this was added.

The dash is also caught when it is written as an HTML/XML character reference (&mdash;, &#8212;,
&#x2014;, and the same three forms of the horizontal bar): an SVG or HTML page renders "&#x2014;" as
an em-dash, and 37 of them in 16 diagrams were live on fasl-work.com because the guard only looked
for the character (fixed 2026-09-18).

Arrows (U+2192, and &rarr;, &#8594;, &#x2192;) are reported but do not fail the run by default:
diagrams use them as notation (axes, mappings, flow connectors) in dozens of places, and whether
those go is Felipe's call. Pass --strict-arrows to make them fail too.

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
# Named, decimal and hexadecimal references to U+2014 and U+2015, leading zeros allowed.
BANNED_REF = re.compile(r'&(?:mdash|horbar|#0*821[23]|#x0*201[45]);', re.IGNORECASE)
ARROW = re.compile(r'→|&(?:rarr|#0*8594|#x0*2192);', re.IGNORECASE)
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
    strict_arrows = '--strict-arrows' in sys.argv[1:]
    # A Windows console defaults to cp1252 and would crash printing the very characters we ban.
    try:
        sys.stdout.reconfigure(encoding='utf-8', errors='replace')
    except (AttributeError, ValueError):
        pass
    hits = []
    arrows = []
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
            for m in BANNED_REF.finditer(line):
                hits.append(f'  {p}:{n}:{m.start() + 1}  dash written as a reference {m.group(0)}')
            m = EMOJI.search(line)
            if m:
                hits.append(f'  {p}:{n}:{m.start() + 1}  emoji {m.group(0)!r}')
            for m in ARROW.finditer(line):
                shown = 'U+2192' if m.group(0) == '→' else m.group(0)
                arrows.append(f'  {p}:{n}:{m.start() + 1}  arrow {shown}')
    if strict_arrows:
        hits += arrows
    elif arrows:
        files = len({a.split(':')[0] for a in arrows})
        print(f'note: {len(arrows)} arrow(s) in {files} file(s), reported only (use --strict-arrows to fail on them)')
    if hits:
        print('banned characters found (ADR-0067: no em-dash, no emoji in content):')
        print('\n'.join(hits[:200]))
        if len(hits) > 200:
            print(f'  ... and {len(hits) - 200} more')
        print('')
        print('Replace an em-dash with a comma, colon, semicolon, period, parentheses, or a middot')
        print('as the sense requires; a reference such as &#x2014; renders as the same dash. Remove emojis.')
        return 1
    print('content standards OK: no em-dash (character or reference), no emoji')
    return 0


if __name__ == '__main__':
    sys.exit(main())
