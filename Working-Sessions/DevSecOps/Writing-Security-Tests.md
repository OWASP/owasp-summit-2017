---
layout       : blocks/working-session
title        : Writing Security Tests
type         : workshop
owasp-project: no
track        : DevSecOps
technology   : TDD
related-to   : Testing Guide v5
status       : better-content
when-day     : Wed
organizers   : Dinis Cruz
participants : Robert Morschel,Avi Douglen,Bjoern Kimminich
---

## Why

This Working Session will look at Security Tests, a special type of test that confirms, via passing tests, that security issues either exist or have been fixed.

## What

 - When to write security tests
 - Common techniques
 - Transforming integration and e2e tests into security tests
 - Running tests against production
 - Instrumenting code to inject payloads
 - Running tests in parallel with builds or in-line
 - Inserting error handling into tests so that tests differentiate between an internal error and test failure

## Who

The target audience for this Working Session is:

 - Security professionals
 - Developers

## References

 - [Writing Software Security Test Cases](https://www.qasec.com/2007/01/writing-software-security-test-cases.html)
 - [Turning TDD upside down - For bugs, always start with a passing test](http://blog.diniscruz.com/2016/09/presentation-turning-tdd-upside-down.html)
 - [Presentation - "Surrogate dependencies (poc in node js) v1.0](http://blog.diniscruz.com/2016/09/presentation-surrogate-dependencies-in.html)
