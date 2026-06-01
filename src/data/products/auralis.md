---
title: 'Auralis — 6D Audio Embedding Visualizer'
titleEs: 'Auralis — Visualizador de Embeddings de Audio 6D'
slug: auralis
date: 2026-04-24
category: audio-signal
excerpt: 'Turns any sound into a navigable 6-dimensional universe. Audio is mapped onto seven embedding tracks — interpretable spectral features, PCA/t-SNE/UMAP projections, the Tonnetz harmonic space, YAMNet event semantics, and CLAP audio-text meaning — and rendered as a luminous 3D trajectory you can fly through, across a curated library of 102 sounds.'
excerptEs: 'Convierte cualquier sonido en un universo navegable de 6 dimensiones. El audio se mapea en siete tracks de embeddings — características espectrales interpretables, proyecciones PCA/t-SNE/UMAP, el espacio armónico Tonnetz, semántica de eventos YAMNet y significado audio-texto de CLAP — y se renderiza como una trayectoria 3D luminosa que puedes recorrer, sobre una biblioteca curada de 102 sonidos.'
icon: tabler:wave-sine
tags: [audio, embeddings, visualization, threejs, clap, yamnet, librosa, fastapi]
proprietary: false
featured: true
assetPatterns: [auralis, 6d, sound]
github: 'https://github.com/fsantibanezleal/CAOS_6D_Sounds'
demo: 'https://auralis.fasl-work.com'

challenge: 'Conventional audio visualizers — spectrum analyzers, waveforms — show the signal but not its structure or meaning. Two sounds that share meaning but differ acoustically look unrelated; there is no single view that places a sound by both how it sounds and what it is.'
challengeEs: 'Los visualizadores de audio convencionales — analizadores de espectro, formas de onda — muestran la señal pero no su estructura ni su significado. Dos sonidos que comparten significado pero difieren acústicamente se ven sin relación; no existe una vista única que ubique un sonido por cómo suena y por lo que es a la vez.'

approach: 'Each sound is analyzed into seven 6D embedding tracks (Features, PCA, t-SNE, UMAP, Tonnetz, YAMNet, CLAP), all min-max normalized so any feature can drive any axis — spatial XYZ plus color and size, with time as the implicit sixth axis. A React/Three.js frontend renders the trajectory in real time with ten render modes, synchronized to Web Audio playback. The offline data pipeline (librosa + scikit-learn/UMAP + TensorFlow/YAMNet + CLAP) extracts features and writes per-clip JSON; the FastAPI backend serves them verbatim.'
approachEs: 'Cada sonido se analiza en siete tracks de embeddings 6D (Features, PCA, t-SNE, UMAP, Tonnetz, YAMNet, CLAP), todos normalizados min-max para que cualquier característica pueda controlar cualquier eje — XYZ espacial más color y tamaño, con el tiempo como sexto eje implícito. Un frontend React/Three.js renderiza la trayectoria en tiempo real con diez modos de render, sincronizado con reproducción Web Audio. El pipeline de datos offline (librosa + scikit-learn/UMAP + TensorFlow/YAMNet + CLAP) extrae características y escribe JSON por clip; el backend FastAPI los sirve tal cual.'

businessContext: 'Audio is one of the hardest data types to explore intuitively. Spectrograms are dense and unreadable to non-specialists, and embedding spaces from modern audio models are high-dimensional and abstract. There is rarely a way to actually see how a machine-learning model "hears" a sound, or to compare what different representations capture about the same audio.'
businessContextEs: 'El audio es uno de los tipos de datos más difíciles de explorar intuitivamente. Los espectrogramas son densos e ilegibles para no especialistas, y los espacios de embeddings de los modelos de audio modernos son de alta dimensión y abstractos. Rara vez hay una forma de ver realmente cómo un modelo de machine learning "escucha" un sonido, o de comparar qué captura cada representación sobre el mismo audio.'
strategicValue: 'Auralis makes audio embeddings tangible. By projecting seven different representations of the same sound into one navigable 6D space, it turns abstract feature vectors into trajectories you can fly through and compare directly — interpretable spectral Features emphasize raw acoustic structure, PCA/t-SNE/UMAP are corpus-wide projections of MFCC frames (linear vs two manifold methods), Tonnetz reveals harmonic/tonal relationships, YAMNet adds event-level semantics (1024-D AudioSet), and CLAP links sound to natural-language meaning (512-D contrastive audio-text) so semantically related sounds cluster even when their spectra differ. A curated library of 102 sounds (space, nature, music, human-made) and ten render modes make it both an analytical lens on representation learning and an expressive instrument. Built as a FastAPI + React/Three.js monorepo, deployed live; the heavy CLAP runtime is precomputed offline so the deployed app stays light.'
strategicValueEs: 'Auralis hace tangibles los embeddings de audio. Al proyectar siete representaciones distintas del mismo sonido en un espacio 6D navegable, convierte vectores de características abstractos en trayectorias que puedes recorrer y comparar directamente — las Features espectrales interpretables enfatizan la estructura acústica cruda, PCA/t-SNE/UMAP son proyecciones del corpus de frames MFCC (lineal vs dos métodos de variedad), Tonnetz revela relaciones armónicas/tonales, YAMNet agrega semántica de eventos (AudioSet 1024-D), y CLAP vincula sonido con significado en lenguaje natural (audio-texto contrastivo 512-D) para que sonidos semánticamente relacionados se agrupen aunque sus espectros difieran. Una biblioteca curada de 102 sonidos (espacio, naturaleza, música, hechos por humanos) y diez modos de render lo hacen a la vez una lente analítica sobre aprendizaje de representaciones y un instrumento expresivo. Construido como monorepo FastAPI + React/Three.js, desplegado en vivo; el runtime pesado de CLAP se precomputa offline para que la app desplegada se mantenga liviana.'

kpis:
  - label: 'Embedding Tracks'
    labelEs: 'Tracks de Embeddings'
    baseline: 'Single spectrogram view'
    baselineEs: 'Vista única de espectrograma'
    result: '7 tracks (spectral → YAMNet → CLAP)'
    resultEs: '7 tracks (spectral → YAMNet → CLAP)'
    impact: 'Compare what each representation hears'
    impactEs: 'Comparar qué escucha cada representación'
  - label: 'Audio Exploration'
    labelEs: 'Exploración de Audio'
    baseline: 'Flat waveform / spectrogram'
    baselineEs: 'Forma de onda / espectrograma plano'
    result: 'Navigable 6D trajectories, 10 render modes'
    resultEs: 'Trayectorias 6D navegables, 10 modos de render'
    impact: 'Sound as a space, not a signal'
    impactEs: 'El sonido como espacio, no como señal'

metrics:
  - label: 'Embedding Tracks'
    labelEs: 'Tracks de Embeddings'
    value: '7 (Features, PCA, t-SNE, UMAP, Tonnetz, YAMNet, CLAP)'
    valueEs: '7 (Features, PCA, t-SNE, UMAP, Tonnetz, YAMNet, CLAP)'
  - label: 'Render Modes'
    labelEs: 'Modos de Render'
    value: '10'
    valueEs: '10'
  - label: 'Curated Library'
    labelEs: 'Biblioteca Curada'
    value: '102 sounds'
    valueEs: '102 sonidos'
  - label: 'Stack'
    labelEs: 'Stack'
    value: 'FastAPI + librosa/YAMNet/CLAP · React/Three.js'
    valueEs: 'FastAPI + librosa/YAMNet/CLAP · React/Three.js'

stack: [Python, FastAPI, librosa, TensorFlow, YAMNet, CLAP, TypeScript, React, Three.js, Web Audio API, PCA]
---

## Sound as a Navigable Space

Auralis turns any sound into a luminous trail you can fly through. Upload audio and the backend analyzes it into a six-dimensional feature space — spatial position (X, Y, Z) plus color and motion — then the frontend renders it as a 3D trajectory where every point is a moment in time, positioned by its acoustic and semantic properties.

## Seven Ways to Hear the Same Sound

Auralis computes **seven 6D embedding tracks** per sound, each a different lens on the same audio (all min-max normalized to `[0,1]` so any feature can drive any axis):

| Track    | What it captures                                                       | Source           |
| -------- | ---------------------------------------------------------------------- | ---------------- |
| Features | Six interpretable spectral scalars (brightness, bandwidth, rolloff, …) | direct 6D        |
| PCA      | Linear projection of MFCC frames                                       | corpus-wide → 6D |
| t-SNE    | Nonlinear manifold of MFCC frames                                      | corpus-wide → 6D |
| UMAP     | Nonlinear manifold of MFCC frames                                      | corpus-wide → 6D |
| Tonnetz  | Harmonic space — fifths, minor/major thirds (Harte 2006)               | natural 6D       |
| YAMNet   | Deep AudioSet event embeddings (Hershey 2017)                          | 1024-D → 6D PCA  |
| CLAP     | Contrastive language-audio embeddings (Wu 2023)                        | 512-D → 6D PCA   |

Features emphasizes raw acoustic structure; PCA/t-SNE/UMAP are three projections of the same MFCC frames (one linear, two manifold methods) so you can see how each geometry reshapes the corpus; Tonnetz reveals tonal relationships; YAMNet brings event-level semantics; and CLAP links sound to natural-language meaning — so two sounds that _mean_ similar things cluster together even when their raw spectra differ. (CLAP is precomputed offline; its heavy runtime is not bundled in the production deploy.)

## Ten Render Modes

The same trajectory can be drawn ten ways — Trail, Comet, Constellation, Ribbon, Tube, Particles, Light Painting, Galaxy, Nebula, and Aurora — each interpreting the path differently for distinct analytical and aesthetic effects.

## Architecture

A monorepo: a **FastAPI** backend (librosa for spectral/MFCC/chroma/mel/Tonnetz, TensorFlow/YAMNet for event embeddings, CLAP via transformers for semantic embeddings, with per-track PCA models persisted for consistent projection) and a **React + TypeScript + Vite + Three.js** frontend (react-three-fiber for rendering, Web Audio API for playback synchronization, Zustand for state). The CLAP runtime is a heavy optional dependency, so production serves precomputed embeddings rather than bundling the torch/transformers stack. Live at [auralis.fasl-work.com](https://auralis.fasl-work.com).
