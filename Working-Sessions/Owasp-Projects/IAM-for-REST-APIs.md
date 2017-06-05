---
layout       : blocks/working-session
title        : IAM for REST APIs
type         : workshop
track        : Owasp Projects
technology   : REST
status       : done
when-day     : Fri
when-time    : AM-1
location     : Room-3
organizers   : Johan Peeters
participants : Marc Rimbau,Dinis Cruz,Bjoern Kimminich, Robert Morschel
---

## Why

REST APIs are ubiquitous, yet there is a lack of solid insights into securing REST APIs. The OWASP cheat sheet is notably out of date, focusing on issues such as session management that reflect a past where REST services were merely a data layer for simple web applications. Contemporary REST APIs serve a multitude of consumers and cover a wide variety of profiles. The game has changed and we need to rethink the security measures we take to protect the APIs, consumers, and end users.

## What

- Which current authN and authZ standards make sense in the REST ecosystems? In which scenarios?
- Are there any tried-and-tested implementations of those standards?
- Are there any common vulnerabilities?
- Are there any implementation/integration guidelines?

### Candidate technologies to try out

- OAuth 2.0
- OpenID Connect
- Oz
- UMA
- JWT/JOSE
- HoK

## Definition of Done

- A new version of the REST Security Cheatsheet.
- One or more demonstrators.

## Who 

The target audience for this Working Session is:

- Back-end REST services developers
- SPA developers
- Mobile developers
- Authors of the REST security cheat sheet
