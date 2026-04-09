import { z, defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';

const metadataDefinition = () =>
  z
    .object({
      title: z.string().optional(),
      ignoreTitleTemplate: z.boolean().optional(),
      canonical: z.string().url().optional(),
      robots: z
        .object({
          index: z.boolean().optional(),
          follow: z.boolean().optional(),
        })
        .optional(),
      description: z.string().optional(),
      openGraph: z
        .object({
          url: z.string().optional(),
          siteName: z.string().optional(),
          images: z
            .array(
              z.object({
                url: z.string(),
                width: z.number().optional(),
                height: z.number().optional(),
              })
            )
            .optional(),
          locale: z.string().optional(),
          type: z.string().optional(),
        })
        .optional(),
      twitter: z
        .object({
          handle: z.string().optional(),
          site: z.string().optional(),
          cardType: z.string().optional(),
        })
        .optional(),
    })
    .optional();

const postCollection = defineCollection({
  loader: glob({ pattern: ['*.md', '*.mdx'], base: 'src/data/post' }),
  schema: z.object({
    publishDate: z.date().optional(),
    updateDate: z.date().optional(),
    draft: z.boolean().optional(),
    title: z.string(),
    excerpt: z.string().optional(),
    image: z.string().optional(),
    category: z.string().optional(),
    tags: z.array(z.string()).optional(),
    author: z.string().optional(),
    metadata: metadataDefinition(),
  }),
});

const productCollection = defineCollection({
  loader: glob({ pattern: ['*.md', '*.mdx'], base: 'src/data/products' }),
  schema: z.object({
    title: z.string(),
    titleEs: z.string(),
    slug: z.string(),
    date: z.date(),
    category: z.string(),
    excerpt: z.string(),
    excerptEs: z.string(),
    icon: z.string(),
    tags: z.array(z.string()),
    proprietary: z.boolean().default(false),
    featured: z.boolean().default(false),
    image: z.string().optional(),
    assetPatterns: z.array(z.string()).optional(),

    // External links
    github: z.string().url().optional(),
    wiki: z.string().url().optional(),
    demo: z.string().url().optional(),
    video: z.string().url().optional(),
    publication: z.string().url().optional(),
    website: z.string().url().optional(),

    // Business context — Overview tab
    challenge: z.string(),
    challengeEs: z.string(),
    approach: z.string(),
    approachEs: z.string(),

    // Business narrative — Business Impact tab
    businessContext: z.string(),
    businessContextEs: z.string(),
    strategicValue: z.string(),
    strategicValueEs: z.string(),

    // KPIs
    kpis: z.array(
      z.object({
        label: z.string(),
        labelEs: z.string(),
        baseline: z.string(),
        baselineEs: z.string(),
        result: z.string(),
        resultEs: z.string(),
        impact: z.string(),
        impactEs: z.string(),
      })
    ),

    // Metrics
    metrics: z.array(
      z.object({
        label: z.string(),
        labelEs: z.string(),
        value: z.string(),
        valueEs: z.string(),
      })
    ),

    // Tech stack
    stack: z.array(z.string()),

    metadata: metadataDefinition(),
  }),
});

export const collections = {
  post: postCollection,
  product: productCollection,
};
