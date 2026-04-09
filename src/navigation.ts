import { getPermalink } from './utils/permalinks';

export const headerData = {
  links: [
    {
      text: 'Portfolio',
      href: getPermalink('/portfolio'),
    },
    {
      text: 'Services',
      href: getPermalink('/#services'),
    },
    {
      text: 'About',
      href: getPermalink('/#about'),
    },
    {
      text: 'Contact',
      href: getPermalink('/contact'),
    },
  ],
  actions: [],
};

export const headerDataEs = {
  links: [
    {
      text: 'Portafolio',
      href: getPermalink('/es/portfolio'),
    },
    {
      text: 'Servicios',
      href: getPermalink('/es/#services'),
    },
    {
      text: 'Acerca de',
      href: getPermalink('/es/#about'),
    },
    {
      text: 'Contacto',
      href: getPermalink('/es/contact'),
    },
  ],
  actions: [],
};

export const footerData = {
  links: [
    {
      title: 'Solutions',
      links: [
        { text: 'Mining Optimization', href: getPermalink('/portfolio/mining-optimization') },
        { text: '3D Visualization', href: getPermalink('/portfolio/mine-pile-visualizer') },
        { text: 'Spectral Analysis', href: getPermalink('/portfolio/hsi-mineral-classification') },
        { text: 'Risk Prediction', href: getPermalink('/portfolio/geotechnical-risk') },
      ],
    },
    {
      title: 'Links',
      links: [
        { text: 'GitHub', href: 'https://github.com/fsantibanezleal' },
        { text: 'Personal Website', href: 'https://fsantibanezleal.github.io' },
        { text: 'Online CV', href: 'https://fsantibanezleal.github.io/online-cv/' },
        { text: 'LinkedIn', href: 'https://linkedin.com/in/fsantibanezleal' },
      ],
    },
  ],
  secondaryLinks: [],
  socialLinks: [
    { ariaLabel: 'GitHub', icon: 'tabler:brand-github', href: 'https://github.com/fsantibanezleal' },
    { ariaLabel: 'LinkedIn', icon: 'tabler:brand-linkedin', href: 'https://linkedin.com/in/fsantibanezleal' },
  ],
  footNote: `
    &copy; ${new Date().getFullYear()} FASL.work — Engineering & Applied Technology. All rights reserved.
  `,
};

export const footerDataEs = {
  links: [
    {
      title: 'Soluciones',
      links: [
        { text: 'Optimización Minera', href: getPermalink('/es/portfolio/mining-optimization') },
        { text: 'Visualización 3D', href: getPermalink('/es/portfolio/mine-pile-visualizer') },
        { text: 'Análisis Espectral', href: getPermalink('/es/portfolio/hsi-mineral-classification') },
        { text: 'Predicción de Riesgo', href: getPermalink('/es/portfolio/geotechnical-risk') },
      ],
    },
    {
      title: 'Enlaces',
      links: [
        { text: 'GitHub', href: 'https://github.com/fsantibanezleal' },
        { text: 'Sitio Personal', href: 'https://fsantibanezleal.github.io' },
        { text: 'CV Online', href: 'https://fsantibanezleal.github.io/online-cv/' },
        { text: 'LinkedIn', href: 'https://linkedin.com/in/fsantibanezleal' },
      ],
    },
  ],
  secondaryLinks: [],
  socialLinks: [
    { ariaLabel: 'GitHub', icon: 'tabler:brand-github', href: 'https://github.com/fsantibanezleal' },
    { ariaLabel: 'LinkedIn', icon: 'tabler:brand-linkedin', href: 'https://linkedin.com/in/fsantibanezleal' },
  ],
  footNote: `
    &copy; ${new Date().getFullYear()} FASL.work — Ingeniería y Tecnología Aplicada. Todos los derechos reservados.
  `,
};
