---
title: "FeelIT — Haptic Accessibility Prototype (2008-2012)"
titleEs: "FeelIT — Prototipo de Accesibilidad Háptica (2008-2012)"
slug: feelit-original
date: 2012-07-07
category: accessibility
excerpt: "The original FeelIT project — a digital environment with tactile feedback for blind users to explore virtual objects through relief information. Pioneered a 10×10 electromagnetically controlled pin-array display and servo-motor haptic devices."
excerptEs: "El proyecto FeelIT original — un entorno digital con retroalimentación táctil para usuarios ciegos que exploran objetos virtuales mediante información en relieve. Pionero con una pantalla de 10×10 pines electromagnéticos y dispositivos hápticos servo-motor."
icon: tabler:hand-finger
tags: [haptics, accessibility, virtual-reality, hardware, assistive-technology]
proprietary: false
featured: false
assetPatterns: [feelit_concept]

challenge: "Creating a tactile display capable of rendering 3D surfaces for blind users. Commercial haptic devices were expensive and limited. The concept of electronically controllable pin positions to store and recall surface shapes dynamically had not been implemented at accessible cost."
challengeEs: "Crear una pantalla táctil capaz de renderizar superficies 3D para usuarios ciegos. Los dispositivos hápticos comerciales eran caros y limitados. El concepto de posiciones de pines electrónicamente controlables para almacenar y recuperar formas de superficie dinámicamente no había sido implementado a costo accesible."

approach: "Evolved from 4×4 (16-pin) binary electromagnetic grid to 10×10 array with multiple height levels. Combined with servo-motor-based haptic device and virtual environment for blind users to explore 3D objects through touch. User testing demonstrated successful shape exploration through haptic interaction. Project frozen due to hardware miniaturization limitations."
approachEs: "Evolucionó de grilla electromagnética binaria 4×4 (16 pines) a arreglo 10×10 con múltiples niveles de altura. Combinado con dispositivo háptico basado en servo-motor y entorno virtual para usuarios ciegos que exploran objetos 3D mediante tacto. Pruebas con usuarios demostraron exploración exitosa de formas mediante interacción háptica. Proyecto congelado por limitaciones de miniaturización de hardware."

kpis:
  - label: "Pin Array"
    labelEs: "Arreglo de Pines"
    baseline: "No accessible tactile display"
    baselineEs: "Sin pantalla táctil accesible"
    result: "10×10 multi-height electromagnetic array"
    resultEs: "Arreglo electromagnético 10×10 multi-altura"
    impact: "Physical tactile rendering"
    impactEs: "Renderizado táctil físico"
  - label: "User Validation"
    labelEs: "Validación de Usuario"
    baseline: "Concept only"
    baselineEs: "Solo concepto"
    result: "Successful shape exploration by blind users"
    resultEs: "Exploración exitosa de formas por usuarios ciegos"
    impact: "Proven accessibility approach"
    impactEs: "Enfoque de accesibilidad comprobado"

metrics:
  - label: "Pin Array"
    labelEs: "Arreglo de Pines"
    value: "10×10 electromagnetic"
    valueEs: "10×10 electromagnético"
  - label: "Evolution"
    labelEs: "Evolución"
    value: "4×4 → 10×10 grid"
    valueEs: "Grilla 4×4 → 10×10"
  - label: "Haptic Device"
    labelEs: "Dispositivo Háptico"
    value: "Servo-motor based"
    valueEs: "Basado en servo-motor"
  - label: "Status"
    labelEs: "Estado"
    value: "Frozen → Reborn as FeelIT 2.0"
    valueEs: "Congelado → Renacido como FeelIT 2.0"

stack: [Windows Forms, C#, Electromagnetic Actuators, Servo Motors, 3D Haptics, Hardware Prototyping]
---

## The Toy That Started Everything

A 3D metal pin art board — press an object against it and you get a tactile impression of its shape. Simple. But what if you could control each pin electronically? Store surfaces, recall them, change them dynamically. A blind person could feel the shape of any digital object through controllable tactile relief.

In 2008, as an electronics engineering student at Universidad de Concepcion, I started building exactly that.

## The Hardware

**Version 1 (2008)**: 16 electromagnetic pins in a 4x4 grid with binary control — each pin either up or down. It proved the concept, but 16 pixels of touch resolution is useless for real shapes.

**Version 2 (2009–2010)**: 100 pins in a 10x10 array with **multiple height levels** — proportional displacement instead of binary. Custom power driver boards, improved microcontroller firmware. At this scale, simple shapes became tactilely distinguishable: bumps, ridges, waves.

During the thesis phase, we integrated a **Novint Falcon** haptic device providing 3-DOF force feedback in a Windows Forms virtual environment. Blind users explored 3D objects through touch — and the testing showed it worked. Users could distinguish spheres from cubes, navigate simple environments, and identify raised patterns.

## Why It Stopped

Frozen in 2012. Three blocking constraints: electromagnetic actuators couldn't be miniaturized enough for useful resolution while maintaining sufficient force. Each pin mechanism added prohibitive per-unit cost. And 100 independently moving parts demanded constant mechanical calibration.

But the core hypothesis was validated: tactile 3D rendering is a viable accessibility modality. The vision waited fourteen years, and was reborn as **[FeelIT 2.0](/portfolio/feelit-2)** — proving the accessibility goal could be achieved without custom hardware.