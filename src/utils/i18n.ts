export type Locale = 'en' | 'es';
export const defaultLocale: Locale = 'en';
export const locales: Locale[] = ['en', 'es'];

const translations: Record<string, Record<Locale, string>> = {
  // Navigation
  'nav.home': { en: 'Home', es: 'Inicio' },
  'nav.portfolio': { en: 'Portfolio', es: 'Portafolio' },
  'nav.services': { en: 'Services', es: 'Servicios' },
  'nav.about': { en: 'About', es: 'Acerca de' },
  'nav.contact': { en: 'Contact', es: 'Contacto' },

  // Homepage
  'hero.tagline': { en: 'Engineering & Applied Technology', es: 'Ingeniería y Tecnología Aplicada' },
  'hero.title.line1': { en: 'Engineering Prototypes', es: 'Prototipos de Ingeniería' },
  'hero.title.line2': { en: '& Digital Solutions', es: 'y Soluciones Digitales' },
  'hero.subtitle': {
    en: 'We design and build software products, machine learning platforms, and technology solutions for mining, industry, and research.',
    es: 'Diseñamos y construimos productos de software, plataformas de machine learning y soluciones tecnológicas para minería, industria e investigación.',
  },
  'hero.cta.portfolio': { en: 'View Portfolio', es: 'Ver Portafolio' },
  'hero.cta.contact': { en: 'Get in Touch', es: 'Contáctanos' },

  // Portfolio
  'portfolio.title': { en: 'Portfolio', es: 'Portafolio' },
  'portfolio.subtitle': {
    en: 'Engineering prototypes, software products, and technology solutions',
    es: 'Prototipos de ingeniería, productos de software y soluciones tecnológicas',
  },
  'portfolio.tagline': { en: 'Our Work', es: 'Nuestro Trabajo' },
  'portfolio.view': { en: 'View Details', es: 'Ver Detalles' },
  'portfolio.back': { en: 'Back to Portfolio', es: 'Volver al Portafolio' },

  // Categories
  'category.mining-optimization': { en: 'Mining & Optimization', es: 'Minería y Optimización' },
  'category.computer-vision': { en: 'Computer Vision & AI', es: 'Visión por Computador e IA' },
  'category.3d-visualization': { en: '3D & Visualization', es: '3D y Visualización' },
  'category.accessibility': { en: 'Accessibility & Haptics', es: 'Accesibilidad y Háptica' },
  'category.geotechnical': { en: 'Geotechnical & Risk', es: 'Geotecnia y Riesgo' },
  'category.spectral-analysis': { en: 'Spectral Analysis', es: 'Análisis Espectral' },
  'category.computational-optics': { en: 'Computational Optics', es: 'Óptica Computacional' },
  'category.biophysics': { en: 'Biophysics & Simulation', es: 'Biofísica y Simulación' },
  'category.robotics': { en: 'Robotics & Control', es: 'Robótica y Control' },
  'category.education': { en: 'Education & Outreach', es: 'Educación y Divulgación' },
  'category.research': { en: 'Research & Thesis', es: 'Investigación y Tesis' },
  'category.all': { en: 'All', es: 'Todos' },

  // Sections
  'section.kpis': { en: 'Key Performance Indicators', es: 'Indicadores Clave de Rendimiento' },
  'section.architecture': { en: 'System Architecture', es: 'Arquitectura del Sistema' },
  'section.stack': { en: 'Technology Stack', es: 'Stack Tecnológico' },
  'section.challenge': { en: 'The Challenge', es: 'El Desafío' },
  'section.approach': { en: 'Our Approach', es: 'Nuestro Enfoque' },
  'section.results': { en: 'Results', es: 'Resultados' },

  // About
  'about.title': { en: 'About FASL.work', es: 'Acerca de FASL.work' },
  'about.description': {
    en: 'FASL.work is an engineering and applied technology practice founded by Felipe Santibañez-Leal, PhD in Electrical Engineering. We specialize in machine learning, 3D visualization, industrial optimization, and custom software for mining and research.',
    es: 'FASL.work es una práctica de ingeniería y tecnología aplicada fundada por Felipe Santibañez-Leal, PhD en Ingeniería Eléctrica. Nos especializamos en machine learning, visualización 3D, optimización industrial y software a medida para minería e investigación.',
  },

  // Services
  'services.title': { en: 'What We Do', es: 'Qué Hacemos' },
  'services.subtitle': {
    en: 'From concept to production-grade deployment',
    es: 'Desde el concepto hasta el despliegue en producción',
  },

  // Footer
  'footer.rights': { en: 'All rights reserved.', es: 'Todos los derechos reservados.' },
  'footer.tagline': { en: 'Research · Hardware · Digital Solutions', es: 'Investigación · Hardware · Soluciones Digitales' },

  // Product detail
  'product.proprietary': { en: 'Proprietary — source code not publicly available', es: 'Propietario — código fuente no disponible públicamente' },
  'product.date': { en: 'Date', es: 'Fecha' },
  'product.tags': { en: 'Tags', es: 'Etiquetas' },
  'product.metrics': { en: 'Key Metrics', es: 'Métricas Clave' },

  // Stats
  'stats.projects': { en: 'Projects Delivered', es: 'Proyectos Entregados' },
  'stats.years': { en: 'Years of Experience', es: 'Años de Experiencia' },
  'stats.industries': { en: 'Industries Served', es: 'Industrias Atendidas' },
  'stats.technologies': { en: 'Technologies', es: 'Tecnologías' },

  // Language switcher
  'lang.switch': { en: 'Español', es: 'English' },
};

export function t(key: string, locale: Locale = defaultLocale): string {
  return translations[key]?.[locale] ?? key;
}

export function getLocalePath(path: string, locale: Locale): string {
  if (locale === defaultLocale) {
    return path;
  }
  return `/${locale}${path}`;
}

export function getLocaleFromPath(path: string): Locale {
  const segments = path.split('/').filter(Boolean);
  if (segments[0] && locales.includes(segments[0] as Locale) && segments[0] !== defaultLocale) {
    return segments[0] as Locale;
  }
  return defaultLocale;
}
