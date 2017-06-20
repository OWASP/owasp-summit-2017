---
layout  : blocks/outcome
title	  : Methodology review and update test
---

### Synopsis and Takeaways

**Completed tasks**

- Brainstorming the new activities that will improve the guide
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
