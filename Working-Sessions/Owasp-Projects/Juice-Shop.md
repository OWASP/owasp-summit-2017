---
layout       : blocks/working-session
title        : Juice Shop
type         : workshop
track        : Owasp Projects
technology   : Node
description  : OWASP Juice Shop Project is an intentionally insecure webapp for security training written entirely in Javascript which encompasses the entire OWASP Top Ten and other severe security flaws.
status       : Final stage
organizers   : Bjoern Kimminich
when-day     : Mon
when-time    : PM-3
location     : Room-3
participants : Dinis Cruz,Ingo Hanke,Ade Yoseman Putra,Timo Pagel, Francois Raynaud
invited      : Josh Grossman
---

## Why

> [OWASP Juice Shop Project](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project "OWASP Juice Shop Project")
> is an intentionally insecure webapp for security training written
> entirely in JavaScript and which encompasses the entire OWASP Top Ten and
> other severe security flaws. Juice Shop is written in Node.js, Express,
> and AngularJS. The application contains more than 30 challenges of
> varying difficulty where the user should exploit the
> underlying vulnerabilities. Apart from being useful for hacker and awareness
> training, pentesting proxies or security scanners can also use
> Juice Shop as a "guinea pig" application to check how well their tools
> cope with JavaScript-heavy application frontends and REST APIs.

## What

Ideas for potential new hacking challenges are currently collected in
the
[Challenge Pack 2017](https://github.com/bkimminich/juice-shop/milestone/3)
milestone on GitHub. In this working session we will gather,
design, and implement many of the existing, and hopefully several entirely
new, challenges that we will bundle in the _OWASP Summit Challenge Pack
2017_ for production release on the final day of the summit.

![Juice Shop logo](https://github.com/bkimminich/juice-shop/raw/master/app/public/images/JuiceShop_Logo_100px.png)

We will also consider planned functional enhancements of the
[Juice Shop CTF-extension](https://www.npmjs.com/package/juice-shop-ctf-cli)
and its improved integration with [CTFd](https://ctfd.io/). Ideas for
the CTF-extension are currently gathered as
[_enhancement_-issues on GitHub](https://github.com/bkimminich/juice-shop-ctf/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement).

![Juice Shop CTF logo](https://github.com/bkimminich/juice-shop-ctf/raw/master/images/JuiceShopCTF_Logo_100px.png)

## Outcomes

This working session will gather, discuss, design, and implement the following:

- Several new challenges for OWASP Juice Shop
- Functional enhancements to place the challenges in, e.g. the
  [Order Dashboard](https://github.com/bkimminich/juice-shop/issues/244)
  and
  [Pomace Recycling user stories](https://github.com/bkimminich/juice-shop/issues/243)
- Hint and solution sections for each new challenge are added to the
  "Pwning OWASP Juice Shop" e-book
- Functional and convenience improvements to the Juice Shop
  CTF-extension
- [Updated project roadmap](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project#tab=Road_Map_and_Getting_Involved)
  for OWASP Juice Shop and its CTF-extension

To keep the high release stability and overall quality of OWASP Juice Shop
[the contribution rules of the project](https://github.com/bkimminich/juice-shop/blob/master/CONTRIBUTING.md)
apply for the summit results as well:

- Code follows existing style guides and passes all existing quality
  gates regarding code smells, test coverage etc.
- Each challenge comes with fully functional unit and integration tests
- Each challenge is verified to be exploitable by corresponding
  end-to-end tests

## Who

The target audience for this Working Session is:

- JavaScript developers (Knowledge of Node.js would be great but is _not
  mandatory_)
- Web developers (Knowledge of Angular 1.x would be great but is _not
  mandatory_)
- Web designers (the vulnerable features will _at least look good_)
- CTFd project team and contributors
- Security professionals

--- 

## Working materials

- [Project Roadmap](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project#tab=Road_Map_and_Getting_Involved)
- GitHub issues in [OWASP Summit 2017 Challenge Pack](https://github.com/bkimminich/juice-shop/milestone/3)
- [_Enhancement_-issues on GitHub](https://github.com/bkimminich/juice-shop-ctf/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement) for Juice Shop CTF-Extension

### Content

...add content...
