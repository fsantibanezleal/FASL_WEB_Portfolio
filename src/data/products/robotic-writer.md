---
title: "Robotic Writer — 5-DOF Scorbot III Simulation"
titleEs: "Escritor Robótico — Simulación Scorbot III de 5 GDL"
slug: robotic-writer
date: 2009-01-01
category: robotics
excerpt: "A full simulation and control environment for a 5-DOF Scorbot III robotic arm that picks letter blocks and spells words. Uses Denavit-Hartenberg convention with analytical closed-form inverse kinematics for real-time performance."
excerptEs: "Entorno completo de simulación y control para un brazo robótico Scorbot III de 5 GDL que recoge bloques de letras y escribe palabras. Usa convención Denavit-Hartenberg con cinemática inversa analítica de forma cerrada para rendimiento en tiempo real."
icon: tabler:robot
tags: [robotics, kinematics, denavit-hartenberg, simulation, dash, python, matlab]
proprietary: false
featured: false
assetPatterns: [robotic, robot_dh, robot_workspace]
github: "https://github.com/fsantibanezleal/Udec_Robotic_Writer"
video: "https://www.youtube.com/watch?v=ubUdNsb0W-o"

challenge: "Controlling a 5-DOF robotic arm requires solving both forward and inverse kinematics in real-time. The inverse problem — finding joint angles for a desired end-effector position — has multiple solutions and must be computed efficiently for smooth motion."
challengeEs: "Controlar un brazo robótico de 5 GDL requiere resolver cinemática directa e inversa en tiempo real. El problema inverso — encontrar ángulos articulares para una posición deseada del efector final — tiene múltiples soluciones y debe calcularse eficientemente para movimiento suave."

approach: "Denavit-Hartenberg systematic parameterization for 5-joint kinematic chain. Homogeneous transformation T₀₅ = T₀₁·T₁₂·T₂₃·T₃₄·T₄₅ with analytical closed-form inverse kinematics. Interactive 3D simulation with Dash/Plotly, multiple hardware backends (Scorbot III serial, Arduino steppers, MATLAB Engine), REST API."
approachEs: "Parametrización sistemática Denavit-Hartenberg para cadena cinemática de 5 articulaciones. Transformación homogénea T₀₅ = T₀₁·T₁₂·T₂₃·T₃₄·T₄₅ con cinemática inversa analítica de forma cerrada. Simulación 3D interactiva con Dash/Plotly, múltiples backends de hardware (Scorbot III serial, Arduino steppers, MATLAB Engine), API REST."

kpis:
  - label: "Kinematics"
    labelEs: "Cinemática"
    baseline: "Trial and error joint control"
    baselineEs: "Control articular por prueba y error"
    result: "Analytical DH inverse kinematics"
    resultEs: "Cinemática inversa DH analítica"
    impact: "Real-time Cartesian control"
    impactEs: "Control cartesiano en tiempo real"
  - label: "Hardware Support"
    labelEs: "Soporte de Hardware"
    baseline: "Single robot interface"
    baselineEs: "Interfaz de robot único"
    result: "3 backends (Scorbot, Arduino, MATLAB)"
    resultEs: "3 backends (Scorbot, Arduino, MATLAB)"
    impact: "Flexible deployment"
    impactEs: "Despliegue flexible"

metrics:
  - label: "DOF"
    labelEs: "GDL"
    value: "5 joints"
    valueEs: "5 articulaciones"
  - label: "Kinematics"
    labelEs: "Cinemática"
    value: "DH analytical closed-form"
    valueEs: "DH analítica forma cerrada"
  - label: "Backends"
    labelEs: "Backends"
    value: "Scorbot III, Arduino, MATLAB"
    valueEs: "Scorbot III, Arduino, MATLAB"
  - label: "Visualization"
    labelEs: "Visualización"
    value: "Dash + Plotly 3D"
    valueEs: "Dash + Plotly 3D"

stack: [Python, Dash, Plotly, MATLAB, Arduino, Serial Communication, Denavit-Hartenberg, NumPy]
---

## The Concept

A 5-DOF Scorbot III robotic arm picks letter blocks arranged on a **circular arc** and places them on a line to spell words. What started as a 2004 laboratory activity at Universidad de Concepcion evolved into a complete kinematics exploration and simulation environment.

## Denavit-Hartenberg Kinematics

The Scorbot III is modeled using the standard **DH convention** — the systematic method for describing serial kinematic chains used in every robotics textbook.

### DH Parameter Table

| Joint | Type | θ | d | a | α |
|-------|------|---|---|---|---|
| Base | Revolute | θ₁ | d₁ | 0 | -90° |
| Shoulder | Revolute | θ₂ | 0 | a₂ | 0° |
| Elbow | Revolute | θ₃ | 0 | a₃ | 0° |
| Pitch | Revolute | θ₄ | 0 | 0 | -90° |
| Roll | Revolute | θ₅ | d₅ | 0 | 0° |

### Forward Kinematics
The end-effector pose is computed as the product of homogeneous transformations:

`T₀₅ = T₀₁ · T₁₂ · T₂₃ · T₃₄ · T₄₅`

Each `Tᵢ` is a 4×4 matrix encoding rotation and translation for that joint — the product gives the complete position and orientation of the gripper.

### Inverse Kinematics
**Analytical closed-form** solution for real-time performance. Given a target (x, y, z, pitch, roll), joint angles are computed geometrically — no iterative numerical methods needed. This is critical for smooth real-time trajectory execution.

## The Writing Task

The robot picks letter blocks and places them to spell words. This requires:
1. **Trajectory planning** — smooth paths between pick and place positions avoiding obstacles
2. **Joint interpolation** — coordinated multi-joint motion for natural-looking movement
3. **Gripper coordination** — timed open/close sequences for reliable block manipulation
4. **Collision avoidance** — staying within the reachable workspace

## Multiple Hardware Backends

- **Scorbot III serial** — direct RS-232 communication with the physical robot controller
- **Arduino steppers** — custom stepper motor control board for educational setups
- **MATLAB Engine** — interfacing with MATLAB-based control systems and Simulink models