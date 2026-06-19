---
title: 'Glissa — Expressive Glissando Instrument'
titleEs: 'Glissa — Instrumento Expresivo de Glissando'
slug: glissa
date: 2026-06-15
category: mobile-apps
excerpt: 'A private mobile musical instrument whose signature is continuous glissando — slide smoothly between notes with Keys, Glide and Auto modes — backed by an FX rack, instrument morphing, sampled packs, and a Pro tier with cloud sync.'
excerptEs: 'Un instrumento musical móvil privado cuya firma es el glissando continuo — deslízate suavemente entre notas con modos Keys, Glide y Auto — respaldado por un rack de efectos, morphing de instrumentos, packs muestreados y un nivel Pro con sincronización en la nube.'
icon: tabler:music
tags: [mobile, audio, music, synthesis, react-native, billing, private]
proprietary: true
featured: false

challenge: 'Touchscreen instruments mostly imitate piano keys — discrete, quantized, expressively flat. The hard and interesting thing is continuous pitch: letting a finger slide between notes the way a voice or a slide guitar does, in real time, on a phone, without audible artifacts.'
challengeEs: 'Los instrumentos de pantalla táctil mayormente imitan teclas de piano — discretas, cuantizadas, expresivamente planas. Lo difícil e interesante es el tono continuo: dejar que un dedo se deslice entre notas como lo hace una voz o un slide de guitarra, en tiempo real, en un teléfono, sin artefactos audibles.'
approach: 'Glissa''s signature feature is continuous glissando with three modes — Keys, Glide and Auto — for sliding expressively between pitches. On top of the synth sits an FX rack, instrument morphing, and a sampled-pack path for richer timbres. A Pro suite adds local recording, account management, cloud sync, and billing (own-JWT auth + RevenueCat), with a cloud backend (FastAPI + Postgres) behind it. A two-finger octave pan and an options sheet round out the playing surface.'
approachEs: 'La firma de Glissa es el glissando continuo con tres modos — Keys, Glide y Auto — para deslizarse expresivamente entre tonos. Sobre el sintetizador hay un rack de efectos, morphing de instrumentos y una ruta de packs muestreados para timbres más ricos. Una suite Pro agrega grabación local, gestión de cuenta, sincronización en la nube y cobros (auth propia con JWT + RevenueCat), con un backend en la nube (FastAPI + Postgres) detrás. Un paneo de octava con dos dedos y una hoja de opciones completan la superficie de ejecución.'
businessContext: 'Expressive control is what separates a toy from an instrument. Continuous glissando plus a real FX/morph chain gives players something they cannot get from a keyboard clone, and the Pro tier turns that expressiveness into a sustainable product with recording, sync, and billing.'
businessContextEs: 'El control expresivo es lo que separa un juguete de un instrumento. El glissando continuo más una cadena real de efectos/morph da a quien toca algo que no obtiene de un clon de teclado, y el nivel Pro convierte esa expresividad en un producto sostenible con grabación, sincronización y cobros.'
strategicValue: 'Glissa is a full consumer-app pattern: a real-time audio engine with a distinctive expressive feature, a freemium-to-Pro ladder (own auth + RevenueCat billing), local recording, and a cloud backend for sync — all in a cross-platform mobile app shipped as a standalone build.'
strategicValueEs: 'Glissa es un patrón completo de app de consumo: un motor de audio en tiempo real con una característica expresiva distintiva, una escalera freemium-a-Pro (auth propia + cobros RevenueCat), grabación local y un backend en la nube para sincronizar — todo en una app móvil multiplataforma entregada como build standalone.'

kpis:
  - label: 'Expressiveness'
    labelEs: 'Expresividad'
    baseline: 'Discrete keyboard taps'
    baselineEs: 'Toques discretos de teclado'
    result: 'Continuous glissando (Keys / Glide / Auto)'
    resultEs: 'Glissando continuo (Keys / Glide / Auto)'
    impact: 'An instrument, not a key clone'
    impactEs: 'Un instrumento, no un clon de teclas'
  - label: 'Product model'
    labelEs: 'Modelo de producto'
    baseline: 'Free demo only'
    baselineEs: 'Solo demo gratis'
    result: 'Freemium → Pro (auth + billing + sync)'
    resultEs: 'Freemium → Pro (auth + cobros + sync)'
    impact: 'Sustainable consumer app'
    impactEs: 'App de consumo sostenible'

metrics:
  - label: 'Signature feature'
    labelEs: 'Característica firma'
    value: 'Continuous glissando — Keys / Glide / Auto'
    valueEs: 'Glissando continuo — Keys / Glide / Auto'
  - label: 'Audio'
    labelEs: 'Audio'
    value: 'FX rack + instrument morph + sampled packs'
    valueEs: 'Rack de efectos + morph de instrumentos + packs muestreados'
  - label: 'Pro suite'
    labelEs: 'Suite Pro'
    value: 'Own-JWT auth + RevenueCat billing + cloud sync'
    valueEs: 'Auth propia JWT + cobros RevenueCat + sync en la nube'
  - label: 'Build'
    labelEs: 'Build'
    value: 'Standalone EAS app (React Native / Expo)'
    valueEs: 'App standalone EAS (React Native / Expo)'

stack: [React Native, Expo, TypeScript, Web Audio, FastAPI, PostgreSQL, RevenueCat]
---

## Slide between the notes

Glissa is a **private** mobile musical instrument built around continuous glissando — slide smoothly between pitches with Keys, Glide and Auto modes — over an FX rack, instrument morphing, and sampled packs. A Pro suite adds recording, cloud sync, and billing on top of a FastAPI + Postgres backend.

*This is proprietary work; the app is private. The card describes the architecture and intent without exposing internal logic.*
