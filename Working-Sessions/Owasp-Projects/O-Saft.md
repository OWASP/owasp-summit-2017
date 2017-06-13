---
layout       : blocks/working-session
title        : O-Saft
type         : workshop
track        : Owasp Projects
organizers   : Achim Hoffmann
technology   : TLS
owasp-project: yes
status       : done
when-day     : Tue
when-time    : PM-1
location     : Room-1
organizers   : Achim Hoffmann
participants : Ingo Hanke
---

[OWASP - SSL advanced forensic tool](https://www.owasp.org/index.php/O-Saft) is an easy to use tool to check various SSL/TLS related configurations, behaviours and vulnerabilities.
It's a standalone tool and can be used in closed and very restricted environments.

## Why

Currently the tool is developed and maintained by a very small team. There is just enough time to keep the check up-to-date, accommodating new vulnerabilities, behaviours, etc.

The Working Session will focus on the internal redesign and some improvements the tool needs to bring full power to its users.

## What

- Improve checking of certificates
- Implement state-of-the-art checking of OCSP
- Improve checking of DH parameters and EC parameters
- Write post processors for formatting the output; a lot of code is already there, it needs to be extracted in new tools
- Implement fuzzing features using TLS-attacker
- Build a test suite, run automated tests
- Build a sophisticated knowledge database with search capabilities (probably using Python NLTK)
- Is there a need for a GTK-based GUI (i.e. using YAD)?

## Outcomes

- Updated and more efficient O-Saft
- Improved tools
- New knowledge base

## Who

The target audience for this Working Session is:

- contributors to the tool
- users in general and users having special requirements

## Working materials

There is a [docs](https://github.com/OWASP/O-Saft/tree/master/docs) directory with [documentation for developers](https://github.com/OWASP/O-Saft/) at github.

Draft for all the topics to be discused and worked on during the session in [google docs](https://docs.google.com/a/owasp.org/document/d/1He_hXRegxOYSqzgIT1jc50sTxATe6Tv4CoghnpI6R_4/edit?usp=sharing).

### Content

See "Working materials" above.

---

Create a [slack team](https://o-saft.slack.com/), feel free to join the O-Saft team with your @owasp.org address (unfortunately slack is toooo stupid to accept @gmail.com addresses).

