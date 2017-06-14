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

## Working materials

Here are the current 'work in progress' materials for this session 

(please add as much information as possible before the sessions)

### Content


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

 
