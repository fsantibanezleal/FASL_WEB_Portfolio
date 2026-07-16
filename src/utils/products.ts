import { getCollection } from 'astro:content';

export type Family = 'faena' | 'labs' | 'platforms' | 'agentic' | 'optics' | 'industry';

// The order the families render down the portfolio page (strongest lines first).
export const FAMILY_ORDER: Family[] = ['faena', 'labs', 'platforms', 'agentic', 'optics', 'industry'];

// A product's family is derived from its category (so the 40+ existing entries need no edit),
// unless the frontmatter sets `family:` explicitly. Proprietary work always routes to `industry`.
const CATEGORY_TO_FAMILY: Record<string, Family> = {
  'mining-analytics': 'faena',
  'mining-optimization': 'faena',
  geotechnical: 'faena',
  'predictive-maintenance': 'faena',

  'quantum-computing': 'labs',
  'scientific-ml': 'labs',
  simulation: 'labs',
  research: 'labs',

  'data-engineering': 'platforms',
  'quant-finance': 'platforms',
  'audio-signal': 'platforms',
  education: 'platforms',
  '3d-visualization': 'platforms',
  'computer-vision': 'platforms',
  'mobile-apps': 'platforms',

  'agentic-ai': 'agentic',

  'computational-optics': 'optics',
  'spectral-analysis': 'optics',
  biophysics: 'optics',
  accessibility: 'optics',
  robotics: 'optics',
  geophysics: 'optics',
};

export function familyOf(data: { family?: string; category: string; proprietary?: boolean }): Family {
  // Explicit family wins (so a private product of Felipe's own — e.g. an agentic system or a
  // mobile app — groups by what it IS, keeping its lock badge). A proprietary product with no
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

// Products grouped into the 6 families, in FAMILY_ORDER, each already date-sorted.
export async function getProductsByFamily() {
  const products = await getProducts();
  return FAMILY_ORDER.map((family) => ({
    family,
    products: products.filter((p) => familyOf(p.data) === family),
  })).filter((g) => g.products.length > 0);
}
