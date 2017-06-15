---
layout       : blocks/working-session
title        : Testing Guide v5
type         : workshop
track        : Owasp Projects
status       : Final stage; missing target audience; missing working materials
description  : The OWASP Testing Guide v4 includes a "best practice" penetration testing framework which users can implement in their own organizations and a "low level" penetration testing guide that describes techniques for testing most common web application and web service security issues. Nowadays the Testing Guide has become the standard to perform a Web Application Penetration Testing and many Companies all around the world have adopted it. It is vital for the project mantaining an updated project that represents the state of the art for WebAppSec.
when-day     :
when-time    :
location     :
organizers   : Matteo Meucci
participants : Mateo Martinez,Ade Yoseman Putra, Mario Robles
---

This is the OWASP Testing Guide Project Roadmap for v5.
------------------------------------------------------
You can download the stable version v4 here:  
http://www.owasp.org/index.php/OWASP_Testing_Project

## What

The OWASP Testing Guide v4 includes a "best practice" penetration testing framework which users can implement in their own organisations. The Testing Guide v4 also includes a "low level" penetration testing guide that describes techniques for testing the most common web application and web service security issues. Today the Testing Guide is the standard to perform Web Application Penetration Testing, and many companies around the world have adopted it. It is vital to maintain an updated project that represents the state of the art for WebAppSec.

The aim of the Working Session is to discuss and define the scope and content of OWASP Testing Guide v5.

## Outcomes

- All sections in v4 reviewed
- Project aligned with the ASVS and OWASP Top 10 vulnerabilities
- A more readable guide created that eliminates sections that are not useful
- New testing techniques inserted
- Some sections rationalised as Session Management Testing
- New section created: Client side security and Firefox extensions testing

### Synopsis and Takeaways

**Completed tasks**

- Brainstorming regarding the new activities that will improve the guide
- Alignment with OWASP guides: Development Guide, Code Review Guide, ASVS, Top10, Testing Checklist, ZAP, Vulnerability list
- Discussion on tools
- Add the list of new tests to the v5

**New tests to write**

- Server-Side Request Forgery (SSRF)
- Server-side Remote Code Execution (RCE)
- XML External Entity Attacks (XXE)
- Self Based DOM XSS
- Authorization bypass horizontal 
- Authorization bypass vertical
- Server-Side Template Injection (SSTI) 
- Host Header Attack
- SPARQL Injection
- Testing for Deserialization of untrusted data
- API Abuse
- Testing Content Security Policy V2 (CSP)?
- Testing for SSO?

**Review**

- Client Side Testing
- ORM Injection 
- Authorization Testing
- Information and Config management testing
- Authentication Testing: add OAuth testing
- Reporting: adding how to create security testing case for devs
- https://www.owasp.org/index.php/Test_Local_Storage_(OTG-CLIENT-012) add Client Side SQLi

**Two questions for OWASP**

- TOOLS discussion: in the old version of the Testing Guide we cited open source and commercial tools for each type of test to perform that could help during the analysis. Would you like to cite both?

- CWE: many companies are using this standard, but at the moment not all the Testing Guide tests are mapped to a specific CWE. Is it possible to set up a working team with CWE to update it with all the tests we describe in the Testing Guide?

### Project v5 Deadlines:

- 21st March 2017: Setup the team of authors
- 22th March 2017: Start a brainstorming for the new index starting from "Release Description"
- 15th April 2017: Create the new index and confirm new team
- 15th May 2017: Start writing articles first phase
- 12-16 June 2017: OWASP Summit TGv5 review and brainstorming 
- 17th June 2017: Start writing articles II phase
- 1st October 2017: Start the second review phase
- 15th November 2017: Create the RC1
- 15th January 2017: Release version 5

## Who

The target audience for this Working Session is:

- pen testers
...add more...

--- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)

- Draft Testing Guide
- Draft new section: Client side security and Firefox extensions testing

### Content

...add content...


