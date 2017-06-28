---
layout       : blocks/working-session
title        : Define Agile Security Practices
type         : workshop
owasp-project: no
track        : Agile AppSec
technology   :
related-to   : Integrating Security into an Spotify Model
status       : done
when-day     : Tue
when-time    : AM-1
location     : Room-3
room-layout  : cabaret
organizers   : Irene Michlin
participants : Irene Michlin, Robert Morschel, Mamta Vuppu, Tiffany Long, Don Gibson, Christian Martorella
---

## Why

The idea of using Agile in Security Practices/Activities is one that makes a lot of sense but what does it mean?

This Working Session will aim to define those practices in easy-to-use and scalable formats and documentation.

## What

 - What are 'Agile Security Practices'?
 - How can they be measured?
 - Who uses Agile in Security activities? (and are they called 'Agile Security Practices'?)
 - Can a focused and pragmatic list of 'Agile Security Practices' be defined? If so, what is on the list?
 
## Outcomes

- Agreed definition and list of 'Agile Security Practices'

### Synopsis and Takeaways

First of all, the participants redefined the session goals to discuss security practices for agile development teams, rather than agile practices for security teams.
 
We noted the following point on the original scope:
 
Security team should be a friend that provides help and resources to the development teams, rather than source of work, blame, and stress.
 
Moving on to the new scope:
 
Discussion
- The term agile can hide a multitude of sins
- Security ought to be yet another software quality aspect, but isn't, for historical reasons
- Agile teams should own their process and organisation
- Agile teams already responsible for non-functional aspects
- Developers want to build good software
- Cultural: need to get security requirements in at the business requirements level
- Need security stories 
- Microsoft have documented a secure agile process, but quite old, and not pure agile ("bucket", "once in a while")
- Tie security activities to team’s definition of done
- JIRA flag - "security flag"
- Regarding bucket - each iteration, team could take an item off the bucket list
- However, need to have all the security before the first release
- Five stages of security - the solution is acceptance . :)
- Code review evidence (but can be informal)
- Anti-pattern: security tools running on mainline branch but code developed on feature branches - solutions: feature toggle, or branch by abstraction (Fowler)
- Management like automated security tools, because it provides metrics, but developers aren't given time to get to grips with it
- Automated tools without tuning is pointless
- Secure code is quality code
- Fuzzers to inject bad input into code
- Deployment environment needs to be secure
- Testing of security features vs. secure feature - focus on security features first
- Effort is a consideration
- Protection poker 
- Misuse cases
- RASP - Runtime Application Self Protection
- WAF to spot hacks, supported by hack-aware applications
- Is there any point overloading a team with security bugs when it already has a large pre-existing bugs backlog? Quality problems can undermine security. Teams need quality definition to include security.
 
List
- Assumes agile is being done "in the right spirit"
- Definition of done to include security
- Acceptance criteria
- "Security flag"
- Integrate bucket list into backlog
- Automation, and capture of evidence 
- Checklists? or Scorecards, e.g. of risks (since not binary), but to be used at different times
- Small and frequent commits
- Recognise that "automated" tools have a learning curve
- Agile teams need quick feedback on incremental or targeted changes
- IDE integration providing quick feedback and training 
- People want to do the right thing.  Security people need enable teams to do this
- Environments need to be secure
- Analyse risk in planning and prioritise efforts
- Iterative and incremental threat modeling 
- Unified records (don’t keep security bugs in a separate tracker)
- Empowered teams
- Dashboard for visibility to senior stakeholders
- Risk ownership - management to support security activities
- Problem: security tends to be non-functional.  Agile prefers functional stories
- Evil user stories
- Incorporate security incidents into training
- Make security relevant through information radiators
- Build links with other parts of the organisation that do security: SOC, Infra and other dev teams
- Build applications that are security incident aware and response friendly 
- Have an easy automated way to connect version/build number to the changelists that went into that build (ideally also each changelist to feature/story)
- Self-defending apps
- ASR
- Existing quality problems can undermine security
- Pre-defined quality criteria ("bug bar")
- Security team as source of help
- Guidelines on compliance, GDPR etc to be provided by legal/compliance via security team, in a form that can be consumed by developers.
- CD/CI to automatically check : gated releases
- Metrics
               - Risks
               - Coverage by security tests
               - Mean time between security incidents

## Who

The target audience for this Working Session is:

- Security professionals
- CISOs
- Agile practitioners
- DevSecOps
- SecDevOps

--- 

# Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)

### Content

- Draft definition of 'Agile Security Practices'
- Draft list of 'Agile Security Practices'
