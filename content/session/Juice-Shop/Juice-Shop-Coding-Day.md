---
title        : Juice Shop Coding Day
type         : workshop
track        : Juice Shop
technology   : Node
description  : Hands-on coding session series to implement new challenges and other features in OWASP Juice Shop and its CTF-extension project.
status       : done
organizers   : Bjoern Kimminich, Timo Pagel
when-day     : Wed
when-time    : AM-1,PM-1,PM-2
location     : Villa-5
room-layout  : cabaret
participants :
invited      : Ade Yoseman Putra, Amani Altarawneh, Francois Raynaud, Ingo Hanke, Madhu Akula, Stefano Di Paola, Tiago Mendo, Victor Vidigal Ribeiro, Viktor Lindstrom
cant-make-it : Dinis Cruz
outcomes     : mapped
---

## Why

> [OWASP Juice Shop Project](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project "OWASP Juice Shop Project")
> is an intentionally insecure webapp for security training written
> entirely in JavaScript and which encompasses the entire OWASP Top Ten
> and other severe security flaws. Juice Shop is written in Node.js,
> Express, and AngularJS. The application contains more than 30
> challenges of varying difficulty where the user should exploit the
> underlying vulnerabilities. Apart from being useful for hacker and
> awareness training, pentesting proxies or security scanners can also
> use Juice Shop as a "guinea pig" application to check how well their
> tools cope with JavaScript-heavy application frontends and REST APIs.

![Collabocats](https://octodex.github.com/images/collabocats.jpg)

## What

☀-hands-on coding session series to implement the
[OWASP Summit 2017 Challenge Pack](https://github.com/bkimminich/juice-shop/milestone/3)
and other functional enhancements to the web application & CTF-extension
identified in the [Juice Shop](Juice-Shop-Brainstorming.md) session!

![Juice Shop logo](https://github.com/bkimminich/juice-shop/raw/master/app/public/images/JuiceShop_Logo_100px.png)

## Outcomes

This working session will implement the following:

- Several new challenges for OWASP Juice Shop
- Functional enhancements to place the challenges in, e.g. the
  [Order Dashboard](https://github.com/bkimminich/juice-shop/issues/244)
  and
  [~~Pomace Recycling~~](https://github.com/bkimminich/juice-shop/issues/243)(_done!_)
- Hint and solution sections for each new challenge are added to the
  [Pwning OWASP Juice Shop](https://www.gitbook.com/book/bkimminich/pwning-owasp-juice-shop/details)
  e-book
- Functional and convenience improvements to the Juice Shop
  CTF-extension

To keep the high release stability and overall quality of OWASP Juice
Shop
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
- Hint/solution/documentation editors (Basic Markdown knowledge would be
  nice but is _not mandatory_)

### Remote Participants

This working session is pariculartly well-suited for remote
participants. All you have to do is let the on-site participants know
which challenges or feature you want to work on in order to avoid
duplicate work! Then it's up to you:

> **Fork, clone, code, submit PRs!**

All that in your own speed and schedule!

---

## Working materials

- GitHub issues in
  [OWASP Summit 2017 Challenge Pack](https://github.com/bkimminich/juice-shop/milestone/3)
- [_Enhancement_-issues on GitHub](https://github.com/bkimminich/juice-shop-ctf/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement)
  for Juice Shop CTF-Extension
- OWASP Juice Shop
  [Contribution Guidelines](https://github.com/bkimminich/juice-shop/blob/master/CONTRIBUTING.md)

[![JavaScript Style Guide](https://cdn.rawgit.com/feross/standard/master/badge.svg)](https://github.com/feross/standard)

| Juice Shop                                                                                                                                                                   | CTF-Extension                                                                                                                                                                   |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  [![Build Status](https://travis-ci.org/bkimminich/juice-shop.svg?branch=develop)](https://travis-ci.org/bkimminich/juice-shop)                                               |  [![Build Status](https://travis-ci.org/bkimminich/juice-shop-ctf.svg?branch=develop)](https://travis-ci.org/bkimminich/juice-shop-ctf)                                          |
|  [![Build status](https://ci.appveyor.com/api/projects/status/903c6mnns4t7p6fa/branch/develop?svg=true)](https://ci.appveyor.com/project/bkimminich/juice-shop/branch/master) |  [![Coverage Status](https://coveralls.io/repos/github/bkimminich/juice-shop-ctf/badge.svg?branch=master)](https://coveralls.io/github/bkimminich/juice-shop-ctf?branch=develop) |
|  [![Ready Stories](https://badge.waffle.io/bkimminich/juice-shop.svg?label=ready&title=Ready)](https://waffle.io/bkimminich/juice-shop)                                       |  [![Ready Stories](https://badge.waffle.io/bkimminich/juice-shop-ctf.svg?label=ready&title=Ready)](https://waffle.io/bkimminich/juice-shop-ctf)                                  |
|  [![In Progress Stories](https://badge.waffle.io/bkimminich/juice-shop.svg?label=in%20progress&title=In%20Progress)](https://waffle.io/bkimminich/juice-shop)                 |  [![In Progress Stories](https://badge.waffle.io/bkimminich/juice-shop-ctf.svg?label=in%20progress&title=In%20Progress)](https://waffle.io/bkimminich/juice-shop-ctf)            |
| [![Heroku](https://heroku-badge.herokuapp.com/?app=juice-shop-staging)](https://juice-shop-staging.herokuapp.com)                                                            |                                                                                                                                                                                  |

### Content

* [Release notes for upcoming v3.3.0](https://github.com/bkimminich/juice-shop/releases/tag/untagged-bdb2597bd6769221f800)
* [Juice Shop Kanban Board on waffle.io](https://waffle.io/bkimminich/juice-shop)
* [📺📢🕺💃](https://owaspsummit.org/Working-Sessions/Juice-Shop/JuiceShop-Shake.js.wmv)
