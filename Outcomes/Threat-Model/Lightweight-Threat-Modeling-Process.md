---
layout  : blocks/outcome
title   : Threat Modeling Cheat Sheet & Lightweight Threat Modeling (Part I)
---

## Outcomes

- Defined: Lightweight threat modelling process with artefacts for ADCI environments
- Created: "How to" guide for ADCI environments
- Created: *application component* patterns library
- Created: adaptable threat library
- Created: countermeasures library schema definition
- Key process activities that tie to cheat sheet guidance

### Synopsis and Takeaways

This session focused on building a lightweight (bottom up) threat model, which we call XUUL.  It's important to give our threat modeling processes names and version numbers.  What's below is XUUL .1.  If you say "Lightwight TM process", there can be many of those, and those new to threat modeling may be confused when they read different descriptions of lightwieght TM processes.  This what's below is XUUL, a lightwight TM process created at the OWASP Summit.  We look forward to beta feedback.

The group was split into 3 teams (Ascertain, Threats, and Mitigation).  A diagram was created from this.

![Diagram](https://raw.githubusercontent.com/OWASP/owasp-summit-2017/master/Working-Sessions/Threat-Model/cheat-sheet/lightweight.jpg)

##### Key Takeaways

###### Overall Assumptions
Assumption: Roles include developers, architect, product owners, team leads, DEVOPS, Security Champions, and DBAs.

###### Ascertain
- Assumption: To piggy back on top of the standard Agile user story creation process.
- Assumption: Ascertain phase evaluates the effectiveness of prior mitigation actions.

- Security information is derived from the functional story information.
- Team is encouraged to draw a high-level diagram of the system for a common talking point. We're all visual by nature :-)
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

---

## Working materials

Here are the current 'work in progress' materials for this session

(please add as much information as possible before the sessions)

### Prior articles

- [Guerilla Threat Modelling or Threat Modeling If You're American](https://blogs.msdn.microsoft.com/ptorr/2005/02/22/guerrilla-threat-modelling-or-threat-modeling-if-youre-american/)
- [SAFECode TM Whitepaper](https://www.safecode.org/wp-content/uploads/2017/05/SAFECode_TM_Whitepaper.pdf)
- [Incremental Threat Modelling v1.0](http://schd.ws/hosted_files/appseceurope2017/df/Incremental%20Threat%20Modelling%20v1.0.pptx)
- [Threat Modeling Simplified](https://www.safaribooksonline.com/blog/2016/02/09/threat-modeling-simplified/)
- https://www.infoq.com/articles/threat-modeling-express


