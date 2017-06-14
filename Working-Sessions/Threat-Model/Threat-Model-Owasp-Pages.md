---
layout      : blocks/working-session
title       : Threat Modeling OWASP Pages
type        : workshop
track       : Threat Model
related-to  : Cheat Sheets, Templates, Tools
description : OWASP Threat Modeling Pages provide global AppSec professionals and companies worldwide with a central reference point to OWASP project, tools, and references that are related to Application Threat Modeling. These pages will provide as a gateway for threat modelers to leverage OWASP threat modeling content as well as other OWASP content and tools that support application threat modeling objectives.
status      : done
when-day    : Wed
when-time   : AM-1
location    : Villa-4
room-layout : unknown
organizers  : Tony UV
participants: Avi Douglen, Robert Hurlbut
---

The [OWASP Threat Modeling](https://www.owasp.org/index.php/Application_Threat_Modeling) pages provide a global representation of application threat modelling content for security professionals worldwide, but the repository is disorganised and some information is incorrect.  This Working Session provides an opportunity to unify OWASP's application threat modelling content that can be vetted by OWASP security professionals worldwide. The pages also provide a way to correlate application security tools, references, and projects with application threat modelling activities.  Tools and references such as cheat sheets, coding guides, and risk models can also correlate to threat modelling activities managed by these pages.  

## Why

This Working Session aims to update the OWASP threat modelling pages. The result will provide application security professionals, architects, and developers with the reliable, authoritative, and prescriptive guidance they need on threat modelling tools, techniques, and methodologies.

## What

- Review and update content on OWASP threat modelling pages
- Create subpages on threat modelling methodologies with details and artefacts
  - Build a complete 'how to' for software-centric threat models
  - Build a complete 'how to' for risk-centric threat models
    - Provide references to risk rating methods that professionals can use
  - Build a complete 'how to' for security centric threat models
  - Provide pointers to OWASP threat modelling cheat sheets, Security Champions, Lightweight threat modelling initiatives 
  
 ## Outcomes

- Revised content on OWASP threat modelling pages
- Subpages on threat modelling methodologies with details and artefacts created
  
## Who

The target audience for this Working Session is:

 - Wiki ninjas
 - Experienced threat modeling evangelists
 - Project owners/session organisers for other threat modelling workshops/sessions
 
 --- 

## Session outcome

### What is a Threat Model?

- Tool/approach for risk management
- Identification of threats
- Structured methodology to understand the threats to which your application could be vulnerable
- Technical threat analysis
- Applies to SW, way to identify vulnerabilities, risks and threats from diagrams
- Produces security requirements and/or risks, security design
- "How secure is secure enough?"
- Optimise the security investment
- The term "threat" needs to be clarified (connection to vulnerability, exploit, threat agent...)
- Possibility of a vulnerability / software flaw
- Actualized risk of appearance of a vulnerability 
- Intent of a threat agent to perform an undesired action (Attacker centric approach)

## Why use a Threat Model?

- Enables/supports cost-effective security
- Enables you to understand your security risks

## Security Centric Approach

### What is this?

- Approach from the attacker's point of view
- Attacker-centric approach might be just a subset of this (vs. starting with security controls?) 

### Options

  - Attacker analysis (who, how many, how good, how motivated...)
  - Attack Tree (how to achieve a goal - e.g. spoof a user)
  - Usage of a threat library (e.g. STRIDE, ...)
  - ? Given we can also start from security controls: ASF (Application Security Frame) - Microsoft Application
  
### Consumers 

  - Military 
  - Risk Adverse Enterprises 
  - Pen testers
  
### When? 

  - Good also late in SDLC (?)
  - When we have poor internal visibility of the application
