import { getCollection } from 'astro:content';

export type Family =
  | 'faena'
  | 'mining'
  | 'geo'
  | 'science'
  | 'life'
  | 'optics'
  | 'agentic'
  | 'data'
  | 'interaction'
  | 'outreach'
  | 'mobile'
  | 'industry';

// The order the families render down the portfolio page (strongest lines first).
export const FAMILY_ORDER: Family[] = [
  'faena',
  'mining',
  'geo',
  'science',
  'life',
  'optics',
  'agentic',
  'data',
  'interaction',
  'outreach',
  'mobile',
  'industry',
];

// A product's family is derived from its category (so the 40+ existing entries need no edit),
// unless the frontmatter sets `family:` explicitly. Proprietary work always routes to `industry`.
const CATEGORY_TO_FAMILY: Record<string, Family> = {
  // Every product sets `family:` explicitly since 2026-09-26; this map is only the fallback for a new entry.
  'mining-analytics': 'faena',
  'mining-optimization': 'mining',
  'mining-simulation': 'mining',
  geotechnical: 'mining',
  'predictive-maintenance': 'faena',
  geophysics: 'geo',
  '3d-visualization': 'geo',
  'quantum-computing': 'science',
  simulation: 'science',
  research: 'science',
  'scientific-ml': 'science',
  biophysics: 'life',
  'computational-optics': 'optics',
  'spectral-analysis': 'optics',
  'computer-vision': 'optics',
  'image-representation': 'optics',
  'agentic-ai': 'agentic',
  'data-engineering': 'data',
  'quant-finance': 'data',
  'audio-signal': 'data',
  accessibility: 'interaction',
  robotics: 'interaction',
  education: 'outreach',
  'mobile-apps': 'mobile',
};

export function familyOf(data: { family?: string; category: string; proprietary?: boolean }): Family {
  // Explicit family wins (so a private product of Felipe's own, e.g. an agentic system or a
  // mobile app, groups by what it IS, keeping its lock badge). A proprietary product with no
  // explicit family is client-confidential work (Codelco / Omega) and goes to `industry`.
  if (data.family && FAMILY_ORDER.includes(data.family as Family)) return data.family as Family;
  if (data.proprietary) return 'industry';
  return CATEGORY_TO_FAMILY[data.category] ?? 'platforms';
}

export async function getProducts() {
  const products = await getCollection('product');
  return products.sort((a, b) => b.data.date.getTime() - a.data.date.getTime());
}

export async function getFeaturedProducts() {
  const products = await getProducts();
  return products.filter((p) => p.data.featured);
}

// Products grouped into the twelve families, in FAMILY_ORDER, each already date-sorted.
export async function getProductsByFamily() {
  const products = await getProducts();
  return FAMILY_ORDER.map((family) => ({
    family,
    products: products.filter((p) => familyOf(p.data) === family),
  })).filter((g) => g.products.length > 0);
}
