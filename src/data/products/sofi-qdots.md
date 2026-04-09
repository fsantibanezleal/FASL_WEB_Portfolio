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

## The Physics Behind SOFI

The fluorescence intensity at pixel position **r** and time t is modeled as:

`F(r,t) = Σₖ εₖ · sₖ(t) · U(r - rₖ) + noise`

where `εₖ` is the molecular brightness, `sₖ(t)` is the stochastic on/off switching function, and `U(r)` is the microscope's point spread function (PSF).

The fundamental insight: the **nth-order cumulant** of this signal simplifies to:

`Cₙ(r) = Σₖ εₖⁿ · κₙ[sₖ] · Uⁿ(r - rₖ)`

The PSF appears raised to the nth power, narrowing the effective width by a factor of **√n**. This is the mathematical core that enables super-resolution without single-molecule sparsity.

## Resolution Scaling

| Cumulant Order | Resolution Improvement | Effective Resolution (λ=532nm, NA=1.4) |
|----------------|----------------------|----------------------------------------|
| 2nd | 1.41× (√2) | ~164 nm |
| 3rd | 1.73× (√3) | ~134 nm |
| 4th | 2.00× (√4) | ~116 nm |
| 6th | 2.45× (√6) | ~95 nm |

Starting from a diffraction limit of ~232 nm (`d_min = 0.61 · λ / NA`), 6th-order SOFI resolves structural features separated by approximately **120 nm** — well below what conventional optical microscopy can achieve.

## Implementation Pipeline

### Cumulant Computation
Orders 2 through 6 computed using **consecutive time lags** to eliminate shot noise bias. The 4th-order cumulant, for example:

`C₄ = ⟨δF₀·δF₁·δF₂·δF₃⟩ - ⟨δF₀·δF₃⟩·⟨δF₁·δF₂⟩ - ⟨δF₀·δF₂⟩·⟨δF₁·δF₃⟩ - ⟨δF₀·δF₁⟩·⟨δF₂·δF₃⟩`

### Quantum Dot Simulator
Synthetic blinking generator with **power-law on/off time distributions** `P(t) ~ t⁻ᵅ` (α ≈ 1.5), producing Lévy-type statistics where the mean dwell time diverges — realistic modeling of actual quantum dot photophysics.

### Sub-Pixel Enhancement
**Fourier-domain zero-padding** interpolation provides sub-pixel grid enhancement prior to cumulant computation, increasing the effective sampling density without introducing artifacts.

### Deconvolution
Two strategies for further sharpening:
- **Wiener filtering**: `F̂(k) = H*(k)/(|H(k)|² + 1/SNR) · G(k)` — frequency-domain approach with noise regularization
- **Richardson-Lucy**: Iterative maximum-likelihood deconvolution preserving non-negativity

### Linearization
**nth-root correction** compensates the `εⁿ` brightness nonlinearity that would otherwise create extreme contrast ratios between emitters of different brightness.

## SOFI vs. Other Super-Resolution Techniques

Unlike PALM/STORM, which require single-molecule sparsity conditions (only a few emitters active per frame), SOFI works with **densely labeled samples** where many emitters blink simultaneously. This makes SOFI applicable to a wider range of biological specimens and labeling strategies.

## Origin and Historical Significance

This was the **first successful SOFI implementation in Chile**, developed at SCIAN-Lab (BNI, Universidad de Chile) in collaboration with the III Physics Institute, University of Göttingen, Germany (2012–2014). The original MATLAB codebase remained unchanged for years before being modernized as a Python/FastAPI web application with interactive visualization, preserving the full computational pipeline while making it accessible through a browser.

**Related publication**: SOFI of GABAB neurotransmitter receptors in hippocampal neurons — SPIE 2013.
