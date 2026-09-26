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
  'category.audio-signal': { en: 'Audio & Signal', es: 'Audio y Señales' },
  'category.quant-finance': { en: 'Quantitative Finance', es: 'Finanzas Cuantitativas' },
  'category.geophysics': { en: 'Geophysics & Seismic Hazard', es: 'Geofísica y Riesgo Sísmico' },
  'category.agentic-ai': { en: 'Agentic AI & Automation', es: 'IA Agéntica y Automatización' },
  'category.mobile-apps': { en: 'Mobile Apps', es: 'Apps Móviles' },
  'category.simulation': { en: 'Simulation & Operations Research', es: 'Simulación e Investigación de Operaciones' },
  'category.predictive-maintenance': { en: 'Predictive Maintenance', es: 'Mantenimiento Predictivo' },
  'category.quantum-computing': { en: 'Quantum Computing', es: 'Computación Cuántica' },
  'category.scientific-ml': { en: 'Scientific Machine Learning', es: 'Machine Learning Científico' },
  'category.image-representation': { en: 'Image Representation', es: 'Representación de Imágenes' },
  'category.mining-analytics': { en: 'Mining Analytics', es: 'Analítica Minera' },
  'category.data-engineering': { en: 'Data Engineering', es: 'Ingeniería de Datos' },
  'category.all': { en: 'All', es: 'Todos' },

  // Families (the twelve domain groupings on the portfolio, 2026-09-26)
  'family.all': { en: 'All', es: 'Todo' },
  'family.faena': { en: 'Faena · Mining Analytics', es: 'Faena · Analítica Minera' },
  'family.faena.blurb': {
    en: 'The hub of browser-native mining apps: comminution, blasting, dispatch, scheduling, stockpiles, processing, geology and asset health, each with an offline precompute lane, a results ledger and a stated evidence boundary.',
    es: 'El hub de apps mineras nativas del navegador: conminución, tronadura, despacho, programación, acopios, procesamiento, geología y salud de activos, cada una con una vía de precómputo fuera de línea, un registro de resultados y un límite de evidencia declarado.',
  },
  'family.mining': { en: 'Mining Operations & Processing', es: 'Operaciones y Procesamiento Minero' },
  'family.mining.blurb': {
    en: 'Mining products outside the hub: ventilation, drillholes, stockpile visualization, geotechnical risk, quantum optimization measured on mining problems, and phenomenological and learned models of mineral processing.',
    es: 'Productos mineros fuera del hub: ventilación, sondajes, visualización de acopios, riesgo geotécnico, optimización cuántica medida sobre problemas mineros, y modelos fenomenológicos y aprendidos del procesamiento de minerales.',
  },
  'family.geo': { en: 'Earth Science & Geospatial 3D', es: 'Ciencias de la Tierra y 3D Geoespacial' },
  'family.geo.blurb': {
    en: 'Seismic forecasting, geophysical inversion, fractured-reservoir well tests, geospatial tooling, real places rebuilt in 3D, streaming reconstruction, and information-theoretic sampling of geological images.',
    es: 'Pronóstico sísmico, inversión geofísica, pruebas de pozo en reservorios fracturados, herramientas geoespaciales, lugares reales reconstruidos en 3D, reconstrucción en streaming y muestreo informacional de imágenes geológicas.',
  },
  'family.science': { en: 'Physics, Mathematics & Scientific Computing', es: 'Física, Matemáticas y Computación Científica' },
  'family.science.blurb': {
    en: 'Research labs on a method family or a theorem, end to end: optimal control of magnetization, the three-gap theorem, symbolic regression, simulation, physics-informed networks and quantum problems on simulators, with published negative results.',
    es: 'Laboratorios de investigación sobre una familia de métodos o un teorema, de punta a punta: control óptimo de magnetización, el teorema de las tres distancias, regresión simbólica, simulación, redes informadas por física y problemas cuánticos en simuladores, con resultados negativos publicados.',
  },
  'family.life': { en: 'Life Sciences & Neuroscience', es: 'Ciencias de la Vida y Neurociencia' },
  'family.life.blurb': {
    en: 'Cardiac inverse problems, cell migration and Potts models, and the fly connectome used as a frozen network and driven as a whole nervous system, every claim measured against null controls.',
    es: 'Problemas inversos cardíacos, migración celular y modelos de Potts, y el conectoma de la mosca usado como red congelada y manejado como sistema nervioso completo, cada afirmación medida contra controles nulos.',
  },
  'family.optics': { en: 'Optics, Vision & Imaging', es: 'Óptica, Visión e Imagenología' },
  'family.optics.blurb': {
    en: 'Super-resolution microscopy, holographic tweezers, dual photography, hyperspectral geometallurgy, damage vision in engineering units, RGB-D measurement and the mathematical representations of an image.',
    es: 'Microscopía de superresolución, pinzas holográficas, fotografía dual, geometalurgia hiperespectral, visión de daño en unidades de ingeniería, medición RGB-D y las representaciones matemáticas de una imagen.',
  },
  'family.agentic': { en: 'AI, Agents & Software Systems', es: 'IA, Agentes y Sistemas de Software' },
  'family.agentic.blurb': {
    en: 'Agent-based systems that must stay accountable: adversarial review, a single-seeker career workbench, a management console, industrial agent hubs, learned metacontrol, and the measurement of language models turning statements into formal models.',
    es: 'Sistemas basados en agentes que deben rendir cuentas: revisión adversarial, un banco de trabajo de carrera para un solo candidato, una consola de gestión, hubs de agentes industriales, metacontrol aprendido, y la medición de modelos de lenguaje convirtiendo enunciados en modelos formales.',
  },
  'family.data': { en: 'Data, Signals & Forecasting', es: 'Datos, Señales y Pronóstico' },
  'family.data.blurb': {
    en: 'A forecasting atlas with a foundation-model tier, quantitative finance, an open-data watchtower over Chile, and audio embeddings made visible.',
    es: 'Un atlas de pronóstico con un nivel de modelos fundacionales, finanzas cuantitativas, una atalaya de datos abiertos sobre Chile y embeddings de audio hechos visibles.',
  },
  'family.interaction': { en: 'Haptics, Robotics & Accessibility', es: 'Háptica, Robótica y Accesibilidad' },
  'family.interaction.blurb': {
    en: 'Haptic simulation and accessible interaction, and a robotic writer: research on how people and machines touch and move.',
    es: 'Simulación háptica e interacción accesible, y un escritor robótico: investigación sobre cómo personas y máquinas tocan y se mueven.',
  },
  'family.outreach': { en: 'Education & Creative Instruments', es: 'Educación e Instrumentos Creativos' },
  'family.outreach.blurb': {
    en: 'Instruments built to teach and to make: a continuous botanical scene, a rigid-paper mechanism workshop, and virtual microscopy for science education.',
    es: 'Instrumentos construidos para enseñar y para hacer: una escena botánica continua, un taller de mecanismos de papel rígido y microscopía virtual para la educación científica.',
  },
  'family.mobile': { en: 'Mobile Apps', es: 'Aplicaciones Móviles' },
  'family.mobile.blurb': {
    en: 'On-device applications: 3D reconstruction from a phone, and private mobile products.',
    es: 'Aplicaciones en el dispositivo: reconstrucción 3D desde un teléfono y productos móviles privados.',
  },
  'family.industry': { en: 'Industry (proprietary)', es: 'Industria (propietario)' },
  'family.industry.blurb': {
    en: 'Delivered for industrial clients under confidentiality: general description and a schematic only, no client data.',
    es: 'Entregado a clientes industriales bajo confidencialidad: solo descripción general y un esquema, sin datos del cliente.',
  },

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
  'footer.tagline': {
    en: 'Research · Hardware · Digital Solutions',
    es: 'Investigación · Hardware · Soluciones Digitales',
  },

  // Product detail
  'product.proprietary': {
    en: 'Proprietary, source code not publicly available',
    es: 'Propietario, código fuente no disponible públicamente',
  },
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
