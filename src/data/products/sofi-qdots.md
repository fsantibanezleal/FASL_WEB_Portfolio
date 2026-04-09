---
title: "Super-Resolution Microscopy via Optical Fluctuation Imaging"
titleEs: "Microscopía de Super-Resolución vía Imágenes de Fluctuación Óptica"
slug: sofi-qdots
date: 2012-07-01
category: computational-optics
excerpt: "Implements SOFI — a computational super-resolution technique extracting sub-diffraction spatial information from temporal fluorescence fluctuations of quantum dots. First successful SOFI implementation in Chile. Resolves ~120 nm features below the 232 nm diffraction limit."
excerptEs: "Implementa SOFI — técnica computacional de super-resolución que extrae información espacial sub-difracción de fluctuaciones temporales de fluorescencia de quantum dots. Primera implementación SOFI exitosa en Chile. Resuelve características de ~120 nm bajo el límite de difracción de 232 nm."
icon: tabler:atom-2
tags: [super-resolution, microscopy, sofi, cumulants, quantum-dots, python, fastapi]
proprietary: false
featured: true
assetPatterns: [sofi]
github: "https://github.com/fsantibanezleal/FASL_SOFI_QDOTS"

challenge: "Optical microscopy is limited by diffraction: d_min = 0.61λ/NA ≈ 232 nm for 532 nm excitation with 1.4 NA objective. PALM/STORM require single-molecule sparsity conditions. SOFI offers an alternative using temporal statistics of blinking emitters."
challengeEs: "La microscopía óptica está limitada por difracción: d_min = 0.61λ/NA ≈ 232 nm para excitación a 532 nm con objetivo NA 1.4. PALM/STORM requieren condiciones de dispersión de molécula única. SOFI ofrece una alternativa usando estadísticas temporales de emisores parpadeantes."

approach: "nth-order cumulant computation narrows effective PSF by √n. Cumulants orders 2-6 with consecutive time lags to eliminate shot noise bias. Synthetic quantum dot simulator with power-law on/off statistics. Fourier-domain zero-padding for sub-pixel enhancement, Wiener and Richardson-Lucy deconvolution, nth-root linearization correction."
approachEs: "El cálculo del cumulante de orden n estrecha la PSF efectiva en √n. Cumulantes de órdenes 2-6 con retardos temporales consecutivos para eliminar sesgo de ruido shot. Simulador sintético de quantum dots con estadísticas on/off de ley de potencia. Zero-padding en dominio de Fourier para mejora sub-píxel, deconvolución Wiener y Richardson-Lucy, corrección de linealización por raíz enésima."

kpis:
  - label: "Resolution Improvement"
    labelEs: "Mejora de Resolución"
    baseline: "232 nm diffraction limit"
    baselineEs: "Límite de difracción 232 nm"
    result: "~120 nm (6th order = 2.45x improvement)"
    resultEs: "~120 nm (6to orden = 2.45x mejora)"
    impact: "Sub-diffraction imaging"
    impactEs: "Imágenes sub-difracción"
  - label: "Historical Significance"
    labelEs: "Significancia Histórica"
    baseline: "No SOFI implementation in Chile"
    baselineEs: "Sin implementación SOFI en Chile"
    result: "First successful SOFI in Chile"
    resultEs: "Primera SOFI exitosa en Chile"
    impact: "National capability established"
    impactEs: "Capacidad nacional establecida"

metrics:
  - label: "Resolution"
    labelEs: "Resolución"
    value: "~120 nm (2.45x improvement)"
    valueEs: "~120 nm (2.45x mejora)"
  - label: "Cumulant Orders"
    labelEs: "Órdenes de Cumulante"
    value: "2nd to 6th"
    valueEs: "2do a 6to"
  - label: "Deconvolution"
    labelEs: "Deconvolución"
    value: "Wiener + Richardson-Lucy"
    valueEs: "Wiener + Richardson-Lucy"
  - label: "Collaboration"
    labelEs: "Colaboración"
    value: "U. Chile + U. Göttingen"
    valueEs: "U. Chile + U. Göttingen"

stack: [Python, FastAPI, NumPy, SciPy, FFT, Cumulant Analysis, Wiener Filter, Richardson-Lucy]
---

## How SOFI Works

Super-resolution Optical Fluctuation Imaging exploits the **temporal statistics** of independently blinking fluorescent emitters (quantum dots) to extract spatial information beyond the diffraction limit.

### The Physics

The observed fluorescence signal is:

`F(r,t) = Σₖ εₖ · sₖ(t) · U(r - rₖ) + noise`

where `εₖ` is brightness, `sₖ(t)` is the stochastic blinking function, and `U(r)` is the point spread function (PSF). The key insight: the **nth-order cumulant** of this signal narrows the effective PSF:

`Cₙ(r) = Σₖ εₖⁿ · κₙ[sₖ] · Uⁿ(r - rₖ)`

Because the PSF appears raised to the nth power, the effective resolution improves by **√n**.

### Resolution Scaling

| Order | Improvement | Effective Resolution |
|-------|-------------|---------------------|
| 2nd | 1.41× (√2) | ~164 nm |
| 3rd | 1.73× (√3) | ~134 nm |
| 4th | 2.00× (√4) | ~116 nm |
| 6th | 2.45× (√6) | ~95 nm |

Starting from a diffraction limit of ~232 nm (λ=532 nm, NA=1.4), 6th-order SOFI resolves features below **~120 nm**.

### Implementation Details

- Cumulant computation orders 2–6 using **consecutive time lags** to eliminate shot noise bias
- Synthetic quantum dot simulator with **power-law on/off statistics** P(t) ~ t⁻ᵅ (α ≈ 1.5)
- Fourier-domain **zero-padding** for sub-pixel enhancement
- Two deconvolution strategies: **Wiener filtering** and **Richardson-Lucy**
- **nth-root linearization** correction for brightness bias

## Historical Significance

This was the **first successful SOFI implementation in Chile**, developed at SCIAN-Lab (BNI, Universidad de Chile) in collaboration with the III Physics Institute, University of Göttingen (2012–2014). The original MATLAB codebase has been modernized as a Python/FastAPI web application.
