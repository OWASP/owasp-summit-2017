---
layout      : blocks/working-session
title       : Juice Shop
type        : workshop
track       : Project Summit
technology  : Node
description : OWASP Juice Shop Project is an intentionally insecure webapp for security training written entirely in Javascript which encompasses the entire OWASP Top Ten and other severe security flaws.
status      : featured
organizers  : Bjoern Kimminich
participants: Dinis Cruz, Ingo Hanke
---

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

![Juice Shop logo](https://github.com/bkimminich/juice-shop/raw/master/app/public/images/JuiceShop_Logo_50px.png)

We will also look into planned functional enhancements of the
[Juice Shop CTF-extension](https://www.npmjs.com/package/juice-shop-ctf-cli)
and its improved integration with [CTFd](https://ctfd.io/). Ideas for
the CTF-extension are currently gathered as
[_enhancement_-issues on GitHub](https://github.com/bkimminich/juice-shop-ctf/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement).

![Juice Shop CTF logo](https://github.com/bkimminich/juice-shop-ctf/raw/master/images/JuiceShopCTF_Logo_100px.png)

#### Potential outcome

* Several new challenges for OWASP Juice Shop
* Functional enhancements to place the challenges in, e.g. the
  [Order Dashboard](https://github.com/bkimminich/juice-shop/issues/244)
  and
  [Pomace Recycling user stories](https://github.com/bkimminich/juice-shop/issues/243)
* Hint and solution sections for each new challenge are added to the
  "Pwning OWASP Juice Shop" ebook
* Functional and convenience improvements to the Juice Shop
  CTF-extension
* [Updated project roadmap](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project#tab=Road_Map_and_Getting_Involved)
  for OWASP Juice Shop and its CTF-extension

To keep the high release stability and overall quality of OWASP Juice
Shop
[the contribution rules of the project](https://github.com/bkimminich/juice-shop/blob/master/CONTRIBUTING.md)
apply for the summit results as well:

* Code follows existing styleguides and passes all existing quality
  gates regarding code smells, test coverage etc.
* Each challenge comes with full functional unit and integration tests
* Each challenge is verified to be exploitable by corresponding
  end-to-end tests

### Participant candidates

* Javascript developers (Node.js knowhow would be great but is _not
  mandatory_)
* Web developers (Angular 1.x knowhow would be great but is _not
  mandatory_)
* Web designers (the vulnerable features will _at least look good_)
* CTFd project team and contributors
* Security professionals
