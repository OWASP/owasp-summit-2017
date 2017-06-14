---
layout       : blocks/working-session
title        : Webgoat
type         : workshop
track        : Owasp Projects
technology   : Java
status       : Final stage; missing working materials
when-day     : Wed
when-time    : PM-1
location     : Villa-3
organizers   : Nanne Baars
participants : Ade Yoseman Putra
invited      : Tiffany Long
---

## Why

WebGoat is a deliberately insecure web application maintained by OWASP designed to teach web application security lessons. You can install and practice with WebGoat. There are other 'goats' such as WebGoat for .Net. In each lesson, users must demonstrate their understanding of a security issue by exploiting a real vulnerability in the WebGoat application. For example, in one lesson the user must use SQL injection to steal fake credit card numbers. The application aims to provide users with a realistic learning environment, giving them hints and code that further explains each lesson.

The focus of WebGoat 8.0 is to train developers not only how to exploit, but also how to fix and mitigate, a vulnerability. 

This Working Session will explore how WebGoat can be improved.

## What

- Add the ability to fix a vulnerability within a lesson. Instead of just finding an issue, we want to allow users to try and fix the issue. It is technically challenging to implement this without restarting the complete WebGoat application
- We need to 'automatically' verify an implemented fix. We need test cases which will try to trigger the issue. It would be nice to develop a shared knowledge base in which anyone can submit their solution and others could try to break proposed solutions 
- Develop a shared knowledge base for different Goat implementations. Only the language implementation details are 
 different; the explanation about a specific vulnerability and mitigation can be shared
- Develop more lesson content, for example lessons specifically about crypto 

## Outcomes

- New test cases
- New shared knowledge base
- New lesson content, including content on how to fix vulnerabilities

##  Who

The target audience for this Working Session is:

- Web application developers
- Teachers of web application security

## Organiser

For more details, more ideas etc. contact https://github.com/OWASP/owasp-summit-2017/blob/master/Participants/Nanne-Baars.md

--- 

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)


