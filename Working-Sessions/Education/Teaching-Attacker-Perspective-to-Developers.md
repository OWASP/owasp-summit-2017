---
layout         : blocks/working-session
title          : Teaching Attacker perspective to Developers
type           : workshop
owasp-project  : no
track          : Education
technology     :
related-to     : Juice Shop,NodeGoat,Webgoat
status         : final stage 
when-day       : Thu
when-time      : AM-1
location       : Room-4
organizers     : Bjoern Kimminich
participants   : Timo Pagel, Stuart Gunter, Tiffany Long, Phil Parker,Francois Raynaud, Irene Michlin, Steven van der Baan, Robert Hurlbut
---

> _Learning by doing_ is a quite successful education concept. Although
> software developers are typically not meant to become professional
> pentesters, it is still a valuable approach to teach them the
> _Attackers Perspective_ and let them loose on practical hacking
> exercises or vulnerable applications. Only when they ~~saw something
> break~~**break something themselves**, can they appreciate all the
> secure coding guidelines _as help_ and not see them as _an
> impediment_.


## Why

In this working session, we will share our experience with various tools
and services used in practical developer security training sessions.

## What

- How to sell the idea of "breaking" things to developers who typically
  have constructive mindsets
- How to integrate exercises into instructor-led training sessions
- Do you advocate do-it-yourself learning?
- Share experiences using current online service providers
- Run-through of open source tools (like WebGoat, Security Shepherd,
  Juice Shop)
- Are vendor demo applications (like AltoroMutual) an option?
- What (if any) tools for pentesting (like (ZAP or Burp) do you
  recommend or use in dev trainings?

## Outcomes

- Recommendation for a _Learning Path_ guiding developers through
  various hands-on sessions in an appropriate order (e.g. with
  increasing difficulty)
- _Best Practice_ for developer-focused security training
- Developer training _Antipatterns_ and _Pitfalls_

## Who

The target audience for this Working Session is:

- Developers
- Instructors

---

## Working materials

- Recommendation for a _Learning Path_ guiding developers through
  various hands-on sessions in an appropriate order (e.g. with
  increasing difficulty)
- draft _Best Practice_ for developer-focused security training
- Developer training draft _Antipatterns_ and _Pitfalls_

### Content

#### Best Practice

* **Timebox your exercises** - When giving students a (hacking) exercise
  make sure they know how much time they have for it. At the end of the
  timebox show the solution to the exercise live on the video projector
  so everyone sees it at least once.

#### Antipatterns / Pitfalls

* **ZAP'n'Burp** - Try to teach how to use non-trivial tools like OWASP
  ZAP or BurpSuite _along the way_ during a beginner's level web
  security training.
* **Toy Overkill** - Overwhelm students with a myriad of different
  pentesting & hacking tools during a developer training. Worst case:
  Let them use _Kali Linux_ right from the start.
* **Think like an attacker** -
  <https://adam.shostack.org/blog/2016/04/think-like-an-attacker-is-an-opt-in-mistake/>
* **Time Cheater** - Go overtime with your _frontal lecture_ part and
  try to make up for it by a) skipping or b) cutting the far more
  interesting _exercises and demos_.
