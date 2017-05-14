---
layout          : blocks/working-session
title           : Mobile Security Testing Guide (MSTG)
type            : workshop
track           : Mobile Security
owasp-project   : yes
technology      : Mobile
status          : done
organizers      : Bernhard Mueller, Sven Schleier
participants    : Bolot Kerimbaev, Jeroen Willemsen, Marc Rimbau,  Kuai Hinojosa
---

<img src="https://media.githubusercontent.com/media/OWASP/owasp-mstg/master/Document/Images/titlepage-small.jpg" width="250px" align="right"/>

During the last few months the Mobile Security Testing Guide has made huge steps forward and several parts of the MSTG have now already a draft version. Please have a look at the [GitBook](https://b-mueller.gitbooks.io/owasp-mobile-security-testing-guide/content/) and the [GitHub repo](https://github.com/OWASP/owasp-mstg). As we want to push things forward in order to have a first draft of the Mobile Security Testing Guide (MSTG) at the end of Q2, Bernhard and Sven will be holding a mobile security workshop during the OWASP Summit.

## Workshop Goals

Our ambitious goal is to complete the mobile security testing guide. To achieve this, we'll need to *at least* close the 126 "missing content" tickets listed on the [project dashboard](https://github.com/OWASP/owasp-mstg/projects/1) and produce an estimated 200 book-sized pages of content. This sounds like a lot - however, if we can gather 10 people for this working session, this amounts to 4 pages of content per person/day which is achievable. 

On top of completing the content, we want to apply a basic level of proof-reading, review and editing to get the guide into Beta-stage.

## Key Tasks

The main tasks of the five days workshop are:

- Writing original content, such as describing testing processes and writing test cases.
* Proofreading and technical editing to improve the overall quality of the MSTG.

Work will be split between working groups based on mobile OS and topic (see below).

## High-Level Topics

Participants may join working groups organized along the main topics covered in the guide. The key areas in the Mobile Testing Guide are:

### Mobile Operating Systems

Mobile operating system basics as well as concepts important for security testing. Participants can help in the following ways:

- Complete the existing content. Describe OS aspects/features of Android and iOS that are relevant for security testers: App signing, exploit mitigation, KeyStore/KeyChain, and others.

Associated chapters in the MSTG:

- [Android Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05a-Platform-Overview.md)
- [iOS Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06a-Platform-Overview.md)

### Mobile App Security Testing

High-level testing methodology, including scoping, test setup and reporting. Basic technical processes such as setting up a web proxy, API monitoring using existing tools, et cetera.

Participants can help in the following ways:

- Describe the high-level, non-technical testing methdology. We don't have any content in this area yet!
- Write about basic, technical securty testing processes on iOS. The iOS part is currently lagging behind the Android part.
- Review and improve the existing content.

Associated chapters in the MSTG:

#### General / OS-independent

- [Testing Processes and Techniques](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x04-Testing-Processes-and-Techniques.md)
- [Security Testing in the Application Development Lifecycle](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x07-Security-Testing-SDLC.md)
- [Testing Tools](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x08-Testing-Tools.md)

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

Everything related to mobile reversing, anti-reversing and cracking. Participants can help in the following ways:

- Contribute reverse engineering write-ups to describe specific processes, tools and techniques
- Help us figure out resiliency testing processes and obfuscation metrics
- Solving crackmes and contributing a tutorial to the guide (preferable a technique that's not already documented. Check the TOC first).
- Writing and adding new crackmes along with solutions (should also describe something not already in the guide. Cracking white-boxes, dynamic analysis using an emulator / introspection, etc. etc.).

Associated chapters in the MSTG:

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
