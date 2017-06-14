---
layout       : blocks/working-session
title        : Threat Modeling Scaling and Security Champions
type         : workshop
track        : Threat Model
technology   :
related-to   :
status       : done
when-day     : Wed
when-time    : PM-2
location     : Villa-4
room-layout  : unknown
organizers   :
participants : Robert Hurlbut, Irene Michlin, Mamta Vuppu, Viktor Lindström, Steven Wierckx
---

This Working Session will explore scaling threat modelling in enterprise.

## Why

To be effective, threat modelling must scale throughout an enterprise. There are several ways to do this, including utilising Security Champions to help teams with threat modelling.

## What

- What guidelines can we identify to scale threat modelling?
- Who should be involved? 
- How do we get Security Champions involved in threat modelling?
- What are the check points (i.e. how do you evaluate the threat models created by many teams)?

## Outcomes

- Guidelines on scaling and evaluating threat modelling

## Who

The target audience for this Working Session is:

 -  Managers
 -  Architects
 -  Security Champions
 -  CISOs
 -  CTOs
 
 --- 

## Working materials

- Draft guidelines on scaling and evaluating threat modelling

(please add as much information as possible before the sessions)

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

