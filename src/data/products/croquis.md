---
title: 'Croquis, On-Device 3D Reconstruction of Real Spaces on Android'
titleEs: 'Croquis, Reconstrucción 3D de Espacios Reales en el Dispositivo (Android)'
slug: croquis
date: 2026-07-19
category: mobile-apps
family: platforms
excerpt: 'An Android app that turns a walk-through (camera, IMU and GPS, no lidar) into a metric, consistency-gated point-cloud reconstruction computed fully on the phone and stored on the phone as a scene library you can view, measure and export, with an honest uncertainty budget. Imagery never leaves the device. Sensors own the trajectory and scale (ARCore VIO); the neural depth model contributes dense geometry, never the trajectory. In development (v0), Apache-2.0. The on-phone companion to the Lidar3D reconstruction line, with a local-GPU reprocessor (Croquis Station) above it.'
excerptEs: 'Una app Android que convierte un recorrido (cámara, IMU y GPS, sin lidar) en una reconstrucción de nube de puntos métrica y gateada por consistencia, calculada por completo en el teléfono y guardada en el teléfono como una biblioteca de escenas que puedes ver, medir y exportar, con un presupuesto de incertidumbre honesto. Las imágenes nunca salen del dispositivo. Los sensores son dueños de la trayectoria y la escala (ARCore VIO); el modelo neuronal de profundidad aporta geometría densa, nunca la trayectoria. En desarrollo (v0), Apache-2.0. El companion en el teléfono de la línea Lidar3D, con un reprocesador en GPU local (Croquis Station) por encima.'
icon: tabler:device-mobile
tags: [mobile-apps, android, 3d-reconstruction, on-device, arcore, depth, point-cloud, expo, kotlin, privacy]
proprietary: false
featured: false
assetPatterns: [croquis]
github: 'https://github.com/fsantibanezleal/Croquis'

challenge: 'Turning a phone walk-through into a metric 3D reconstruction is usually either a cloud service (imagery leaves the device) or a flagship-only lidar feature. Doing it on a general Android phone, from camera and inertial sensors alone, honestly and privately, is the harder and more useful problem: the trajectory must stay metric, the geometry must not drift, and the result has to state how sure it is before anyone measures a volume off it.'
challengeEs: 'Convertir un recorrido con el teléfono en una reconstrucción 3D métrica suele ser o un servicio en la nube (las imágenes salen del dispositivo) o una función de lidar solo en gama alta. Hacerlo en un Android general, solo con cámara y sensores inerciales, de forma honesta y privada, es el problema más difícil y más útil: la trayectoria debe mantenerse métrica, la geometría no debe derivar, y el resultado tiene que decir qué tan seguro está antes de que alguien mida un volumen sobre él.'

approach: 'Croquis separates responsibilities: the sensors (ARCore visual-inertial odometry plus GPS geo-anchoring) own the camera trajectory and the metric scale, and a neural depth model contributes dense geometry only, never the trajectory. Keyframe depth is fused only where it agrees with the sensor trajectory and neighbouring keyframes; disagreeing or far-field geometry is not deleted but kept in a low-confidence context tier so the user can see what is trustworthy. It targets general devices, not flagships, with thermal duty-cycling and adaptive keyframe rates. The scene is the product: reconstructions persist on-device as tiled point and voxel stores with confidence, geo-anchor and uncertainty metadata, behind versioned data contracts. The app shell is Expo (React Native, TypeScript, EN/ES); the capture core is native (Kotlin and C++) running ARCore, on-device depth inference, fusion and GL rendering; a separate local-GPU tool, Croquis Station, reprocesses the same session at settings no phone sustains, anchored to the phone VIO metric scale so the output is in true metres.'
approachEs: 'Croquis separa responsabilidades: los sensores (odometría visual-inercial de ARCore más geo-anclaje por GPS) son dueños de la trayectoria de la cámara y de la escala métrica, y un modelo neuronal de profundidad aporta solo geometría densa, nunca la trayectoria. La profundidad de cada keyframe se fusiona solo donde concuerda con la trayectoria de sensores y con los keyframes vecinos; la geometría discordante o de campo lejano no se borra sino que se mantiene en una capa de contexto de baja confianza, para que el usuario vea qué es confiable. Apunta a dispositivos generales, no de gama alta, con duty-cycling térmico y tasas de keyframe adaptativas. La escena es el producto: las reconstrucciones persisten en el dispositivo como stores de puntos y vóxeles en teselas con metadatos de confianza, geo-ancla e incertidumbre, tras contratos de datos versionados. El shell de la app es Expo (React Native, TypeScript, EN/ES); el core de captura es nativo (Kotlin y C++) corriendo ARCore, inferencia de profundidad en el dispositivo, fusión y render GL; una herramienta separada en GPU local, Croquis Station, reprocesa la misma sesión con ajustes que ningún teléfono sostiene, anclada a la escala métrica VIO del teléfono para que la salida esté en metros reales.'

businessContext: 'On-device, private 3D capture has clear uses in real-estate, insurance, construction and field survey, where taking a measurement from a phone walk-through is valuable but sending a customer premises to a cloud is a liability. The honesty pillar is the differentiator: a reconstruction that states its own uncertainty budget lets someone measure a volume and know the error bar, instead of a clean-looking mesh that hides how much it drifted.'
businessContextEs: 'La captura 3D privada y en el dispositivo tiene usos claros en inmobiliaria, seguros, construcción y levantamiento en terreno, donde tomar una medición desde un recorrido con el teléfono es valioso pero enviar el recinto de un cliente a la nube es un riesgo. El pilar de honestidad es el diferenciador: una reconstrucción que declara su propio presupuesto de incertidumbre permite medir un volumen y conocer la barra de error, en vez de una malla de aspecto limpio que esconde cuánto derivó.'

strategicValue: 'Croquis is the mobile end of the same reconstruction line as Lidar3D: sensors own the metric trajectory, the learned model is scoped to geometry it can be trusted for, and the output carries an uncertainty budget rather than a false-clean surface. It is an honestly-scoped, privacy-first capture product for general Android hardware, with a two-tier phone-plus-local-GPU pipeline (Croquis and Croquis Station) under versioned data contracts. It is in development (v0), and the page says so.'
strategicValueEs: 'Croquis es el extremo móvil de la misma línea de reconstrucción que Lidar3D: los sensores son dueños de la trayectoria métrica, el modelo aprendido se acota a la geometría para la que se puede confiar, y la salida lleva un presupuesto de incertidumbre en vez de una superficie falsamente limpia. Es un producto de captura honestamente acotado y con privacidad primero para hardware Android general, con un pipeline de dos niveles teléfono más GPU local (Croquis y Croquis Station) bajo contratos de datos versionados. Está en desarrollo (v0), y la página lo dice.'

kpis:
  - label: 'Trajectory source'
    labelEs: 'Fuente de la trayectoria'
    baseline: 'Learned pose (drifts)'
    baselineEs: 'Pose aprendida (deriva)'
    result: 'ARCore VIO + GPS'
    resultEs: 'ARCore VIO + GPS'
    impact: 'Metric scale owned by sensors, not the net'
    impactEs: 'Escala métrica en los sensores, no en la red'
  - label: 'Where imagery goes'
    labelEs: 'Adónde va la imagen'
    baseline: 'Cloud upload'
    baselineEs: 'Subida a la nube'
    result: 'Stays on device'
    resultEs: 'Se queda en el dispositivo'
    impact: 'Private by construction'
    impactEs: 'Privado por construcción'
  - label: 'Low-agreement geometry'
    labelEs: 'Geometría de baja concordancia'
    baseline: 'Deleted or hidden'
    baselineEs: 'Borrada u oculta'
    result: 'Kept in a low-confidence tier'
    resultEs: 'Se mantiene en capa de baja confianza'
    impact: 'Honest uncertainty budget'
    impactEs: 'Presupuesto de incertidumbre honesto'

metrics:
  - label: 'Platform'
    labelEs: 'Plataforma'
    value: 'Android (Expo + native Kotlin/C++)'
    valueEs: 'Android (Expo + Kotlin/C++ nativo)'
  - label: 'Sensor'
    labelEs: 'Sensor'
    value: 'Camera + IMU + GPS (no lidar)'
    valueEs: 'Cámara + IMU + GPS (sin lidar)'
  - label: 'Data contracts'
    labelEs: 'Contratos de datos'
    value: 'CONTRACT-1 session, CONTRACT-2 scene tiles'
    valueEs: 'CONTRACT-1 sesión, CONTRACT-2 teselas de escena'
  - label: 'License'
    labelEs: 'Licencia'
    value: 'Apache-2.0'
    valueEs: 'Apache-2.0'
  - label: 'Status'
    labelEs: 'Estado'
    value: 'In development (v0)'
    valueEs: 'En desarrollo (v0)'

stack:
  - 'Expo (React Native, TypeScript)'
  - 'Kotlin + C++ (native capture core)'
  - 'ARCore VIO'
  - 'On-device neural depth'
  - 'OpenGL rendering'
  - 'PyTorch (local-GPU training/export)'
---
