---
title: 'Lidar3D, Streaming 3D Reconstruction Lab'
titleEs: 'Lidar3D, Laboratorio de Reconstrucción 3D Streaming'
slug: lidar3d
date: 2026-07-02
category: 3d-visualization
excerpt: 'An early research lab for feed-forward streaming 3D reconstruction: an ordered RGB or LiDAR stream becomes a camera trajectory, dense metric depth and a fused colored point cloud. The heavy engine runs offline on a GPU; the site replays the baked cloud across four point-cloud renderers under one unified transform, with a strict renderer-honesty discipline as the point.'
excerptEs: 'Un laboratorio de investigación temprano de reconstrucción 3D streaming feed-forward: un stream ordenado RGB o LiDAR se convierte en trayectoria de cámara, profundidad métrica densa y una nube de puntos coloreada fusionada. El motor pesado corre offline en GPU; el sitio reproduce la nube horneada en cuatro renderers de nubes de puntos bajo una transformación unificada, con una disciplina estricta de honestidad de renderer como el punto.'
icon: tabler:cube-3d-sphere
tags: [3d-visualization, research, computer-vision, point-cloud, reconstruction, lidar]
proprietary: false
featured: false
assetPatterns: [lidar3d, lidar]
github: 'https://github.com/fsantibanezleal/CAOS_RES_Lidar3D'
demo: 'https://lidar3d.fasl-work.com'
website: 'https://lidar3d.fasl-work.com'

challenge: 'Turning a stream of images or LiDAR into a coherent 3D scene is hard, and the demos are usually the least honest part: a polished point cloud that hides where the pose drifted, which numbers had no ground truth, or that different viewers are quietly showing different data. The interesting, honest questions (how well does a from-scratch feed-forward reconstructor actually do, and does what you see in the browser faithfully match the reconstructed cloud) rarely get shown.'
challengeEs: 'Convertir un stream de imágenes o LiDAR en una escena 3D coherente es difícil, y los demos suelen ser la parte menos honesta: una nube de puntos pulida que esconde dónde derivó la pose, qué números no tenían ground truth, o que distintos visores muestran silenciosamente datos distintos. Las preguntas interesantes y honestas (qué tan bien lo hace realmente un reconstructor feed-forward desde cero, y si lo que ves en el navegador coincide fielmente con la nube reconstruida) rara vez se muestran.'

approach: 'Lidar3D is a lab, not a product claim. A heavy engine runs offline on a local GPU and does feed-forward (no per-scene optimization) reconstruction: an ordered RGB/LiDAR stream becomes a camera trajectory, dense metric depth and a fused colored point cloud. Two reconstruction engines are actually wired, a from-scratch depth-and-pose network (ResNet-18 backbone, a Siamese SE(3) pose head, aleatoric depth; ~0.28 m held-out trajectory error on TUM, reconstructing eight real scenes from TUM/7-Scenes/ICL) and a genuinely vendored 2026 model for four outdoor scenes, plus Open3D ICP LiDAR odometry and a CPU synthetic engine. The public site is a static SPA that replays the baked artifacts across four point-cloud renderers (three.js, deck.gl, surfels, Potree LOD), all drawing the same cloud under one unified coordinate transform. The discipline is the headline: metrics with no ground truth are shown as "none" with a reason, and where a renderer physically cannot do per-frame replay, the app approximates and says so in the UI rather than faking it.'
approachEs: 'Lidar3D es un laboratorio, no un reclamo de producto. Un motor pesado corre offline en una GPU local y hace reconstrucción feed-forward (sin optimización por escena): un stream ordenado RGB/LiDAR se convierte en trayectoria de cámara, profundidad métrica densa y una nube de puntos coloreada fusionada. Dos motores de reconstrucción están realmente cableados, una red de profundidad-y-pose desde cero (backbone ResNet-18, una cabeza de pose SE(3) Siamesa, profundidad aleatórica; ~0,28 m de error de trayectoria held-out en TUM, reconstruyendo ocho escenas reales de TUM/7-Scenes/ICL) y un modelo 2026 genuinamente vendorizado para cuatro escenas exteriores, más odometría LiDAR ICP de Open3D y un motor sintético en CPU. El sitio público es un SPA estático que reproduce los artefactos horneados en cuatro renderers de nubes de puntos (three.js, deck.gl, surfels, Potree LOD), todos dibujando la misma nube bajo una transformación de coordenadas unificada. La disciplina es el titular: métricas sin ground truth se muestran como "ninguna" con una razón, y donde un renderer físicamente no puede hacer replay por frame, la app aproxima y lo dice en la UI en vez de fingirlo.'

businessContext: '3D reconstruction and point-cloud visualization matter across surveying, mining and robotics, and the recurring failure is trust: a beautiful render that quietly misrepresents the underlying data. Lidar3D''s value is the opposite habit: a place to compare reconstruction engines and renderers on the same footing, where the discrepancies are found and shown (a coordinate-mirror bug fixed, an approximation labelled) instead of polished away. It is a research instrument for what reconstruction actually delivers, and for keeping the viewer honest.'
businessContextEs: 'La reconstrucción 3D y la visualización de nubes de puntos importan en topografía, minería y robótica, y la falla recurrente es la confianza: un render hermoso que tergiversa silenciosamente los datos subyacentes. El valor de Lidar3D es el hábito opuesto: un lugar para comparar motores de reconstrucción y renderers en igualdad de condiciones, donde las discrepancias se encuentran y se muestran (un bug de espejo de coordenadas corregido, una aproximación etiquetada) en vez de pulirse. Es un instrumento de investigación sobre lo que la reconstrucción realmente entrega, y para mantener honesto al visor.'
strategicValue: 'Lidar3D demonstrates a full streaming-reconstruction pipeline built and evaluated honestly, a from-scratch depth-and-pose network with a real held-out trajectory error, a properly vendored SOTA model kept clearly labelled as vendored, and a four-renderer viewer where parity is enforced under one transform and every approximation is disclosed. It is deliberately framed as an early lab: it replays baked artifacts (it is not real-time and not SLAM by default), it does not claim to beat the state of the art, and it leads with a negative-results ledger. That is the reusable pattern, reconstruction and rendering you can actually trust because it tells you where it doesn''t.'
strategicValueEs: 'Lidar3D demuestra un pipeline completo de reconstrucción streaming construido y evaluado con honestidad, una red de profundidad-y-pose desde cero con un error de trayectoria held-out real, un modelo SOTA debidamente vendorizado y claramente etiquetado como tal, y un visor de cuatro renderers donde la paridad se impone bajo una transformación y cada aproximación se revela. Está deliberadamente enmarcado como un lab temprano: reproduce artefactos horneados (no es tiempo real ni SLAM por defecto), no reclama superar al estado del arte, y lidera con un registro de resultados negativos. Ese es el patrón reutilizable, reconstrucción y renderizado en los que sí puedes confiar porque te dicen dónde no.'

kpis:
  - label: 'Reconstruction method'
    labelEs: 'Método de reconstrucción'
    baseline: 'Per-scene optimization'
    baselineEs: 'Optimización por escena'
    result: 'Feed-forward depth + pose (own net, ~0.28 m ATE on TUM)'
    resultEs: 'Profundidad + pose feed-forward (red propia, ~0,28 m ATE en TUM)'
    impact: 'A measured, from-scratch reconstructor'
    impactEs: 'Un reconstructor medido y desde cero'
  - label: 'Renderer honesty'
    labelEs: 'Honestidad de renderer'
    baseline: 'Different viewers, different-looking clouds'
    baselineEs: 'Distintos visores, nubes que se ven distinto'
    result: '4 renderers, one baked cloud, one unified transform'
    resultEs: '4 renderers, una nube horneada, una transformación unificada'
    impact: 'What you see is the same data'
    impactEs: 'Lo que ves es el mismo dato'
  - label: 'No faked metrics'
    labelEs: 'Sin métricas falsas'
    baseline: 'Numbers shown without ground truth'
    baselineEs: 'Números mostrados sin ground truth'
    result: 'Metrics without GT display "none" + a reason; approximations labelled in-UI'
    resultEs: 'Métricas sin GT muestran "ninguna" + una razón; aproximaciones etiquetadas en la UI'
    impact: 'The demo does not oversell'
    impactEs: 'El demo no sobre-vende'

metrics:
  - label: 'Reconstruction engines'
    labelEs: 'Motores de reconstrucción'
    value: 'Own depth+pose net (~0.28 m ATE, ~12.8 M params, 8 real scenes) · vendored 2026 model (4 outdoor) · Open3D ICP LiDAR · CPU synthetic'
    valueEs: 'Red propia profundidad+pose (~0,28 m ATE, ~12,8 M params, 8 escenas reales) · modelo 2026 vendorizado (4 exteriores) · LiDAR ICP Open3D · sintético CPU'
  - label: 'Depth quality (held-out)'
    labelEs: 'Calidad de profundidad (held-out)'
    value: 'AbsRel 0.38 → 0.22'
    valueEs: 'AbsRel 0,38 → 0,22'
  - label: 'Renderers'
    labelEs: 'Renderers'
    value: '4 (three.js · deck.gl · surfels · Potree LOD), one baked cloud, unified (x, −y, −z)'
    valueEs: '4 (three.js · deck.gl · surfels · Potree LOD), una nube horneada, unificada (x, −y, −z)'
  - label: 'Mode'
    labelEs: 'Modo'
    value: 'Offline GPU reconstruction → in-browser replay (NOT real-time, NOT SLAM by default)'
    valueEs: 'Reconstrucción offline en GPU → replay en navegador (NO tiempo real, NO SLAM por defecto)'
  - label: 'Data'
    labelEs: 'Datos'
    value: 'Real scenes (TUM / 7-Scenes / ICL) + outdoor; 14 cases. Early lab (v0.1)'
    valueEs: 'Escenas reales (TUM / 7-Scenes / ICL) + exteriores; 14 casos. Lab temprano (v0.1)'

stack: [Python, PyTorch, Open3D, TypeScript, React, three.js, deck.gl, Potree]
---

## Reconstruct honestly, render honestly

Lidar3D is an **early research lab** for feed-forward streaming 3D reconstruction: an ordered RGB or LiDAR stream becomes a camera trajectory, dense metric depth and a fused colored point cloud, with no per-scene optimization. The heavy engine runs **offline on a GPU**; the public site is a static SPA that **replays the baked cloud** across four point-cloud renderers. Live at [lidar3d.fasl-work.com](https://lidar3d.fasl-work.com).

## What is actually wired

Two reconstruction engines: a **from-scratch depth-and-pose network** (ResNet-18 backbone, a Siamese SE(3) pose head, aleatoric depth) with a real **~0.28 m held-out trajectory error** on TUM, reconstructing eight real indoor scenes (TUM / 7-Scenes / ICL); and a genuinely **vendored** 2026 model (kept clearly labelled as vendored) for four outdoor scenes. Plus Open3D ICP LiDAR odometry and a CPU synthetic engine.

## Renderer honesty is the headline

Four renderers (three.js, deck.gl, surfels and Potree LOD) all draw the **same baked cloud under one unified `(x, −y, −z)` transform** (a deck.gl mirror bug was found and fixed). Where a renderer physically cannot do per-frame replay, the app **approximates and says so in the UI** rather than faking it, and any metric without ground truth is shown as "none" with a reason.

## Honest scope

This is a lab, framed as one: it **replays** baked artifacts (it is **not real-time** and **not SLAM** by default: loop closure and global bundle adjustment are opt-in), it does **not** claim to beat the state of the art, the outdoor model is vendored not ours, and there is no textured mesh or Gaussian-splat output. The value is the discipline and the negative-results ledger, not a fidelity claim.

[Live demo](https://lidar3d.fasl-work.com) · [Source on GitHub](https://github.com/fsantibanezleal/CAOS_RES_Lidar3D)
