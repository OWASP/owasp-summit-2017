---
layout: event-point/workshop
title: Juice Shop
type: workshop
track: project-summit
organizers: Bjoern Kimminich
---

## Juice Shop

Organizer(s): [Bjoern Kimminich](../Participants/Bjoern-Kimminich.html)


> [OWASP Juice Shop Project](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project "OWASP Juice Shop Project") is an intentionally insecure webapp for security trainings written entirely in Javascript which encompasses the entire OWASP Top Ten and other severe security flaws. Juice Shop is written in Node.js, Express and AngularJS. The application contains more than 30 challenges of varying difficulty where the user is supposed to exploit the underlying vulnerabilities. Apart from the hacker and awareness training use case, pentesting proxies or security scanners can use Juice Shop as a "guinea pig"-application to check how well their tools cope with Javascript-heavy application frontends and REST APIs.

### Challenge Hackathon

Ideas for potential new hacking challenges are collected in [GitHub issues labeled "challenge"](https://github.com/bkimminich/juice-shop/issues?q=is%3Aissue+is%3Aopen+label%3Achallenge). In this working session we will gather ideas, design and implement a whole bunch of challenges one by one or in parallel and bundle them in the _OWASP Summit 2017 Challenge Pack_ for release at the final day of the summit.

#### Expected Outcome

* Several new challenges for OWASP Juice Shop
* Each challenge comes with full functional unit and integration tests
* Each challenge is verified to be exploitable by corresponding end-to-end tests
* Functional enhancements to place the challenges in, e.g. the [Order Dashboard](https://github.com/bkimminich/juice-shop/issues/244) and [Pomace Recycling user stories](https://github.com/bkimminich/juice-shop/issues/243)
* Code follows existing styleguides and passes all existing quality gates regarding code smells, test coverage etc.
* Hint and solution sections for each new challenge are added to the "Pwning OWASP Juice Shop" ebook

#### Prerequisites for Participants

* Javascript programming experience (basic level is totally sufficient)
* Experience with (or willingness to quickly learn) AngularJS (1.x) and NodeJS/Express
* Security background is nice (but entirely optional)
