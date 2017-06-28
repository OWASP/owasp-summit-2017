---
layout       : blocks/working-session
title        : Playbooks Common Format
type         : workshop
track        : Security Playbooks
technology   :
related-to   : Threat Modeling Diagramming Techniques
status       : need-working materials
when-day     : Mon
when-time    : PM-1
location     : Room-5
organizers   : Jason Li
participants : Jonas Vanalderweireldt,Tiffany Long, Steven Wierckx
outcomes     : mapped
---

## Why

To collaborate effectively and agree on a common format for the playbooks, we should clearly define what we want the playbooks to look like, what format to submit the data in, and what the result will be.

Isn't it better to consolidate the actions of the SecOps Team, AppSec Team, and SOC into Playbooks (i.e. workflows on how to act/behave)?

The Cisco security blog describes a Playbook in the following way:

> "... To be clear, the Playbook is for organizing and documenting security monitoring. It isn’t an incident response handbook or a policy document or any other type of security document or handbook. The Playbook may reference things like the Incident Response Handbook or Acceptable Use Policy, but it isn’t a replacement for these...."

(see [Using a “Playbook” Model to Organize Your Information Security Monitoring Strategy](http://blogs.cisco.com/security/using-a-playbook-model-to-organize-your-information-security-monitoring-strategy) )

This should be based on git/GitHub, and should consider the numerous tools that are currently in use.

It is also important to assess the code/scripts that support the automation of these Playbooks.

The Working Session will explore these issues to prepare for the various Playbook Working Sessions with the aim of agreeing on a definition and common format of a Playbook.

## What

 - Review current formats
 - Define common playbook format
 - Create plan for how it will be used on the Playbook Working Sessions
 - Clarify concepts
 - Agree on definition of Playbook

## Outcomes

- Template for playbooks
- Plan for how template will be used in the Playbook Working Sessions.
- Agreed definition of Playbook

## Who

The target audience for this Working Session is:

 - 'Security Playbooks' Track organisers and participants
 -  Security teams

---

## Working Session Outcomes

### Attendees
* Ante Gulam
* Dinis Cruz
* Jason Li
* Matthew Gough
* Colin Rouse
* Alexander Antukh
* Felipe Zipitria

### Summary

#### Introduction and Purpose

The goal of an *OWASP Playbook* is to provide an actionable, consistent process for getting started with various application security scenarios. Most security playbooks are intended to address what to do when something happens to you (e.g., respond to an incident), but an *OWASP Playbook* is intended to address what to do when you want to do something (e.g., have an application pen tested). Throughout the OWASP Summit (and hopefully into the future), playbooks will be created to address various scenarios. To that end, the Playbook Common Format working session group wanted to establish a foundation for how to approach creating an *OWASP Playbook*.

#### Executive Summary

The Playbook Common Format working session group reviewed a template worksheet designed to help other Playbook working sessions structure their thinking. We define a process we recommend other Playbook working groups follow to get started. We then define six general categories of content that should be included in an *OWASP Playbook* so that readers of the series know what to expect when using it. We hope that other Playbook working sessions (as well as future Playbook authors) find this information useful.

#### Playbook Working Session process

In order to have an effective working session that generates meaningful and collaborative content, we recommend the following process for Summit working sessions:
1. Explain the *OWASP Playbook* concept to participants.
2. Collaboratively define the scope of the session including defining the scenario(s), audience(s), and characteristics. Time is limited so we suggest narrowly defining the scope of an initial scenario so that the playbook can be as actionable as possible.
3. Ensure that there are no playbooks that are already in existence and would be more suited to the scenario(s). Redefine the target scenario(s) if appropriate.
4. Distribute the *OWASP Playbook Working Session Worksheet* to the participants and ask them to draft an initial set of process steps for the topic in question to structure and capture their thoughts.
5. Ask participants to share their worksheet with the group
6. Identify and distill the common threads of the process and document them in a process workflow diagram.
7. With the process defined, break into five smaller groups and assign each group to discuss the remaining content items (prerequisites, cost benefit analysis, quick wins, success criteria & metrics, and improvement opportunities) given the perspective of the agreed upon process.

#### Playbook Content

##### Domain & Scope
What does an *OWASP Playbook* provide to the reader? This content defines the domain (e.g., bug bounty, pen test) and clearly communicates the scenario ("the something") to which the playbook applies. Any particular domain can have multiple scenarios, but each scenario should be encapsulated in separate playbook as *OWASP Playbooks* are intended to be actionable. There are many perspectives by which scenarios can be viewed - for example:
* Audience
 * The entity wanting "something" to be done
 * The entity that executes the "something"
 * The entity that uses the result of the "something"
* Timing
 * Proactive (doing "something" because of a choice)
 * Reactive (doing "something" because of an event)

##### Prerequisites
What are the things the reader must already have in place for "the something" in question? These could be organizational funding or processes, technical requirements, etc. The intent of this content is to help the reader decide whether or not they are ready for "the something". An *OWASP Playbook* should enumerate the things needed for "the something".

##### Cost Benefit Analysis
Should the reader even consider "the something"? Generally speaking, this content is geared toward the entity that wanting "the something" to be done. Even though they have chosen to do "the something", it may not actually be a prudent action. Perhaps the action is too costly or does not provide the desired outcome. As a result, the entity should perform some type of cost benefit analysis. The intent of this content is to help the reader determine whether or not "the something" is an appropriate action. An *OWASP Playbook* should provide guidance on various criteria to help the reader measure both the cost of "the something" and the benefit of the outcome for "the something".

##### The Process
How should the reader go about "the something"? The process steps needed should provide a concrete detailed action plan for the reader. Note that process steps are unique to a scenario and audience The intent of this content is to give the reader enough information to make "the something" happen. For the entity that wants "the something" done, it might be process steps to engaging a service provider (internal or external). For the entity that executes "the something", it might be the process steps to perform "the something". For the entity that needs to use the result of "the something", it might be the process steps for interpreting "the something". An *OWASP Playbook* should provide the necessary steps for the reader to achieve their desired outcome for "the something".

##### Quick Wins
What if the reader can't do everything in the process? Perhaps there's a limit on time, budget, or some other resource. The intent of this content is to give the reader a short list of high value, low effort actions that can be taken in order to improve the situation. It may be a prioritized set of the overall process steps or it could be weaker alternatives to the process. The goal is to provide some "quick wins" related to "the something" that the reader can enact. An *OWASP Playbook* should provide a short list of high value, low effort "quick wins" for the reader.

##### Success Criteria & Metrics
How does the reader know they've achieved success? Success could simply be completion of the process. More likely, there are some metrics that can be used to determine that the process was done "well". The intent of this content is to give the reader suggested criteria and metrics to determine that the outcome of "the something" was a success. An *OWASP Playbook* should provide suggested metrics and criteria in order to determine that the process was executed well.

##### Improvement Opportunities
What can the reader do next? Perhaps the entity is interested in scaling or automating "the something". Or maybe they'd like to improve their maturity on the security scale. The intent of this content is to give the reader more information about next steps. An *OWASP Playbook* should provide suggested improvement for both "the something" and for other "related somethings" that the reader should consider.
