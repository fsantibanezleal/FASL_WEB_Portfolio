import { getCollection } from 'astro:content';

export async function getProducts() {
  const products = await getCollection('product');
  return products.sort((a, b) => b.data.date.getTime() - a.data.date.getTime());
}

export async function getFeaturedProducts() {
  const products = await getProducts();
  return products.filter((p) => p.data.featured);
}
