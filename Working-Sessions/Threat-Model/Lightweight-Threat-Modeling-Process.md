---
layout       : blocks/working-session
title        : Lightweight Threat Modeling Process
type         : workshop
track        : Threat Model
status       : review-content
when-day     : Tue
when-time    : AM-1,PM-1
location     : Room-1
organizers   : Geoff Hill
participants : Marc Rimbau,Felipe Zipitria,Robert Morschel,Avi Douglen,Stephen de Vries,Irene Michlin
---

## Why

This Working Session aims to produce an overview of how to integrate threat modelling into a Agile/DevOps/Continuous Integration (ADCI) process. Keep in mind that a proper lightweight process should be easily-repeatable with few moving parts (ie. steps). It should be flexible enought to be used with various taxonomies and libraries.  The focus of this session should be on creating that process.


## What 

- Define what components and steps are needed for a proper lightweight process. We should work on a definition (a "MVP" threat model) that does not include over-processing or over-variation. The process framework will drive the specific discussion points below.
- Make the framework flexible enough to accept many different base artefacts (e.g. - RACI, DFDs, lists etc.) for ADCI environments.
- Define and refine the "incremental threat modelling" concept to enable integration with ADCI iterational approaches.
- Add steps describing how to start threat modelling on an existing project/codebase without the need to cover everything (similar to introducing tests to legacy software). Build on the "10,000 ft view" model of encapsulation.
- Create a set of top-level *application component* patterns to speed up analysis. These asset libraries can be used to complement other libraries that may get plugged into the lightweight process. Keep this pattern library to a manageable set of elements  (shoot for around 10).
- Review threat model taxonomies (eg. CIA, STRIDE, CWE, CAPEC, etc.) and decide which one(s) fit best for a lightweight process.
- Create an adaptable threat library based on current OWASP and MITRE content, and align this process with the lightweight taxonomy (or taxonomies). Keep this library to a manageable set of elements (shoot for around 10).
- Define the schema definitions for a migitations/countermeasures/controls library, again keeping the definitions top-level and flexible to enable speedy use. These definitions should leverage other OWASP content (e.g. ASVS, cheat sheets, SKF mitigation guidance, etc.) Keep this library to a manageable set of elements (shoot for around 15).

## Definition of Done

- Defined: Lightweight threat modelling process with artefacts for ADCI environments
- Created: "How to" guide for ADCI environments
- Created: *application component* patterns library
- Created: adaptable threat library
- Created: countermeasures library schema definition

## Who

The target audience for this Working Session is:
- architects
- designers
- scrum leads
- security champions
- SMEs

