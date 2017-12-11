---
title           : MSTG Book Sprint - Mobile Operating Systems
type            : workshop
track           : Mobile Security
owasp-project   : yes
technology      : Mobile
status          : done
when-day        : Mon
when-time       : AM-1,PM-1,PM-2,PM-3
location        : Room-4
room-layout     : unknown
remote          : https://hangouts.google.com/hangouts/_/owasp.org/summit-room-4
description     : In this book sprint we produce content for the "Mobile Operating Systems" chapter of the Mobile Security Testing Guide.
organizers      : Bernhard Mueller, Sven Schleier
participants    : Carlos Holguera, Sven Schleier, Jeroen Willemsen
remote participants: Anant Shrivastava
invited         : Denis Pilipchuk, Naushad, Bolot Kerimbaev, Marc Rimbau, Alexander Antukh, Johanna Curiel
---

<img src="https://media.githubusercontent.com/media/OWASP/owasp-mstg/master/Document/Images/titlepage-small.jpg" width="250px" align="right" alt="owasp mstg"/>

## Why

As of today, no widely accepted standard for mobile app security exists. The goal of our project is to rectify this situation. In addition to a [mobile appsec security standard](https://github.com/OWASP/owasp-masvs), we are producing a comprehensive [testing guide](https://github.com/OWASP/owasp-mstg) that covers the processes, techniques, and tools used during a mobile app security test, as well as an exhaustive set of test cases that enables testers to deliver consistent and complete results. We aim to release the guide in the form of a free e-book and potentially a printed book by the end of this year.

## What

The objective of this working session is to complete a first draft of the Mobile Security Testing Guide (MSTG). Tasks include:

- Write original content, such as describing testing processes and writing test cases
- Proofread and technical edit to improve the overall quality of the MSTG

Participants may join working groups organised along the main topics covered in the guide. Work will be split between working groups based on mobile OS and topics as listed below.

This working session focuses on mobile operating systems. We will describe OS aspects/features of Android and iOS that are relevant for security testers: App signing, exploit mitigation, KeyStore/KeyChain, and others.

Associated chapters in the MSTG:

- [Android Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05a-Platform-Overview.md)
- [iOS Platform Overview](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06a-Platform-Overview.md)

## Outcomes

This Working Session will complete a first draft of the Mobile Security Testing Guide (MSTG).

### Synopsis and Takeaways

During the OWASP 2017 summit session, many topics were highlighted and debated based upon the MSTG book. Android security focused on  operating systems from Kit-Kat to Nougat and how they function. Android application standards were discussed and the defining of such standards needs to be addressed. These standards work best when analysed with rooted devices vs. un-rooted devices as they can access the physical phone vs. the logical partition of the device.  General testing guides that are non-operating systems-specific were addressed and are set to be updated.

The testing of custom implementations for cryptography for android devices have been discussed in detail and have been highlighted as content to update.

### Outcomes

- Decision to complete the Android platform overview and revise the testing guide (Special edition OWASP 2017) 
- Work packages were assigned to key members of the group such as IOS or Android security
- Highlighted key areas that need to be updated such as Authentication and Authorization, Cryptography, and Testing processes for IOS devices.
- The referencing of the work is not consistent, so there a standardised system needs to be put in place.

## How to Join

Follow the "Edit this page here" link at the bottom of this page and add yourself to the "participants" field. Signing up is not mandatory, but helps us to better organize the sessions.

More things to do once you have signed up:

- Make yourself familiar with the [existing content](https://github.com/OWASP/owasp-mstg). Or even better, start contributing right away :)
- Ping us on the [OWASP MSTG Slack channel](https://owasp.slack.com/messages/project-mobile_omtg/details/) (sushi2k or bernhardm).
- If you have rooted Android / jailbroken iOS devices, please bring them along to the session.

## Who

The target audience for this Working Session is:

- Developers
- Security Testers
- Reverse Engineers
- Everyone else with good writing skills and some technical know-how :)

--- 

## Working materials

- Draft of the [Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg)
- Jailbroken iOS devices, rooted Android devices
