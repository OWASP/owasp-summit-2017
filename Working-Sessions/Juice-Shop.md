---
layout: blocks/working-session
title: Juice Shop
type: workshop
track: project-summit
organizers: Bjoern Kimminich
technology: Node
status: done
---

Organizer(s): [Bjoern Kimminich](../Participants/Bjoern-Kimminich.html)

> [OWASP Juice Shop Project](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project "OWASP Juice Shop Project")
> is an intentionally insecure webapp for security trainings written
> entirely in Javascript which encompasses the entire OWASP Top Ten and
> other severe security flaws. Juice Shop is written in Node.js, Express
> and AngularJS. The application contains more than 30 challenges of
> varying difficulty where the user is supposed to exploit the
> underlying vulnerabilities. Apart from the hacker and awareness
> training use case, pentesting proxies or security scanners can use
> Juice Shop as a "guinea pig"-application to check how well their tools
> cope with Javascript-heavy application frontends and REST APIs.

### Context

Ideas for potential new hacking challenges are currently collected in
the
[Challenge Pack 2017](https://github.com/bkimminich/juice-shop/milestone/3)
milestone on GitHub. In this working session we will gather ideas for,
design and implement a whole bunch of these (and hopefully also entirely
new) challenges and bundle them in the _OWASP Summit Challenge Pack
2017_ for production release at the final day of the summit!

#### Potential outcome

* Several new challenges for OWASP Juice Shop
* Functional enhancements to place the challenges in, e.g. the
  [Order Dashboard](https://github.com/bkimminich/juice-shop/issues/244)
  and
  [Pomace Recycling user stories](https://github.com/bkimminich/juice-shop/issues/243)
* Hint and solution sections for each new challenge are added to the
  "Pwning OWASP Juice Shop" ebook

To keep the high release stability and overall quality of OWASP Juice
Shop
[the contribution rules of the project](https://github.com/bkimminich/juice-shop/blob/master/CONTRIBUTING.md)
apply for the summit results as well:

* Each challenge comes with full functional unit and integration tests
* Each challenge is verified to be exploitable by corresponding
  end-to-end tests
* Code follows existing styleguides and passes all existing quality
  gates regarding code smells, test coverage etc.

### Participant candidates

* Javascript developers (Node.js knowhow would be great but is _not
  mandatory_)
* Web developers (Angular 1.x knowhow would be great but is _not
  mandatory_)
* Web designers (the vulnerable features will _at least look good_)
* Security professionals
