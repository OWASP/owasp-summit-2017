---
layout       : blocks/working-session
title        : Security Guidance and Feedback in IDE
type         : workshop
owasp-project: no
track        : DevSecOps
technology   : IDE,SAST
related-to   : Scaling Static Analysis Reviews and Deployments
status       : missing-Working materials
when-day     : Wed
when-time    : AM-1
location     : Room-1
participants :
organizers   :
invited      : Matias Madou
---

## Why

This Working Session will consider how the best location to provide security guidance and feedback to developers is its IDE (Integrated Development Environment).

## What

 - Review current state of security guidance and understand what works and what doesn't work
 - When should security guidance be provided to developers?
 - What is the best way to present this information?
 - How to use gamification techniques/workflows to create a positive and engaged environment
 - Who should write the guidance?
 - Create industry-wide guidance (avoid reinventing the wheel)
 
## Outcomes

This Working Session will create industry-wide security guidelines.

### Synopsis and Takeaways

**Specific and targeted** 
- Address noise within an IDE – specific and targeted live analysis of code to highlight specific areas requiring attention rather than flooding developers with a long list of errors that they will not be able to address; filtering option may be useful to streamline the process of identifying security errors.

**Accuracy** 
- Feedback on vulnerabilities needs to be accurate, in particular, if it’s a general security issue, but there may be exceptions to these rules.
- Think carefully about-when and where to highlight these exceptions to maintain the credibility of the tool.

**Gamification**
- Developers are competitive and want to maximise achievement.  Introducing a scoring system may be a good way to do this; e.g., scoring unit test coverage on how it addresses security errors. 

**Low resource consumption**
- Many IDEs can be resource-intensive and development may involve virtualisation technologies that are also resource-intensive so whatever is added to the IDE ought not add to that load.

**Dependency Scanning**
- Don’t just think about the code the developers are writing, think about code being included from third party libraries or dependencies., e.g., CVE scanners.


## Who

The target audience for this Working Session is:

 - Developers
 - IDE developers
 - AppSec professionals
 - Tool makers
 
 --- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)

### Content

...add content...
