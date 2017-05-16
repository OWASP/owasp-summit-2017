---
layout      : blocks/working-session
title       : Threat Modeling Templates
type        : workshop
track       : Threat Model
related-to  : Threat Modeling Cheat Sheets
description : OWASP Threat Modeling Templates will provide templates for addressing applications templates for which participants can leverage as starter kits for their respective threat modeling efforts.  The intent is to develop, maintain, and enhance a suite of templates that cover different application types, deployment models to which multiple MNCs across various industries can leverage within their respective AppSec groups.
status      : featured
organizers  : Tony UV
participants: Dinis Cruz,Jason Li, Avi Douglen
---

Templates will cover a broad range of types that include the following (ideally, 5 will be created by end of week). The below mentioned may also expand to include combinations of client side applications to expose server side applications (e.g. - mobile-web API, IoT-to web API, etc.).  Sample list of templates to develop inlude the following:
 - Traditional web applications
 - Web services
 - Mobile client applications 
 - IoT Devices
 - JS based Frameworks
 - Intra & Inter Cloud VPC Components
 
The Threat Modeling will initially begin with a suite of deliverables to help threat modeling practitioners consider a broad range of possible application components for each type of template, along with the associated actor that may be related to each component, associated trust boundaires amonst components, within and beyond the application domain, data flows, associated protocols, 3rd party dependencies, etc.  The intent is get practiioners to understand the following for each template that they download, leverage, and use as part of their threat modeling project:

    Implicit/ Explicit Trust boundaries within the attack surface and at the edge of the surface boundary
    Relevant system or application level actors and associated privileges making calls to other app components
    Possible inherent attack surface of a templated application 
    Inherent threats to consider for different deployment models (architecture)
    Proposed countermeasures to consider for each application threat modeling template.  
    Associated protocols associated with various templates
    Possible attack vectors that could realize threat motives from threat agent/ actor

### Context

Threat modeling still needs great adoption into current SDLC methodologies. Many development groups strive to apply threat modeling efforts under tight development windows.  The threat modeling templatess should give way to a formal project in order to maintain the content and update the templated threat models for each template in order to stay relevant to various threats.  The challenge addressed today is that teams need starting points for which they can apply to their own applications and these templates are intended to give them users a base level understanding of threats that should be considered and mitigated during design time.

### Potential outcome

 * DFD for each template type.  
 * Attack tree template
 * Threat library for each template developed
 * Design mitigations or programmatic countermeasures recommended for associated threat library for each template
 * Weakness library management and integration


### Participant candidates

 * Application Architects (for DFD creation, templating)
 * Web developers of varying language backgrounds (.NET, Java, PHP, *.js, etc.)
 * DBAs/ DB Developers
 * Security professionals w/ application architecture, software development experience


