---
title       : GitHub Template proposal
date        : 2017-06-07T14:15:59-06:00
author      : Bjoern Kimminich
---

I just created a repository <https://github.com/OWASP/github-template>
that could be used as a copy&paste-resource for projects under
[OWASP‘s GitHub organization](https://github.com/owasp). Why would we
need something like this? _Because a consistent documentation of high
quality is something users and contributors alike are increasingly
expecting from providers of open source software!_

This is elaborated in more detail in the description of the
[GitHub Organization Reboot](https://owaspsummit.org/Working-Sessions/Owasp/GitHub-OrgReboot.html)
working session which is planned for the
[OWASP Summit 2017](https://owaspsummit.org). The topic was also covered
in my talk
[OWASP Juice Shop: Achieving sustainability for open source projects](http://bkimminich.github.io/juice-shop/appseceu_2017.html) ([📺](https://www.youtube.com/watch?v=bOSdFnFAYNc))
from this year's AppSecEU in Belfast. It featured several _Open Source
Antipatterns_, among them being:

* **Barren README**: An empty or lackluster front-page radiates the
  impression that nobody takes serious care of the project.
* **Badge Barrage**: The front-page is overcrowded with (mostly useless)
  information and status badges.
* **PR Disaster**: Pull Requests are routinely ignored or flogged to
  death.
* **Contributor Laurels**: Not giving enough credit to contributors.

All these can be countered (at least partially) by the proposed
[GitHub Template](https://github.com/OWASP/github-template), which comes
with a pre-sectioned
[`README.md`](https://github.com/OWASP/github-template/blob/master/README.md)
and several _(optional)_ files for a
[project’s contribution guide](https://github.com/OWASP/github-template/blob/master/CONTRIBUTING.md),
[troubleshooting section](https://github.com/OWASP/github-template/blob/master/TROUBLESHOOTING.md)
and
[media references of the project](https://github.com/OWASP/github-template/blob/master/REFERENCES.md).
The template is based on my own Juice Shop project repositories, so
please refer to these as live examples to determine if you like the
structure or not:

* https://github.com/bkimminich/juice-shop (extensive documentation,
  large project, uses all proposed sub-files to externalize content off
  the growing `README.md`)
* https://github.com/bkimminich/juice-shop-ctf (brief documentation,
  small side-repo, uses inline sections over sub-files)

![OWASP GitHub Template screenshot 1](https://github.com/OWASP/github-template/raw/master/images/screenshot1.png)
![OWASP GitHub Template screenshot 2](https://github.com/OWASP/github-template/raw/master/images/screenshot2.png)
![OWASP GitHub Template screenshot 3](https://github.com/OWASP/github-template/raw/master/images/screenshot3.png)

To apply the template to your own or any new GitHub projects, simply
follow these steps:

1. unpack all the files from
   <https://github.com/OWASP/github-template/archive/master.zip> into
   your repository base path
2. replace all occurences of _GitHub Template_ with your own project
   name
3. follow the `TODO` instructions

> At the moment this is only a working draft of a template. Nothing
> about it is mandatory at this point.

Your Pull Requests, feedback, constructive criticism and other input is
most welcome to give us something to discuss during the
[GitHub Organization
Reboot](https://owaspsummit.org/Working-Sessions/Owasp/GitHub-OrgReboot.html)
working session at the upcoming OWASP Summit 2017!
