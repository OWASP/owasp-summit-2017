---
layout      : blocks/working-session
title       : Lightweight Threat Modeling Process
type        : workshop
track       : Threat Model
status      : draft
organizers  : Geoff Hill
participants: Marc Rimbau,Felipe Zipitria,Avi Douglen
---

- Build a lightweight threat modeling process with artifacts (e.g. - RACI, DFDs, etc.) for Agile and/or DevOps environments
- For Agile environment, build a "how to" explaining incremental threat modeling, to concentrate on the features required for the current iteration.
- For starting threat modeling on existing project/codebase - how to start without the need to cover everything (a bit similar to introducing tests to legacy software, but  not quite).
- Build a *application component* library to compliment other libraries(attack, threat, weakness, etc) used as part of threat models
- Review current threat (not attack) libraries or categorizations (like STRIDE) and build a threat library that encapsulates threats seen today to leverage in app threat models.
- We need a countermeasure library.  Help build this and define a schema for this.  Leverage other OWASP content ideally (e.g. - cheat sheets, SKF mitigation guidance, etc.)

## ARTIFACT

Result of workshop should be a short (only a few pages) overview on how to integrate Threat Modeling into a continuous integration process.

 1. Discuss and decide the contents of a "MVP" TM for a continuous integration (CI) process.
 2. Define integration points for TM during CI.
 3. Define short (10 items or less) frameworks for threat types, countermeasure types, component types. Enable these frameworks to tie into larger libraries that will get defined outside the scope of this lighteight process.
