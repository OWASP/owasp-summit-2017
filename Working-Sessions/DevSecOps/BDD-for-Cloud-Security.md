---
layout       : blocks/working-session
title        : BDD for Cloud Security
type         : workshop
owasp-project: no
track        : DevSecOps
technology   :
related-to   :
status       : done
when-day     : Tue
when-time    : AM-1
location     : Room-5
room-layout  : square
organizers   : Fraser Scott
participants : Neil Barlow,Dicky Stafford,Francois Raynaud,Stephen de Vries,Johan Peeters, Christian Martorella
---

## Why

Developers, and operations and security teams need to collaborate on building and verifying that cloud architectures meet requirements for security.  This Working Session will consider how Behaviour Driven Development (BDD) may be a useful tool to both specify and then verify that the appropriate security controls are in place.   

## What

- Identify core security requirements for all cloud deployments, regardless of specific cloud technology
- Write BDD specifications for those requirements (no implementation code, just specs)
- Find existing tools/solutions that can be used as base implementations, e.g. Netflix's Security Monkey? NCC Group AWS auditor?
- Link specs to standards (CSA, NIST, etc.)?
- Understand whether the standard BDD story language of In order to/As a/I want and Given/When/Then maps appropriately to infrastructure and Cloud stories, and if not then define a model that fits better.
- Understand BDD features from an auditor perspective - is a feature file just as good as an Office document?

## Outcomes

This Working Session will publish BDD specifications for those requirements (no implementation code, just specs), and will link the specs to CSA, NIST, and other standards.

### Synopsis and Takeaways

- Communication is vital for BDD so providing a template for BDD and Cloud Security BDD is important 
- References to existing BDD stories and solutions for non-cloud security e.g. BDD-Security
- Provide an overview of the advantages that BDD has for security e.g. Example stories.
- Example Story: Scenario - There is at least one non-root admin user in the account - Story - WHEN we enumerate the user accounts THEN there should be at least one non-root admin  account. 

## Who

The target audience for this Working Session is:

- Cloud Security architects
- Security teams
- Cloud Ops

--- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)

