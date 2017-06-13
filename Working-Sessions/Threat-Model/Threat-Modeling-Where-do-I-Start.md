---
layout       : blocks/working-session
title        : Threat Modeling Where do I Start?
type         : workshop
track        : Threat Model
technology   :
related-to   :
status       : done
when-day     : Mon
when-time    : Eve
location     : Villa-4
room-layout  : unknown
organizers   :
participants : Naushad007, Robert Hurlbut, Irene Michlin, Mamta Vuppu, Viktor Lindstrom, Sebastien Deleersnyder, Timo Pagel, Nessim Kisserli
---

With regard to threat modelling, the single most common question developers ask me is 'Where do I start?'

## Why

In order to run, you need to learn to walk. 

For an organisation or group to understand and use threat modelling, they should know where to start. This Working Session will create guidelines for the effective use of threat modelling.

## What

- What guidelines could we provide to help teams get started?
- What tools do they need?
- Who should be involved? 
- For starting threat modelling on an existing project/codebase - how to start without the need to cover everything (this shares some similarities with introducing tests to legacy software)

![API model][1]
## Outcomes

- Guidelines for the effective use of threat modelling

## Who

The target audience for this Working Session is:

- Developers
- Architects
- Security SMEs
- SCRUM masters
- Security champions

--- 

## Working materials

- Draft guidelines for the effective use of threat modelling

(please add as much information as possible before the sessions)

### Content
How to get started

####Who should be involved?
- An experienced threat modeler should guide the automated threat modeler software. An externally hired expert should oversee the first threat model process run for an organization.
- The Subject Matters Experts on the application are: lead developers, application architects, DevOps experts, people who know the business.

####Define an approach. 
- Many approaches exist, pick one. This can be done with an expert threat modeler or find an expert threat modeler to fit your chosen approach.

####Define a proper scope: start small and encapsulated. Enumerate the components:
- Client SW
- Compiled binaries
- Exposed API endpoints
- Data stores
- External content providers

####Create a DFD or any diagram that shows the data flows
- Data flows
- Transport layer
- Authentication 
- Add trust boundaries and/or “what if” scenarios



 ####Outcome: These are the steps that are common to most approaches. 
We will finish the actual content at a later date due to time constraints (to do action).

[1]: /website/assets/img/blocks/API.bmp
