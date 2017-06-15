---
layout       : blocks/working-session
title        : Threat Modeling Tools
type         : workshop
owasp-project: no
track        : Threat Model
technology   :
related-to   :
status       : done
when-day     : Mon
when-time    : PM-2
location     : Room-6
room-layout  : cabaret
organizers   :
participants : Geoff Hill, Irene Michlin, Stephen de Vries, Johan Peeters, Duncan Hurwood, Viktor Lindstrom, Christian Martorella, Don Gibson, Mateo Martinez, Steven van der Baan
---

This session is a discovery session on what threat modelling tools exist currently and what their benefits and weaknesses are.

## Why

A good overview of the number of threat modelling tools available will enable more effective modelling.

## What

- What do we want from our threat modelling tools?
- What complexity do we want?
   - What information should be included in the threat model?
- What kind of integration do we want with other systems?

## Outcomes

### Synopsis and Takeaways

Leading from the previous session (where the week’s aims have been defined) this session looked at the tools used in helping research threat models in-depth.
Tools in this session have been identified as key candidates for further research. These are better than Excel, Visio or a text editor in a manual process:
-	My app security
-	Threat dragon – OWASP
-	Threat spec
-	SD Elements
Based on predefined templates (risk patterns), they model architecture that currently exists and are used regularly. 
These tools need to be used modularly during threat modelling with common data points. 
The outcome is targeted at pen testers or developers. Work should not follow a check-box type of implementation. Scalability has been raised as a concern.
A dynamic list is better than a top ten list because threats can be added and update readily 
Attack trees require a lot of work to function at a high level and are slow to perform. However, these can be used for a completeness check. The Idea is to focus attack trees on a certain area of interest.
We need to 
-	Develop a tool to produce evidence-based outputs so big data will not be a problem. 
-	Increase awareness and accountability for developers who don’t understand the data flow or how the application stack works
-	Develop a help guide for developers with security unit tests in mind  
-	Help with automation on the developer’s side with input from security personal.

**Outcomes**

Defined the approach used and what is threat modelling used for
Users were surveyed on Threat modelling approaches and tool desirables.  
Defined the must haves for threat modelling tools
-	DFD
   o	Be able to upload the DFD
-	Attack trees
   o	Ability to support attack trees
-	Threat mapping
   o	Building threat data that could be harvest from fallen companies/recent attacks
-	Component mapping/identification 
   o	Importing of existing libraries 
   o	Have a standard library 
   o	Identify components from application scans 
-	Inclusions of frameworks 	
-	Access control for threat modelling tool	
-	Supports a universal data schema 

## Who

The target audience for this Working Session is:

* Architects
* Security SMEs
* SCRUM masters
* Security champions

## References

- [Microsoft Threat Modeling Tool 2016](https://www.microsoft.com/en-us/download/details.aspx?id=49168)
- [What’s New with Microsoft Threat Modeling Tool  Preview](https://blogs.msdn.microsoft.com/secdevblog/2017/04/21/whats-new-with-microsoft-threat-modeling-tool-preview/)
- [SeaSponge: An open sourced and client-side HTML5 Threat Modelling Tool](https://mozilla.github.io/seasponge/)
- [SeaSponge: github](https://github.com/mozilla/seasponge)
- [ContinuumSecurity IriusRisk](https://www.continuumsecurity.net/threat-modeling-tool/)

--- 

## Working materials

Here are the current 'work in progress' materials for this session 

(please add as much information as possible before the sessions)

### Content

- Current Threat Modeling Tools
- Next Generation Threat Modeling Tools requirements
- Business Requirements
