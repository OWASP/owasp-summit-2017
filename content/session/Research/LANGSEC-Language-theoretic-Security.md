---
title        : LANGSEC Language-theoretic Security
type         : workshop
owasp-project: no
track        : Research
technology   :
related-to   :
status       : done
organizers   :
participants : Johan Peeters
---

Originally developed by Dr. Sergey Bratus, Meredith L. Patterson, and the late Len Sassaman, language theoretic security (or LANGSEC) is an emerging field of digital security that threats code patterns and data formats as languages and their grammars to prevent the insertion of malicious code into software.

## Why

LANGSEC believes that the epidemic of insecurity that is infecting the Internet is nothing more than a consequence of ad hoc programming of input handling at all layers of a network stack. According to LANGSEC, the only way to get trustworthy software that takes untrusted inputs is treating all valid or expected inputs as formal language and the input-handling routines as a recognizer for that language. The whole recognition process must be feasible and the recognizer must use only the required computation power to match the language.
This Working Session will deal in how LANGSEC can help to draw the boundary between protocols and API designs that can and can´t be secured or implemented in a secure way, as well as discuss performance tradeoffs and challenges of modern application security.

## What

When done in an ad hoc way, input handling can cause the input recognition and validation code to end up scattered throughout the program and can provide exploit opportunities. What´s more, in cases of complex input languages the problem of full recognition of valid and expected inputs can end up undecidable. In these cases, no amount of input-checking code or testing will manage to secure the application. 
As there are many protocols and formats that are vulnerable to this, it is important to explore how LANGSEC can help.

## Outcomes 

The goal of this Working Session will be to explain language theoretic security (LANGSEC) in greater detail and explore how it can outperform some of the existing approaches such as pattern matching.

## Who

- Application Architects (for DFD creation, templating)
- Web developers of varying language backgrounds (.NET, Java, PHP, .js, etc.)
- DBAs/ DB Developers
- Security professionals

## Resources

 - - <a href="http://langsec.org/">LANGSEC</a> 
 
 --- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions):

- <a href="https://www.owasp.org/images/4/42/OWASPBNL_LangSec_meets_state_machines.pdf">OWASP presentation “LANGSEC meets state machines</a> 

### Content

The following are some of the problems that LANGSEC theory wishes to address:

- Every piece of software has a way to recognize valid requests and reject invalid or malicious ones.  The problem is that the way the software does this is often has no internal logic, spread throughout the program, and interspersed with processing logic (a “shotgun parser”). This lends the processing logic to exploitation and programmers to false assumptions of data safety.

-  When a piece of software accepts imprecise requests, it require the allocation of more computing power.  This unneeded computing power is a gift to attackers looking to inject bad code.  Precise language parsing reduces the computing power needed.  The power that is not there cannot be hijacked.

- Hard-to-parse protocols require complex parsers. Complex, buggy parsers become weird machines for exploits to run on.  

- Software protocols and file formats that can be mimicked by an attacker are the worst offenders because it is impossible for them to draw a distinction between a valid and malicious code.  Such Turing-complete input languages destroy security for generations of users.

More information: <a href="http://www.upstandinghackers.com/langsec">Short explanation of LANGSEC</a>

