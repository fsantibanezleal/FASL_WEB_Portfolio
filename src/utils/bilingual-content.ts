/**
 * Splits bilingual markdown body content using <!-- ES --> separator.
 * Content before the separator is English, after is Spanish.
 * If no separator exists, the full content is used for both languages.
 */
export function splitBilingualContent(body: string): { en: string; es: string } {
  const separator = '<!-- ES -->';
  const idx = body.indexOf(separator);
  if (idx === -1) {
    return { en: body, es: body };
  }
  return {
    en: body.substring(0, idx).trim(),
    es: body.substring(idx + separator.length).trim(),
  };
}
