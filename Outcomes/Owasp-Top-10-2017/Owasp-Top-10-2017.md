---
layout   : blocks/page-content
title    : OWASP Top 10 2017
---


## Session 1: OWASP Top 10 Governance and rationale

In this first session, we talked about the history of the OWASP Top 10, and how it evolved over time. In 2004, there was no data backing the standard. In 2007, we used only CVE data for analysis, and we used our judgement to fit in CSRF as an issue. In 2010 and 2013, the forward-looking issue was out-of-date components, which represented a full 24% of all data breaches in one analysis of the OWASP Top 10 to breach data. Therefore, there should always be room for forward-looking inclusions.

**Audience is everyone in AppSec, not just developers**

The basis for the OWASP Top 10 is "risks". I have suggested we adopt the ISO 31000:2015 standard definition for risk, so that we have the same understanding as risk managers in most parts of the world.
We will document the rationale for the OWASP Top 10 on the wiki, and possibly part of it in the document this year. This will be the same rationale / process going forward for 2020 and 2023.
I will take a motion to the Board asking for a change to the Project Leader Handbook, where flagship projects will have a six-month grace period to obtain at least two leaders from two different firms to avoid perceptions of, or actual, vendor lock. There is no restriction on a single leader from a single company controlling a flagship project at the moment, so I want to de-couple the other issues from the independence issue.

There will be a transparent and documented decision to ensure that up to two of the OWASP Top 10 issues will be forward-looking, and that the community should drive the consensus for what they will be. I will open a discussion with OWASP leaders and elsewhere with a short vote on what the two Top 10 issues for 2017 should be, including the existing two issues, XXE and object serialization, and I'll figure one out from the also-rans of the data collection process.

## Session 2: OWASP Top 10 Data Collection Process

We talked about the way data is collected and analysed. For 2017, there was an open call for data, but it wasn't widely reported or pushed, and this might have resulted in fewer responses than we hoped for. We discussed the process in detail; if we use data scientists, can we use the existing data, and if we re-open the data collection. It was a valuable discussion, and I think it struck a good pragmatic balance. We want to drive a release this year, but RC2 will not come out this week, so we will not be running editing / creating sessions this week, but will instead work on collating more data.

## The outcomes from this session are:

A data collection process and timeline will be published to the Wiki to ensure everyone knows how data is collected and analysed, and when the next data call will be held. This will probably appear as an appendix to make sure that our process is transparent and open.

I will work on a process with foundation staff to ensure that we maximise publicity for the next data call in 2019. We discussed keeping it open all the time, but unless we can get a data scientist to volunteer, I doubt we could make use of that contribution. For smaller consultancies obtaining this data is already difficult, and we do not want people to be overly burdened by the data call.
A data call extension will be pushed out for interested parties. If data is roughly in the same Excel format as the existing call and provided by the end of July, I think we can use it.

For 2020, we will try to find data scientists to help us to improve our data methodology and analysis, so that for the non-forward-looking data at least, we can ensure that data drives inclusion.

Ordering will never be strictly data order; to provide continuity, there is a decision (which will now be documented) that if A1 ... A3 in 2010 are the same in 2017 but in a slightly different order, those will retain a previous order. This helps to map results year on year and prevents upheaval between years.

Feedback obtained from the OWASP Top 10 mail list will become GitHub issues to help with project transparency. If you have feedback, please provide it at GitHub: https://github.com/OWASP/Top10/issues

https://nvisium.com/blog/2017/04/18/musings-on-the-owasp-top-10-2017-rc1/
https://nvisium.com/blog/2017/04/24/musings-on-the-owasp-top-10-2017-rc1-pt2/
https://snyk.io/blog/owasp-top-10-breaches/

We probably should include impact as that is part of a traditional risk, but we also need to be fair to all data participants when weighting supplied data. Once we've decided, that will be documented for 2017, and we will obtain advice for 2020 and 2023.

We agreed it would not be possible to release an RC2 during the summit, especially if we take more data. Instead, we agreed to look over the A7 on Tuesday afternoon, and the A10 on Wednesday morning. These are new forward-looking items, and maybe with sufficient disclosure and possibly a bit of rewording or re-ordering, we might be able to include them. 


## Session Monday, PM-2: Data Weighting

This was a great session, where we agreed on what is staying, and on the "why" weighting and normalisation.

There will be a second data call, ending on August 25. Please provide data in the same format as found here (https://github.com/OWASP/Top10/blob/master/2017/datacall/OWASP%20Top%2010%20-%202017%20Data%20Call-Public%20Release.xlsx). We want large and small data sets - tool or human driven. We will circulate the call widely when I have discussed it with Foundation Staff. I will reach out to those who volunteered recently, and there will also be a widespread and coordinated social media blitz. Lessons learned from this data call will help the OWASP Top 10 2020 data collection.

Secondly, I will work with Brian Glas to define a set of 5-10 "on the cusp" / forward-looking inclusions and let the community decide the fate of A7 / A10. Depending on the risk rating of the issues that are likely to be considered (XXE, Serialization, etc.) may mean A7 and A10 move around a bit.

Thirdly, I will work with Brian Glas and others to help define not only the final weighting for 2017, but some interesting questions for the 2020 data call, what could be done better for next time. We agreed in this session that itis too late to change the data collection as we've already collected a lot of data.

Lastly, we decided on a final date for the next release of the OWASP Top 10 2017 - late November, probably just before Thanksgiving. I will try to get it out the week before. This will impact various dates before then. We are looking for a relatively final release candidate in October to make sure that the data has had time to be analysed and included.

- We are keeping 8 (A1, A2, A3, A4, A5, A6, A8, A9) - consensus view
- Data call open immediately until August 25
- Data format is to be the same for the 2017 data call for any additional data
- Get enough data for repeatable data calls in later years
- In conjunction, survey community to develop the two forward-looking items, also August 25
- Compile a survey by June 30 (Brian Glas / AJV + anyone),
- November 25, 2017


## Session: Review of A7 (and A10)

Dave took us through how A7 and A10 came to be, and managed to overcome my initial skepticism. The number of times I've performed a full throttle pen test and the client didn't detect me or even notice I was an admin with access to all the data is a bit worrying, so I think as we've decided that up to two forward-looking issues are to be reserved per edition. I agree with this issue now. However, we are still going to do the data call and it might still miss out or be made into a lower priority. We will see.

I added in all the feedback that Dave received. If any feedback is missing, please log it to Github.

## Agreed outcomes

 - Rename the section to Insufficient Attack Preparation or Insufficient Detection and Response
 - Ensure that products and services are OWASP aligned, e.g. Name OWASP projects and remove commercial offerings
 - This is an "app" problem, helps dev and ops to work together, and should encourage. Nothing about ops in it, first it is a devops issue.
 - Might add more to existing text to make it more aligned with the devops movement

## Items discussed but not agreed

 - Dave suggests we release an intermediate RC2 this month, RC3 later in the year and document that process and dates
 - AJV notes he is moving countries and may not achieve this in June. AJV wants to do weekly releases or just track master on Github
 - I will decide on this depending on how much capacity I have. I must be realistic here as much as I want to resolve the issues documented in GitHub 
 - Torsten suggested we use a Top 10 for Developers. I will follow up with him to find this, and to think about OWASP Top 10 for Defenders to complement OWASP Proactive Controls / OWASP Top 10 Risks. 

## Review of the OWASP Top 10 RC1

If you want to spend time reviewing the current draft, please do so, and provide feedback here:

https://github.com/OWASP/Top10/issues

Please only one issue per area (i.e. "F" or "A3"), with the format of "what is wrong", "argument or data that backs your change", and "proposed change". If it's just a small typo, spelling error, or minor edit, no argument data is required.  

## End of the OWASP Top 10 track

- Brian Glas and I will act on the data call and editing the issues in GitHub.

