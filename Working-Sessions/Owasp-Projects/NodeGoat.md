---
layout       : blocks/working-session
title        : NodeGoat
type         : workshop
track        : Owasp Projects
status       : done
technology   : Node
description  : NodeGoat is a deliberately insecure NodeJS web application maintained by a small collection of OWASP leaders/members, designed to teach web application security and the importance of moving the finding and fixing of defects to within the Development Teams Sprints.
when-day     : Tue
organizers   : Kim Carter
participants :
---

### Introduction

[NodeGoat](https://github.com/OWASP/NodeGoat) is a deliberately insecure NodeJS web application maintained by a small collection of OWASP leaders/members, designed to teach web application security and the importance of moving the finding and fixing of defects to [within the Development Teams Sprints](https://leanpub.com/holistic-infosec-for-web-developers/read#leanpub-auto-security-focussed-tdd), thus [significantly reducing costs](https://leanpub.com/holistic-infosec-for-web-developers/read#leanpub-auto-cheapest-place-to-deal-with-defects). NodeGoat comes with a [tutorial](https://nodegoat.herokuapp.com/tutorial) that walks the practitioner through what, where and how to fix the baked in OWASP Top 10 defects in a NodeJS context.

### Ideas

Where does the community get the most out of this project and where do we want to take it? I've got lots of ideas, because I'm constantly running both public and private [Working-Sessions](https://blog.binarymist.net/presentations-publications/) demonstrating the value that [Security Regression Testing](https://github.com/binarymist/NodeGoat/wiki/Security-Regression-Testing-with-Zap-API) utilising NodeGoat and Zap API brings to organisations, but input and bouncing ideas off of each other can only improve NodeGoat.

### Work to be done

1. Take the coverage of Security Regression Testing with Zap API further, not just a high level active scan, but more granular and across more than a single route, and possibly create a branch (or what ever provides the least amount of overhead) with all tests passing (by default tests are supposed to [fail until fixed](https://youtu.be/DrwXUOJWMoo))
2. Get all components of the Security Regression Testing [working](https://github.com/OWASP/NodeGoat/issues/60) within [their containers](https://github.com/OWASP/NodeGoat/issues/60) and visible
3. Move the security fixes added in the code comments to separate branches or a single branch and automate patch per fix. So we would have master branch for the insecure app, and multiple branches or automated patches (one per OWASP Top 10 vulnerability) with fixes incorporated in it
4. Address the same defect types with examples using different Node libraries and architectures
5. Upgrade dependencies and make sure the same defect approaches are being applied [across the entire application](https://github.com/OWASP/NodeGoat/issues/82)




