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

## The Vision

Inspired by a **3D metal pin art board** — the idea of electronically controllable pin positions to store and recall surface shapes dynamically. If each pin could be individually addressed, a blind user could feel the shape of any digital object through tactile relief. A physical-digital bridge for accessibility.

## Hardware Evolution

### Version 1: 4×4 Grid (2008)
Initial prototype with **16 electromagnetic pins** in a binary (up/down) configuration. Custom electronics board with USB microcontroller interface. Proved the concept but resolution was far too low for meaningful shape representation — 16 pixels of touch.

### Version 2: 10×10 Array (2009–2010)
Expanded to **100 pins** with **multiple height levels** — no longer just up/down but continuous position control. Electromagnetic actuators allowed proportional displacement. Combined with custom power driver boards and improved microcontroller firmware. At this scale, simple shapes (bumps, ridges, waves) became tactilely distinguishable.

### Haptic Device Integration
During the undergraduate thesis phase, servo-motor-based haptic devices were explored. The **Novint Falcon** provided 3-DOF force feedback while users explored 3D objects in a Windows Forms application — combining active force feedback with the passive pin array display.

## User Testing

Testing with blind users demonstrated **successful shape exploration** through haptic interaction. Users could:
- Distinguish between basic geometric shapes (sphere, cube, pyramid)
- Navigate simple virtual environments using force feedback cues
- Identify raised patterns on the pin array display

These results validated the core hypothesis: tactile 3D rendering is a viable accessibility modality.

## Why It Was Frozen

The project was frozen in 2012 due to:
- **Hardware miniaturization limits** — electromagnetic actuators couldn't be made small enough for useful resolution while maintaining sufficient force
- **Cost constraints** — each pin mechanism added significant per-unit cost, making the device economically impractical
- **Maintenance complexity** — 100 independently moving parts required constant mechanical calibration

The vision lived on. Fourteen years later, it was reborn as **[FeelIT 2.0](/portfolio/feelit-2)** — taking a purely software approach with web technologies, proving that the accessibility goal could be achieved without custom hardware.