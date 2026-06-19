---
title: 'Ronquy — On-Device Snore Detection'
titleEs: 'Ronquy — Detección de Ronquidos en el Dispositivo'
slug: ronquy
date: 2026-06-14
category: mobile-apps
excerpt: 'A private mobile app that detects snoring on-device, overnight, with no audio leaving the phone — a YAMNet + TFLite model runs an 8-hour audio-and-inference loop locally, with an optional cloud account for sync.'
excerptEs: 'Una app móvil privada que detecta ronquidos en el dispositivo, durante toda la noche, sin que el audio salga del teléfono — un modelo YAMNet + TFLite corre localmente un bucle de 8 horas de audio e inferencia, con una cuenta en la nube opcional para sincronizar.'
icon: tabler:zzz
tags: [mobile, audio-ml, on-device, yamnet, tflite, health, private]
proprietary: true
featured: false

challenge: 'Sleep-audio analysis is intrusive by default: most apps stream or upload recordings of you sleeping. Doing the detection honestly means running the model on the phone, all night, without draining the battery or sending audio anywhere — a hard constraint for a JavaScript app.'
challengeEs: 'El análisis de audio del sueño es intrusivo por defecto: la mayoría de las apps transmiten o suben grabaciones de ti durmiendo. Hacer la detección de forma honesta implica correr el modelo en el teléfono, toda la noche, sin agotar la batería ni enviar audio a ningún lado — una restricción dura para una app en JavaScript.'
approach: 'Ronquy runs a real on-device snore-detection model (YAMNet via react-native-fast-tflite) inside a native overnight loop that captures audio and runs inference locally for ~8 hours. The heavy, time-critical path is native rather than a JS shim. Audio never leaves the device; only derived events are kept. An optional cloud mode (FastAPI + Postgres + own auth) lets a user register and sync results across devices, but the detection itself is fully local.'
approachEs: 'Ronquy corre un modelo real de detección de ronquidos en el dispositivo (YAMNet vía react-native-fast-tflite) dentro de un bucle nativo nocturno que captura audio y corre inferencia localmente por ~8 horas. El camino pesado y crítico en tiempo es nativo, no un shim de JS. El audio nunca sale del dispositivo; solo se guardan eventos derivados. Un modo nube opcional (FastAPI + Postgres + auth propia) permite registrarse y sincronizar resultados entre dispositivos, pero la detección en sí es totalmente local.'
businessContext: 'Privacy is the product. A snore tracker that never uploads your sleep audio is fundamentally more trustworthy than one that does — and doing the inference on-device also means it works offline and costs nothing per night to run.'
businessContextEs: 'La privacidad es el producto. Un detector de ronquidos que nunca sube tu audio del sueño es fundamentalmente más confiable que uno que sí lo hace — y hacer la inferencia en el dispositivo además significa que funciona sin conexión y no cuesta nada por noche.'
strategicValue: 'Ronquy proves a hard mobile-ML pattern end to end: a native, battery-aware, all-night audio+inference loop with a real model on-device, wrapped in a cross-platform app and backed by an optional own-auth cloud. It is a template for any privacy-first, on-device sensing product.'
strategicValueEs: 'Ronquy demuestra un patrón difícil de ML móvil de extremo a extremo: un bucle nativo, consciente de la batería, de audio+inferencia toda la noche con un modelo real en el dispositivo, envuelto en una app multiplataforma y respaldado por una nube opcional con auth propia. Es una plantilla para cualquier producto de sensado en el dispositivo y centrado en privacidad.'

kpis:
  - label: 'Privacy of sleep audio'
    labelEs: 'Privacidad del audio del sueño'
    baseline: 'Streamed / uploaded'
    baselineEs: 'Transmitido / subido'
    result: 'Stays on-device; only events kept'
    resultEs: 'Permanece en el dispositivo; solo se guardan eventos'
    impact: 'Trustworthy by construction'
    impactEs: 'Confiable por construcción'
  - label: 'Detection model'
    labelEs: 'Modelo de detección'
    baseline: 'Cloud inference / mock'
    baselineEs: 'Inferencia en la nube / mock'
    result: 'Real YAMNet + TFLite, native loop'
    resultEs: 'YAMNet + TFLite real, bucle nativo'
    impact: 'Works offline, all night'
    impactEs: 'Funciona sin conexión, toda la noche'

metrics:
  - label: 'Detection'
    labelEs: 'Detección'
    value: 'YAMNet + TFLite, on-device'
    valueEs: 'YAMNet + TFLite, en el dispositivo'
  - label: 'Runtime'
    labelEs: 'Ejecución'
    value: 'Native ~8h overnight audio + inference loop'
    valueEs: 'Bucle nativo ~8h de audio + inferencia nocturno'
  - label: 'Cloud (optional)'
    labelEs: 'Nube (opcional)'
    value: 'FastAPI + Postgres + own auth'
    valueEs: 'FastAPI + Postgres + auth propia'
  - label: 'Build'
    labelEs: 'Build'
    value: 'Standalone EAS app (React Native / Expo)'
    valueEs: 'App standalone EAS (React Native / Expo)'

stack: [React Native, Expo, TypeScript, TensorFlow Lite, YAMNet, FastAPI, PostgreSQL]
---

## Privacy is the product

Ronquy is a **private** mobile app that detects snoring on-device, all night, with no audio ever leaving the phone. A real YAMNet model runs through TFLite in a native overnight loop; only derived events are stored. An optional cloud account adds cross-device sync, but the detection itself is fully local.

*This is proprietary work; the app is private. The card describes the architecture and intent without exposing internal logic.*
