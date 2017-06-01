---
layout       : blocks/working-session
title        : Securing the CI Pipeline
type         : workshop
owasp-project: no
track        : DevSecOps
technology   : CI,SAST
related-to   : Integrating Security Tools in the SDL,CISO
status       : draft
participants : Johan Peeters
organizers   : Felipe Zipitria
---

A key element of DevOps is the securing of the CI Pipeline.

Doing CI builds, testing and deployments have lots of advantages, when made correctly. Using libraries from 3rd parties in your build, which can be on compromised servers, or even signing your packages or artifacts automatically could end in you delivering compromised software to others.

## Potential outcomes

- A set of practices for DevOps and Developers?
- CheatSheet for developers who use third party services?
- Recommendations for 3rd party service providers? (e.g: provide warning messages of possible insecurities?)

## Who

* DevSecOps (or SecDevOps), depending on [DevSecOps vs SecDevOps](DevSecOps-vs-SecDevOps.md).
* 3rd party service providers: Travis, SNYK, Codiscope, Gitlab, Node Security, ....
* Security professionals
* Developers

## References

- https://www.nccgroup.trust/uk/our-research/securing-the-continuous-integration-process
- [DEF CON 22 - Kyle Kelley and Greg Anderson - Is This Your Pipe? Hijacking the Build Pipeline](https://www.youtube.com/watch?v=nBR7Kru6JX0)
