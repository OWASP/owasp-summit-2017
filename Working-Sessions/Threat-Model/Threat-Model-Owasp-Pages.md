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

See Session outcomes below.
  
## Who

The target audience for this Working Session is:

 - Wiki ninjas
 - Experienced threat modeling evangelists
 - Project owners/session organisers for other threat modelling workshops/sessions
 
 --- 

## Session outcomes

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

### Why use a Threat Model?

- Enables/supports cost-effective security
- Enables you to understand your security risks

### Security Centric Approach

The security centric approach tries to identify every possible threat to the system under investigation. This approach is used mainly by a niche group within threat modeling where any threat or vulnerability will have a huge impact and thus is a large risk. Since we can not prioritize threats on risk we must identify and cover all of them.

Examples of industries where the security centric approach are military, critical infrastructure, healthcare, utility sector, space exploration, ...

Most of these industries have very strict regulatory safety requirements to meet. Even though these organisations need to protect privacy and comply to regulations like GDPR these are not the main focus. In healthcare for example patient safety is more important then patient confidentiality.

This is shooting at a moving target, even for a fixed technology new threats are emerging and being developed. Continuous evaluation of the threat library will be needed. This makes the security centric approach one of the more expensive approaches.

####1. Scope & Objective

In most approaches overscoping is a problem that needs to be addressed. In a security centric approach overscoping is preffered and underscoping needs to be avoided at all costs. 

The objective of a security centric threat model is to document, analyse and mitigate every possible threat agaist the system.

####2. System Overview

The system overview is bound to be very large, most systems will have an overview that is split into several encapsulated parts. Each of these parts will be described in deeper levels. This usually happens in an iterative manner.

####3. Decompose System

####4. Identify and analyse threats

The main difference between the security centric approach is that every threat needs to be identified (and mitigated).

####5. Identify and analyse mitigations

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

### Software Centric

Scope: Software components, architecture, infrastructure.

As a prerequisite, we assume we have a buy-in from the management. Technical people look at the content of these pages to see how they start the threat modeling process.

Consider whether it's a greenfield project or an existing product, and development and release model (waterfall or agile).

Legacy products:
-- have to accept that it's not realistic to do a full TM; baseline the existing situation
-- new changes have to be threat-modeled against current state/situation bring legacy components into scope only as part of changes

Greenfield projects:
-- Can start from scratch, architects decompose the application

Release model:
-- Depending on whether waterfall, agile, or combination is used, TM must fit into the process and be proportional to the overall design planning 
-- For agile models, smaller TM portions should be added to each sprint (or Epic)
-- Definition of completion of Epic should include TM part

Starter kit on the page for those new to threat modelling:
-- Wizard-like tutorial/walkthrough with many pictures; aimed to help navigate the process according to the experience 
-- Templates, going top-down to enumerate the application, from higher-level (type of application, industry vertical), covering major components/technologies
-- Different methodologies/taxonomies can be used/offered as a set of templates (STRIDE, Touchpoints, CIA, etc)
-- Prioritization may be based on technical or business risk, need to choose
-- Mitigation techniques

Further information for intermediate users.
Contribution from advanced users.


