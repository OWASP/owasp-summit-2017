---
layout       : blocks/working-session
title        : Threat Modeling Cheat Sheet & Lightweight Threat Modeling (Part I)
type         : workshop
track        : Threat Model
status       : need-working materials
when-day     : Wed
when-time    : PM-1
location     : Villa-4
room-layout  : unknown
organizers   : Geoff Hill, Tony UV
participants : Felipe Zipitria,Robert Morschel,Stephen de Vries,Irene Michlin, Steven Wierckx, Aruna Katugampola, Christian Martorella
---

## Why

This Working Session aims to produce an overview of how to integrate threat modelling into an Agile/DevOps/Continuous Integration (ADCI) process. Keep in mind that a proper lightweight process should be easily repeatable with few moving parts (ie. steps). It should be flexible enough to be used with various taxonomies and libraries.  The focus of this session should be on creating that process. This process will be supported and complimented by prescriptive threat modeling guidance via the Threat Modeling Cheat Sheets being developed.


## What 

- Define what components and steps are needed for a proper lightweight process. We should work on a definition (a "MVP" threat model) that does not include over-processing or over-variation. The process framework will drive the specific discussion points below.
- Make the framework flexible enough to accept many different base artefacts (e.g. - RACI, DFDs, lists etc.) for ADCI environments.
- Define and refine the "incremental threat modelling" concept to enable integration with ADCI iterational approaches.
- Add steps describing how to start threat modelling on an existing project/codebase without the need to cover everything (similar to introducing tests to legacy software). Build on the "10,000 ft view" model of encapsulation.
- Create a set of top-level *application component* patterns to speed up analysis. These asset libraries can be used to complement other libraries that may get plugged into the lightweight process. Keep this pattern library to a manageable set of elements  (shoot for around 10).
- Review threat model taxonomies (eg. CIA, STRIDE, CWE, CAPEC, etc.) and decide which one(s) fit best for a lightweight process.
- Create an adaptable threat library based on current OWASP and MITRE content, and align this process with the lightweight taxonomy (or taxonomies). Keep this library to a manageable set of elements (shoot for around 10).
- Define the schema definitions for a migitations/countermeasures/controls library, again keeping the definitions top-level and flexible to enable speedy use. These definitions should leverage other OWASP content (e.g. ASVS, cheat sheets, SKF mitigation guidance, etc.) Keep this library to a manageable set of elements (shoot for around 15).
- Content from Cheat Sheets will parrallel efforts depicted by this lightweight threat modeling process. 

## Outcomes

- Defined: Lightweight threat modelling process with artefacts for ADCI environments
- Created: "How to" guide for ADCI environments
- Created: *application component* patterns library
- Created: adaptable threat library
- Created: countermeasures library schema definition
- Key process activities that tie to cheat sheet guidance

## Who

The target audience for this Working Session is:

- Architects
- Designers
- Scrum leads
- Security champions
- SMEs

--- 

## Working materials

Here are the current 'work in progress' materials for this session 

(please add as much information as possible before the sessions)

### Prior articles

- [Guerilla Threat Modelling or Threat Modeling If You're American](https://blogs.msdn.microsoft.com/ptorr/2005/02/22/guerrilla-threat-modelling-or-threat-modeling-if-youre-american/)
- [SAFECode TM Whitepaper](https://www.safecode.org/wp-content/uploads/2017/05/SAFECode_TM_Whitepaper.pdf)
- [Incremental Threat Modelling v1.0](http://schd.ws/hosted_files/appseceurope2017/df/Incremental%20Threat%20Modelling%20v1.0.pptx)
- [Threat Modeling Simplified](https://www.safaribooksonline.com/blog/2016/02/09/threat-modeling-simplified/)


### Content

#### Synopsis/Takeaways

This session focused on building a lightweight (bottom up) threat model.  The group was split into 3 teams (Ascertain, Threats, and Mitigation).  A diagram was created from this. 

##### Takeaways

###### Overall Assumptions
Assumption: Roles include developers, architect, product owners, team leads, DEVOPS, Security Champions, and DBAs.

###### Ascertain
- Assumption: To piggy back on top of the standard Agile user story creation process. 
- Assumption: Ascertain phase evaluates the effectiveness of prior mitigation actions.

- Security information is derived from the functional story information.
- A non-granular Context Diagram is created as an artefact to support the security information. 
- Use Cases are defined from the business and security user story information, and are used later to derive abuse cases.

###### Threats
- Assumption:  To reuse the OWASP threat template library.
- Assumption: Each Threat Template has security descriptors (e.g. STRIDE, CWE, etc.) attached to the elements (i.e. Processes, Data Flows). 
- The security information from the Ascertain activity is used to select the template from the Threat Template Library. The Team will know which user story scenario to apply, such as Client-Server, B2B, Distributed cloud.
- Apply the template threats to the Agile user story.
- Threat phase will provide list of threats against components & severity of threats. The team will get the basis of this information from the selected templates. 

###### Mitigation 
- Assumption: Takes place prior to code being written.

- Definition: A mitigation reduces the severity of a technical risk for a given application component.

- The team analyses the design and threats that were previously discovered. 
- The team does a quick subjective analysis on the impact-based threats (non-evidence based).
- The team uses existing OWASP countermeasures to mitigate the associated threats.
- To quicken the process, OWASP countermeasures should be added to the OWASP Threat Templates. 
