---
layout       : blocks/working-session
title        : Owasp Orizon Reboot
type         : workshop
technology   : Java
status       : done
track        : Owasp Projects
owasp-project: yes
when-day     : Wed
when-time    : PM-2
location     : Room-3
organizers   : Paolo Perego
participants : Steven van der Baan
---

## Why

OWASP Orizon is a source code static analyser tool designed to spot security
issues in Java applications.

OWASP Orizon's mission is to provide people with an open source tool that helps them review the following:

- Single Java classes
- Java standalone tools packed in JAR files
- Web applications packed in EAR/WAR files
- Android APK applications

This Working Session will discuss how OWASP Orizon can best deliver on its mission for the future.

### The story of OWASP Orizon

On a dark and stormy night in Milan, Italy, in 2006, I realised I needed
something to help me review other people's Java source code. In this way OWASP
Orizon was born and evolved as a security tool to parse Java source code,
build an Abstract Syntax Tree, and spot unsafe calls in the code.

Initially, OWASP Orizon was a type of enhanced grep tool. In 2008, I
started supporting PHP programming language, but the initial boost disappeared.
I devoted my time to other programming languages and technologies for the next eight
years, until in 2017 I kickstarted the Orizon project again from scratch.

## What 

- What do SAST tools need to deliver?
- How will Orizon integrate with Dependency Checker and OWASP ZAP?
- Should Orizon only support J2EE, or should it also support Android?

## Outcomes

- There is the need of a SAST tool for Owasp. Kickstarting Orizon again is a
  good idea. Even if Paolo mispelled the name when he first created it (please
  read it like you would read _horizon_).
- A team of people interested in working on Orizon. We should copy the ZAP
  model, so we must keep the project alive, with regular updates so to get
  traction.
- Multiple programming languages support must be in place. However this should
  be a second project goals.
- We must find a good opensource class file parser.
- Orizon will act as 'grep++' tool in its first releases to make sure give
  people something to work with
- Orizon output will be a raw console stuff. Nice GUI eventually, would be
  added later on.

- September 2017 - the class file and (potentially) apk files would
  consumed by the tool.
- December 2017 - APK file should be supported
- January 2018 - some very basic pattern matching checks (like hardcoded
  credentials)
- March 2018 - focus on A1 Injection and A3 Cross site scripting support first

## Who

The target audience for this Working Session is:

- Security professionals
- Software developers
- Application architects
- DBAs/DB experts
- Web developers

## Links

- OWASP Orizon [page](https://www.owasp.org/index.php/Category:OWASP_Orizon_Project)
- GitHub repository: [here](https://github.com/thesp0nge/owasp-orizon)

--- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions):

<a href="https://github.com/thesp0nge/owasp-orizon">GitHub Project</a>

### Content

OWASP Orizon is a source code security scanner designed to spot vulnerabilities in J2EE web applications, Android code and generally speaking in Java written source code.

More information here: <a href="https://owasporizon.wordpress.com/">Owasp Orizon BLOG</a>

