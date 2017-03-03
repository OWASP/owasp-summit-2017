---
layout: event-point/workshop
title: O-Saft
type: workshop
track: TBD
organizers: Achim Hoffmann
---

## O-Saft

[OWASP - SSL advanced forensic tool](https://www.owasp.org/index.php/O-Saft) is an easy to use tool to check various SSL/TLS related konfigurations, behaviours and vulnerabilities.
It's a standalone tool and can be used in closed and very restricted environments.


### Objective

Currently the tool is developped and maintained by a very small team. It's just enough time to keep the check up-to-date according new vulnerabilities and such.
The tool needs some internal redesign and some improvements to bring the full power to it's users.

### Ideas / Roadmap

- improve checking of certificates
- implement state-of-the-art checking of OCSP
- improve checking of DH parameters and EC parameters
- write prostprocessors for formatting the output; a lot of code is already there, it needs to be extracted in new tools
- implement fuzzing features using TLS-attacker
- build a test suite, run automated tests
- build a sophisticated knowledge database with search capabilities (probably using python NLTK)
