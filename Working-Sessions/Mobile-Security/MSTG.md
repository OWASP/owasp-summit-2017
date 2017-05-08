---
layout          : blocks/working-session
title           : Mobile Security Testing Guide (MSTG)
type            : workshop
track           : Mobile Security
owasp-project   : yes
technology      : Mobile
status          : done
organizers      : Bernhard Mueller,Sven Schleier
participants    : Bolot Kerimbaev, Jeroen Willemsen, Marc Rimbau
---

<img src="https://media.githubusercontent.com/media/OWASP/owasp-mstg/master/Document/Images/titlepage-small.jpg" width="250px" align="right"/>

During the last few months the Mobile Security Testing Guide has made huge steps forward and several parts of the MSTG have now already a draft version. Please have a look at the [GitBook](https://b-mueller.gitbooks.io/owasp-mobile-security-testing-guide/content/) and the [GitHub repo](https://github.com/OWASP/owasp-mstg). As we want to push things forward in order to have a first draft of the Mobile Security Testing Guide (MSTG) at the end of Q2, Bernhard and Sven will be holding a mobile security workshop during the OWASP Summit.

## Key Tasks

The main tasks of the five days workshop are:

- Writing original content, such as describing testing processes and writing test cases.
* Proofreading and technical editing to improve the overall quality of the MSTG.

## High-Level Topics

### Mobile Operating Systems

- [Android Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05a-Platform-Overview.md)
- [iOS Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06a-Platform-Overview.md)

### Mobile App Security Testing

#### General

* [Security Testing in the Application Development Lifecycle](Document/0x07-Security-Testing-SDLC.md)
* [Testing Tools](Document/0x08-Testing-Tools.md)

#### Android 

- [Android Security Testing Basics](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05b-Basic-Security_Testing.md)
- [Testing Data Storage](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05d-Testing-Data-Storage.md)
- [Testing Cryptography](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05e-Testing-Cryptography.md)
- [Testing Authentication and Session Management](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05f-Testing-Authentication.md)
- [Testing Network Communication](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05g-Testing-Network-Communication.md)
- [Testing Platform Interaction](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05h-Testing-Platform-Interaction.md)
- [Testing Code Quality and Build Settings](https://github.com/OWASP/owasp-mstg/blob/master/)

#### iOS 

- [iOS Security Testing Basics](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06b-Basic-Security-Testing.md)
- [Testing Data Storage](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06d-Testing-Data-Storage.md)
- [Testing Cryptography](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06e-Testing-Cryptography.md)
- [Testing Authentication and Session Management](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06f-Testing-Authentication-and-Session-Management.md)
- [Testing Network Communication](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06g-Testing-Network-Communication.md)
- [Testing Platform Interaction](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06h-Testing-Platform-Interaction.md)
- [Testing Code Quality and Build Settings](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06i-Testing-Code-Quality-and-Build-Settings.md)

### Reverse Engineering, Cracking and Anti-Reverse-Engineering

- Contribute reverse engineering write-ups to describe specific processes, tools and techniques
- Help us figure out resiliency testing processes and obfuscation metrics
- Solving crackmes and contributing a tutorial to the guide (preferable a technique that's not already documented. Check the TOC first).
- Writing and adding new crackmes along with solutions (should also describe something not already in the guide. Cracking white-boxes, dynamic analysis using an emulator / introspection, etc. etc.).

The following sections in the MSTG deal with reverse engineering:

- [Android Reverse Engineering](Document/0x05c-Reverse-Engineering-and-Tampering.md) and 
- [Android Anti-Reversing Defenses](Document/0x05j-Testing-Resiliency-Against-Reverse-Engineering.md)
- [iOS Reverse Engineering](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06c-Reverse-Engineering-and-Tampering.md)
- [iOS Anti-Reversing Defenses](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06j-Testing-Resiliency-Against-Reverse-Engineering.md)
- [Assessing Anti-Reverse Engineering Schemes](Document/0x07b-Assessing-Anti-Reverse-Engineering-Schemes.md)

## Project Dashboard

As preparation for the workshop, open tasks were converted into issues and organized as a [GitHub project](https://github.com/OWASP/owasp-mstg/projects/1). Thanks again to Romuald for taking the initiative. This project will be the basis for our ongoing work, but also for the OWASP Summit in particular.

In order to be able to schedule work during the summit and create work groups we need to know who will be attending the OWASP Summit and how much time you can/will spend for the mobile workshop. Please put your name as one of the participants and reach out directly to Sven via Slack, [see here](https://github.com/OWASP/owasp-mstg#contributions-feature-requests-and-feedback) on how to contact us via Slack .

If you do not have time during the summit but are interested to help, you can start immediately by assigning issues to yourself and creating pull requests. We can potentially also loop you in remotely during the submit.

Let's work on the testing guide and fix mobile application security!
