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

Risk Centric Approach (Process for Attack Simulation Threat Analysis - PASTA)
1. Define Your Business Objectives for the Application
1.1 - Business Impact of Application to Business (e.g. - make 
1.2 - Identify Impact of Application Use Cases (more specific business impact)
1.3 - Identify impact of regulations on information managed by application (e.g. GDPR, PCI-DSS, HIPAA, etc.)
1.4 - Consider C.I.A of Security when considering business impact
1.5 - Consider data model and data use and relevant impacts in appliaction (e.g. - PII, PHI, cardholder data)

2. Define Technical Scope Supporting the Application (may include/ exclude app layer | infrastructure | platform)
2.1 - Capture the boundaries of the technology environment
2.2 - Enumerate infrastructure | application | Software Components
2.3 - Identify libraries that support application/ application use cases
2.4 - Use of application frameworks
2.5 - Correlate security standards to conduct pre-emptive hardening based upon technology scope of threat model

3. Application Decomposition
3.1 - Correlate use cases (1.2) to application components
3.2 - Identify Actors and associated privileges that are in involved in application data flows
3.3 - Create DFD that includes data flows amongst application components, data stores, services, processes, APIs, 3rd party services, etc.
3.4 - Identify Trust Boundaries across application

4. Threat Analysis
4.1 - Leverage a threat library and correlate to business impacting use cases
4.2 - Develop an attack tree that has attack patterns affecting application components  
4.2.2 - Leverage an attack library like CAPEC to correlate common attack patterns to the application threat model
4.3 - Leverage threat intel from outside sources to substantiate prevalence of threats (e.g. - DFIR report, threat feeds, etc.)
4.4 - Leverage infrastructure, application, server log info that correlates to attack patterns support threat model

5. Vulnerability/ Weakness Identification
5.1 - Correlate scan (SAST, DAST, Vuln, etc) data to identify presence of weaknesses associated with application components
5.2 - Map Weaknesses to affected components and update attack tree component nodes with associated weaknesses
5.2.2 - Leverage CWEs to use a weakness library
5.3 - Identify Design Flaws in the Application Architecture (e.g. - poor key management, poor logging, implicit trusts, etc.)

6. Attack Modeling
6.1 Update attack tree to include Threat -> Component -> Weakness -> Attack Patterns
6.2 Review attack surface in consideration of threats with biggest impact to application objectives and use cases
6.3 Attack application use attack tree to measure viability/ probability of attack patterns to exploit identified weaknesses
6.3.1 - Validate attack tree with pen test

7. Residual Risk Analysis
7.1 - Review successful attack patterns and impact to application use cases and overall app objectives
7.2 - Identify high risk issues in the threat model based upon business impact, likehood of occurrence, and evidence of threat patterns 
7.3 - Prescribe countermeasures that can help reduce residual risk to acceptable risk levels. 
