---
layout       : blocks/working-session
title        : Securing Legacy Applications
type         : workshop
owasp-project: no
track        : DevSecOps
technology   : SAST
related-to   : Cyber Insurance,CISO,InfoSec Warranties and Guarantees
status       : done
when-day     : Wed
when-time    : PM-3
location     : Room-6
organizers   : Lucas Ferreira, Juan Calderon
participants : Don Gibson,Irene Michlin, Ingo Hanke
---

## Why

There has been a great improvement in the security of new languages/frameworks. This makes it harder to write insecure applications, at least from an injection point of view.

However, the elephant in the room is the hundreds, possibly thousands, of legacy applications that exist in companies. These are performing mission critical functions and are not going anywhere anytime soon. 

This Working Session will discuss how best to secure these legacy applications.

## What

 - How to map legacy applications
 - How to understand the risk posed by these applications
 - Who should own/maintain these applications?
 - Can these applications be used as an opportunity to implement DevOps practices?
 - How to insure these applications
 - How SAST technology tends to be very effective in legacy applications

## Outcome

_Main Characteristic of a Legacy Application: You cannot fix the base of a problem on that system. e.g. Modify the code._

- Other issues you are dealing with on a legacy app: 
	* Not under active maintenance
	* Not secure anymore
	* Ancient Technology (IE 6, Active X, Some Russian Script language only 30 people know)
	* Odd Technology
	* Not easy to maintain
	* Cannot provide a timely response to an incident

- Risk Mitigation Strategies
	* Eventually, the ultimate solution is decommission:
	* Do cost analysis of maintaining the application. Plan to decommission the application at some point and start using new (cheaper) technology
	* You have to put a final point to the app. They are not supposed to run forever.
	* Other less effective options (a certain amount of remaining risk must be accepted): lower likelihood by adding protection layers like WAFS, Firewalls, Filters, etc. This causes issues when old functionality cannot be exposed to new technology. This has to be done in a very careful manner.
  
## Who

The target audience for this Working Session is:

 - CISOs
 - Insurance Companies

## References

 - [Legacy-SecDevOps (AppSec Management Debrief](http://blog.diniscruz.com/2017/04/presentation-legacy-secdevops-appsec.html)
 - [Securing Legacy Apps](https://blog.sqreen.io/securing-legacy-apps/)
--- 

## Working materials

### Content
