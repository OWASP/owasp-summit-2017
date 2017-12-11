---
title        : NextGen Security Scanners
type         : workshop
track        : Tools
status       : final stage; need-working materials; need to be reviewed content
when-day     : Thu
when-time    : AM-1
location     : Room-3
organizers   : Nuno Loureiro, Tiago Mendo, Simon Bennetts
participants : Johan Peeters, Ingo Hanke, Mateo Martinez
invited      : Simon Bennetts
---

## Why

Today's security scanners were built for yesterday's web applications, based on server-side rendering concepts. They often fail, or at least they lack functionality when it comes to modern web applications using rich JavaScript clients. This Working Session will discuss current scanner tools and how they can improve.

## What 

- What makes scanning JavaScript-heavy applications so different?
- What functionality is missing in today's scanner tools?
- How to improve the automation parts of existing tools?
- How to further assist users during proxied manual pen tests?
- How can vulnerable applications like [OWASP Juice Shop](https://www.owasp.org/index.php/OWASP_Juice_Shop_Project) be used by scanner vendors as a sample victim?

## Outcomes

- A public document with "What a next generation security scanner needs?
- A concrete plan to include those requirements into ZAP
- OWASP ZAP extensions for JavaScript client-side code analysis
- Improvements of OWASP ZAP Ajax Spider
- Additional vulnerabilities for OWASP Juice Shop that showcase vulnerabilities found in the wild

## Who

The target audience for this Working Session is:

- OWASP ZAP, Arachni, and other OSS scanner developers
- Burp, Acunetix, and other commercial scanner developers
- JavaScript frontend developers
- Web application developers


## Working materials

Based on ZAP characteristics and new OWASP Top 10 risks we need to discuss what else is required to consider as scanner as a next generation security scanner.

### Content

- Security Scanners
- ZAP review
- Next Generation Security Scanners needs
- Juice Shop
- OWASP Top 10 2017
- ZAP Plugis


