---
title: 'Robotic Writer — 5-DOF Scorbot III Simulation'
titleEs: 'Escritor Robótico — Simulación Scorbot III de 5 GDL'
slug: robotic-writer
date: 2009-01-01
category: robotics
excerpt: 'A full simulation and control environment for a 5-DOF Scorbot III robotic arm that picks letter blocks and spells words. Uses Denavit-Hartenberg convention with analytical closed-form inverse kinematics for real-time performance.'
excerptEs: 'Entorno completo de simulación y control para un brazo robótico Scorbot III de 5 GDL que recoge bloques de letras y escribe palabras. Usa convención Denavit-Hartenberg con cinemática inversa analítica de forma cerrada para rendimiento en tiempo real.'
icon: tabler:robot
tags: [robotics, kinematics, denavit-hartenberg, simulation, dash, python, matlab]
proprietary: false
featured: false
assetPatterns: [robotic, robot_dh, robot_workspace]
github: 'https://github.com/fsantibanezleal/Udec_Robotic_Writer'
demo: 'https://robotic.fasl-work.com'
video: 'https://www.youtube.com/watch?v=ubUdNsb0W-o'

challenge: 'Controlling a 5-DOF robotic arm requires solving both forward and inverse kinematics in real-time. The inverse problem — finding joint angles for a desired end-effector position — has multiple solutions and must be computed efficiently for smooth motion.'
challengeEs: 'Controlar un brazo robótico de 5 GDL requiere resolver cinemática directa e inversa en tiempo real. El problema inverso — encontrar ángulos articulares para una posición deseada del efector final — tiene múltiples soluciones y debe calcularse eficientemente para movimiento suave.'

approach: 'Denavit-Hartenberg systematic parameterization for 5-joint kinematic chain. Homogeneous transformation T₀₅ = T₀₁·T₁₂·T₂₃·T₃₄·T₄₅ with analytical closed-form inverse kinematics. Interactive 3D simulation with Dash/Plotly, multiple hardware backends (Scorbot III serial, Arduino steppers, MATLAB Engine), REST API.'
approachEs: 'Parametrización sistemática Denavit-Hartenberg para cadena cinemática de 5 articulaciones. Transformación homogénea T₀₅ = T₀₁·T₁₂·T₂₃·T₃₄·T₄₅ con cinemática inversa analítica de forma cerrada. Simulación 3D interactiva con Dash/Plotly, múltiples backends de hardware (Scorbot III serial, Arduino steppers, MATLAB Engine), API REST.'

businessContext: 'Robotic manipulation requires solving both forward and inverse kinematics in real time. The inverse problem — finding joint angles for a desired end-effector position — has multiple solutions and must be computed efficiently for smooth trajectory execution. A 5-DOF serial manipulator like the Scorbot III presents a tractable but non-trivial kinematic chain that serves as an excellent educational and research platform for exploring these fundamentals.'
businessContextEs: 'La manipulación robótica requiere resolver cinemática directa e inversa en tiempo real. El problema inverso — encontrar ángulos articulares para una posición deseada del efector final — tiene múltiples soluciones y debe calcularse eficientemente para ejecución suave de trayectorias. Un manipulador serial de 5 GDL como el Scorbot III presenta una cadena cinemática tratable pero no trivial que sirve como excelente plataforma educativa y de investigación para explorar estos fundamentos.'
strategicValue: 'The system provides a complete simulation and control environment using Denavit-Hartenberg convention with analytical closed-form inverse kinematics — no iterative numerical methods, enabling smooth real-time trajectory execution. The robot picks letter blocks from a circular arc and spells words, requiring trajectory planning, multi-joint interpolation, gripper coordination, and workspace awareness. Three hardware backends (Scorbot III serial, Arduino steppers, MATLAB Engine) support deployment from educational to research contexts. What started as a 2004 lab exercise evolved into a full kinematics exploration tool with interactive 3D visualization.'
strategicValueEs: 'El sistema provee un entorno completo de simulación y control usando convención Denavit-Hartenberg con cinemática inversa analítica de forma cerrada — sin métodos numéricos iterativos, permitiendo ejecución suave de trayectorias en tiempo real. El robot recoge bloques de letras de un arco circular y escribe palabras, requiriendo planificación de trayectoria, interpolación multi-articular, coordinación de gripper, y conciencia del espacio de trabajo. Tres backends de hardware (Scorbot III serial, Arduino steppers, MATLAB Engine) soportan despliegue desde contextos educativos hasta investigación. Lo que comenzó como un ejercicio de laboratorio en 2004 evolucionó en una herramienta completa de exploración cinemática con visualización 3D interactiva.'

kpis:
  - label: 'Kinematics'
    labelEs: 'Cinemática'
    baseline: 'Trial and error joint control'
    baselineEs: 'Control articular por prueba y error'
    result: 'Analytical DH inverse kinematics'
    resultEs: 'Cinemática inversa DH analítica'
    impact: 'Real-time Cartesian control'
    impactEs: 'Control cartesiano en tiempo real'
  - label: 'Hardware Support'
    labelEs: 'Soporte de Hardware'
    baseline: 'Single robot interface'
    baselineEs: 'Interfaz de robot único'
    result: '3 backends (Scorbot, Arduino, MATLAB)'
    resultEs: '3 backends (Scorbot, Arduino, MATLAB)'
    impact: 'Flexible deployment'
    impactEs: 'Despliegue flexible'

metrics:
  - label: 'DOF'
    labelEs: 'GDL'
    value: '5 joints'
    valueEs: '5 articulaciones'
  - label: 'Kinematics'
    labelEs: 'Cinemática'
    value: 'DH analytical closed-form'
    valueEs: 'DH analítica forma cerrada'
  - label: 'Backends'
    labelEs: 'Backends'
    value: 'Scorbot III, Arduino, MATLAB'
    valueEs: 'Scorbot III, Arduino, MATLAB'
  - label: 'Visualization'
    labelEs: 'Visualización'
    value: 'Dash + Plotly 3D'
    valueEs: 'Dash + Plotly 3D'

stack: [Python, Dash, Plotly, MATLAB, Arduino, Serial Communication, Denavit-Hartenberg, NumPy]
---

## The Task

A 5-DOF Scorbot III robotic arm picks letter blocks arranged on a circular arc and places them to spell words. What started as a 2004 lab exercise at Universidad de Concepción became a complete kinematics exploration environment — forward and inverse kinematics, trajectory planning, and multi-hardware control.

## Denavit-Hartenberg Kinematics

The Scorbot III is modeled using the standard DH convention. The forward kinematics chain `T₀₅ = T₀₁·T₁₂·T₂₃·T₃₄·T₄₅` computes end-effector pose from joint angles — five 4×4 homogeneous transformation matrices multiplied to give the complete gripper position and orientation.

The inverse problem — given a target (x, y, z, pitch, roll), find the joint angles — uses **analytical closed-form solutions** computed geometrically. No iterative numerical methods, no convergence issues, no local minima. This is critical for smooth real-time trajectory execution where the robot must move fluidly between pick and place positions.

| Joint    | Type     | θ   | d   | a   | α    |
| -------- | -------- | --- | --- | --- | ---- |
| Base     | Revolute | θ₁  | d₁  | 0   | -90° |
| Shoulder | Revolute | θ₂  | 0   | a₂  | 0°   |
| Elbow    | Revolute | θ₃  | 0   | a₃  | 0°   |
| Pitch    | Revolute | θ₄  | 0   | 0   | -90° |
| Roll     | Revolute | θ₅  | d₅  | 0   | 0°   |

The writing task requires trajectory planning between pick/place positions, coordinated multi-joint interpolation for natural motion, timed gripper open/close sequences, and workspace boundary awareness. Three hardware backends support different contexts: Scorbot III serial communication, Arduino stepper control, and MATLAB Engine integration.
