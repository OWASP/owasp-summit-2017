---
layout       : blocks/working-session
title        : Top 10 2017 - Process Discussion
type         : workshop
track        : Owasp Top 10 2017
technology   :
related-to   :
status       : done
when-day     : Mon
when-time    : AM-1
location     : Room-2
remote       : https://hangouts.google.com/hangouts/_/owasp.org/summit-room-2
organizers   : Dave Wichers, Andrew Van Der Stock
participants : Amani Altarawneh, Chris Cooper, Christian DeHoyos, Daniel Miessler, Erez Yalon, Jason Li, Jonas vanalderweireldt, Kevin Greene, Nuno Loureiro, Sandor Lenart, Tiago Mendo, Tiffany Long, Torsten Gigler, Robert Grace, Phil Parker, Josh Grossman
outcomes     : mapped
---

## Why


## What

How does the OWASP Top 10 get made, let's discuss and define.
There's a reason why the OWASP Top 10 is what it is, but there needs to be transparency and a defined path for OWASP Top 10 project members and data call participants.
Let's work on this so we can define the way forward for the 2017, 2020 and 2023 OWASP Top 10.

## Outcomes

- What should the next releases of the OWASP Top 10 look like?
- What should be the process underlying the next versions of the OWASP Top 10?

### Synopsis and Takeaways

In the first session, we talked about the history of the OWASP Top 10, and how it evolved over time.
In 2004, there was no data backing the standard. In 2007, we used only CVE data for the analysis, and we used our judgement to fit in CSRF as an issue. In 2010 and 2013, the forward-looking issue was out of date components, which on one analysis of the OWASP Top 10 to breach data represents a full 24% of all data breaches. Therefore, there should always be room for forward-looking inclusions.

- Our audience is everyone in appsec, not just developers.

- The basis for the OWASP Top 10 is "risks". Andrew van der Stock suggested we adopt the ISO 31000:2015 standard definition for risk, so that we have the same understanding as risk managers in most parts of the world.

- We will document the rationale for the OWASP Top 10 on the wiki, and possibly at least a part of it in the document this year. This will be the same rationale / process going forward for 2020 and 2023.

- Andrew will take a motion to the Board asking for a change to the Project Leader Handbook, where Flagship projects will have a six-month grace period to obtain at least two leaders from two different firms to avoid perceptions of vendor lock-in, either real or perceived. There is no restriction on a single leader from a single company controlling a Flagship project at present; Andrew would like to de-couple the other issues from the independence issue.

- There will be a transparent and documented decision to ensure that up to 2 of the OWASP Top 10 issues will be forward-looking, and that the community should drive the consensus for what they will be. Andrew will open up a discussion on OWASP Leaders and elsewhere with a short vote on what the 2 for 2017 should be, including the existing two issues, XXE and object serialization, and he will figure one out from the also-rans of the data collection process.


## Who

The target audience for this Working Session is:

 - OWASP Top 10 2017 Track participants

## References

---

## Working materials

## Initial Brainstorm
(from [Josh Grossman](https://owaspsummit.org/Participants/remote/Josh-Grossman.html))

### What should the OWASP Top 10 look like? [issue 8](https://github.com/OWASP/Top10/issues/8)
1. Stay as it is - top 10 list of application security *risks* based with some aggregation of categories?
2. Change to a "league table" of specific CWEs purely based on data gathered?
3. Evolve to consider wider issues in application security - this seems to have been the rationale behind "2017 RC1 A7 - Insufficient Attack Protection"?

### What should be the basis for the top 10? [issue 9](https://github.com/OWASP/Top10/issues/9)
1. Stay as it is - Initial call for data and then the Top 10 produced based on the data plus the judgement of the project leaders/authors.
2. Entirely data based - Top 10 based purely on the data gathered together with some normalisation or weightings?
3. Data based with consensus - Top 10 initially based on normalised/weighted data but also modified based on community discussion/consensus.

### Does the preparation timescale make sense? 2017 process was:
- 20 May 2016      - Initial call for data
- 31 July 2016     - Official deadline for submitting data (after an extension from 20 July).
(based on the data released, the last large submission was 31 August 2016).
- 17 December 2016 - Release of the full dataset
- 10 April 2017    - Full RC1 document released.
- 30 June 2017     - Proposed end to comment period
- July 2017        - Proposed final released

Questions on the preparation time scale:
- Would it make sense to publish the proposed Top 10 list without writing the full document so as to gather feedback on the suggested Top 10 first? [issue 6](https://github.com/OWASP/Top10/issues/6)
- Does the ratio between time allocated to gathering data and time allocated to analysing the data make sense? (~3 months (~Jun-Aug) to gather compared to ~7 months (~Sep-Mar) to analyse). [issue 7](https://github.com/OWASP/Top10/issues/7)
