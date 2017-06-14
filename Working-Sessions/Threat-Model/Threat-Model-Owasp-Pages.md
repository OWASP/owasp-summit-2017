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

#### Synapse/Takeaways
This session was very productive. The group discussed how to improve the OWASP Threat Modelling pages. Specifically, defining the what, why, Who, When and how of Threat Modelling for development and security Roles. The session was split into 3 groups (Software, Risk, security Centric approaches).

##### What/Why
-Define Threat Modelling
-Benefits 

##### Who?
-Developers
-CISO
-Architects
-Penetration Testing 
-New Talent
-Managers

##### When/Typical Scenarios
-SDLC (Development Process) – Agile (Scrum)
-Architectural Reviews (Vendor Risk)
-Pre-Pen Testing (Different Stages)
-Procurement (Quickly)

#### How/Approach
-Software Centric
-Risk Centric
-Security Centric 
The Group output is shown below:

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

### Risk Centric Approach (Process for Attack Simulation Threat Analysis - PASTA)
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