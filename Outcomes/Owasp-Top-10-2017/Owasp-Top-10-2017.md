---
layout   : blocks/outcome
title    : OWASP Top 10 2017
---

## Synopsis and Takeaways

### Session 1: OWASP Top 10 Governance and rationale

### Outcomes 

In the first session, we talked about the history of the OWASP Top 10, and how it evolved over time. In 2004, there was no data backing the standard. In 2007, we used only CVE data for the analysis, and we used our judgement to fit in CSRF as an issue. In 2010 and 2013, the forward looking issue was out of date components, which on one analysis of the OWASP Top 10 to breach data represents a full 24% of all data breaches. Therefore, there should always be room for forward looking inclusions.

Audience is everyone in App Sec, and not just developers
The basis for the OWASP Top 10 is "risks". I (Andrew van der Stock) have suggested we adopt the ISO 31000:2015 standard definition for risk, so that we have the same understand as risk managers in most parts of the world.
We will document the rationale for the OWASP Top 10 on the wiki, and possibly at least a part of it in the document this year. This will be the same rationale / process going forward for 2020 and 2023.

I will take a motion to the Board asking for a change to the Project Leader Handbook, where Flagship projects will have a six-month grace period to obtain at least two leaders from two different firms to avoid perceptions of vendor lock-in, actual or perceived. There is no restriction on a single leader from a single company controlling a Flagship project at the moment, so I want to de-couple the other issues from the independence issue.

There will be a transparent and documented decision to ensure that up to 2 of the OWASP Top 10 issues will be forward looking, and that the community should drive the consensus for what they will be. I will open up a discussion on OWASP Leaders and elsewhere with a short vote on what the 2 for 2017 should be, including the existing two issues, XXE and object serialization, and I'll figure one out from the also-rans of the data collection process.

### Session 2: OWASP Top 10 Data Collection Process

We talked about the way data was collected and process by which it was analysed. For 2017, there was an open call for data, but it wasn't widely reported or pushed once open, and this might have resulted in fewer responses than in a perfect world. There was a lot of discussion around the process, if we use data scientists, can we use the existing data, and if we re-open the data collection. It was an incredibly valuable discussion, and I think it struck a good pragmatic balance. We want to drive a release this year, but RC2 will not come out this week, so we will not be running editing / creating sessions this week, but will instead work on getting more data in.

### Outcomes
A data collection process and timeline will be published to the wiki to make sure everyone knows how data is collected and analysed, and when the next data call will be held. Some of this will appear in the text, probably an appendix to make sure that our process is transparent and open.
I will work on a process with Foundation staff to ensure that we can maximise publicity for the next data call round in 2019. There was discussion of keeping it open all the time, but honestly, unless we can get a data scientist to volunteer, I doubt we could make use of that contribution. For smaller consultancies, obtaining this data is already difficult, and we don't want people to be overburdened by the data call.
A data call extension will be pushed out for interested parties. I will do this tomorrow (13 June 2017). As long as data is roughly in the same Excel format as the existing call and provided by the end of July 2017, I think we can use it.
Dave will reach out to Brian Glas to obtain feedback for tomorrow's data weighting session to be held in the morning.

For 2020, we will try to find data scientists to help us to improve our data methodology and analysis, so that for the non-forward looking data at least, we can ensure that data drives inclusion.
Ordering will never be strictly data order; to provide continuity, there is a decision (which will now be documented) that if A1 ... A3 in 2010 are the same in 2017 but in a slightly different order, those will retain a previous order. This helps people map results year-on-year and prevents massive upheaval between years.
Feedback obtained from the OWASP Top 10 mailing list will be tranferred to GitHub as issues. I will reach out to those who sent feedback sent privately to Dave Wichers and ask permission to create issues at GitHub. This will help with project transparency. From now on, if you have feedback, please provide it at GitHub: https://github.com/OWASP/Top10/issues

This session kept coming back to the weighting, and we looked at that briefly; however, as there was a Weighting Session on 13 June, 2017 and participants were invited to look over the following blog posts before the session to see where improvements could be made, either this time around (and document it), or if it will apply to 2020 and beyond.

https://nvisium.com/blog/2017/04/18/musings-on-the-owasp-top-10-2017-rc1/
https://nvisium.com/blog/2017/04/24/musings-on-the-owasp-top-10-2017-rc1-pt2/
https://snyk.io/blog/owasp-top-10-breaches/

I want to point out that we probably should include impact as that's part of a traditional risk, but we also need to be fair to all data participants when weighting supplied data. Our decision  will be documented for 2017, and we will obtain advice for 2020, 2023.

Finally, we worked on what the sessions will be. Considering the decisions taken in consensus, it will not be possible to release an RC2 this week, especially if we take more data. So we will return to looking over the A7 on Tuesday afternoon and A10 on Wednesday morning sessions. These are new forward looking items, and may be with sufficient disclosure and possibly a bit of rewording or re-ordering, we might be able to include them. Let's work it out. Please participate.


### Session 1  Data Weighting

This was a great session, where we agreed on what's staying and the "why" weighting and normalization.

There will be a second data call, ending on August 25. If you can provide data in the same format as found here (https://github.com/OWASP/Top10/blob/master/2017/datacall/OWASP%20Top%2010%20-%202017%20Data%20Call-Public%20Release.xlsx), that would be great. We are looking for large and small data sets - tool or human driven, we want it all. We will get that out widely once I have a a chance to talk it over with Foundation Staff. I will reach out to those who have volunteered recently, but there will be a widespread and coordinated social media blitz once we're ready to do it. I want this to be a trial run for the OWASP Top 10 2020 data collection so we can learn from it as well.

I will work with Brian Glas to define a set of 5-10 "on the cusp" / forward looking inclusions and let the community decide the fate of A7 / A10. Depending on the risk rating of the issues that are likely to be considered (XXE, Serialization, etc.) may mean A7 and A10 move around a bit.

Thirdly, I will work with Brian Glas and others to help define not only the final weighting for 2017, but some interesting questions for the 2020 data call, so basically, what could be done better for next time. We have agreed in this session, it's too late to change the data collection as we've already collected a lot of data.

Finally, we decided on a deadline for the next release of the OWASP Top 10 2017 - late November, just before Thanksgiving. I will try to get it out the week before. This drives various dates before then. We are looking for a relatively final release candidate in October to make sure that the data has had time to be analysed and included.

- We are keeping 8 (A1, A2, A3, A4, A5, A6, A8, A9) - consensus view
- Data call open immediately to August 25
- Data format is to be the same for the 2017 data call for any additional data
- Get enough data for repeatable data calls in later years
- In conjunction, survey community to develop the two forward looking items, also August 25
- Compile a survey by June 30 (Brian Glas / AJV + anyone),
- November 25, 2017


### Session 2 Review of A7 (and A10)

Dave Wichers took us through how A7 and A10 came to be, and despite initial skepticism, this one really grew on me. The number of times I've performed a full throttle pen test and the client hasn't detected me or even noticed I'm now an admin with all the data is a bit worrying, so as we've decided that up to two forward-looking issues are to be reserved per edition, I am in agreement with this issue now. However, we are still going to do the data call and it might still miss out or be made into a lower priority. We will see.

I added in all of the feedback that Dave Wichers had. If any feedback is missing, please log it to Github.

### Agreed outcomes
- Rename the section to Insufficient Attack Preparation or Insufficient detection and response
- Ensure that products and services are OWASP aligned, e.g., name OWASP projects and remove commercial offerings
- This is an "app" problem, helps dev and ops to work together, and should encourage. Nothing about ops in it, first devops issue. Might add more to existing text to make it more aligned with the devops movement

### Still in the air
- Dave Wichers suggests we release an intermediate RC2 this month, RC3 later in the year and document that process and dates
- I am moving country and may not achieve this in June; however, I want to do weekly releases or just track master on Github.
- I will make a decision on this depending on how busy I am. I have to be realistic as much as I want the issues documented in Github taken care of.

Torsten suggested we use a Top 10 for Developers. I will follow up with him to find this and also to think about OWASP Top 10 for Defenders to complement OWASP Proactive Controls / OWASP Top 10 Risks. This is not decided or an agreed outcome.

### Review of the OWASP Top 10 RC1

If you want to spend time reviewing the current draft, please do so, and provide feedback here:

https://github.com/OWASP/Top10/issues

Please only one issue per area (i.e. "F" or "A3"), with the format of "what is wrong", "argument or data that backs your change", and "proposed change". If it's just a small typo, spelling error, or minor edit, no argument data is required.  


### End of the OWASP Top 10 track

The rest of the week is free time. Thank you to everyone who participated in person and remotely. We had a few audio issues, but once video was dropped the audio impoved.

We have made it to a point where action items need to be done by me (Andrew) and Brian Glas on the data call and editing the issues in GitHub. I don't want to waste people's time as there are so many great sessions on.  I hope attendees who wanted to attend the OWASP Top 10 sessions can find other tracks that interest them.
