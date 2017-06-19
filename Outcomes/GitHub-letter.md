---
layout   : blocks/page-content
title    : GitHub letter
---


##  Security Feature Request to GitHub

### GitHub letter

### RE:  Security Feature Requests to GitHub

The Open Web Application Security Project (OWASP) is a non-profit online community which creates freely-available articles, methodologies, documentation, tools, and technologies in the field of web application security.

From 12 to 16 June 2017, almost 100 leading web application security experts from the UK, Europe (EU and non-EU), North and South America, the Middle East, India, and Singapore, attended the OWASP Summit in Woburn, Bedfordshire, UK.

During our daily sessions, and subsequent breakout meetings, GitHub was discussed and our experts came up with several feature requests designed to improve the security of GitHub integrations.

The amount of work our members produce using GitHub is proof of how highly we regard the service.

We want GitHub to be secure, and to support GitHub security through our community contributions where possible such as our members contributions to the bug bounty program (#1, #2 - Bug bounty)

As more services are integrated with GitHub, the public and private repositories of different companies are exposed to a wider set of attackers and threats.

The following feature requests were raised during the OWASP Summit sessions:

## Granular Repository Access Control
Currently, the GitHub security model does not allow the granularity required to control (limit) access to specific repositories. It is all or nothing.
This imposes unnecessary risks on both users and integrators. As it stands, choices tend to be limited to either:
- Provide no access to 3rd party services (which ironically might provide a security service).
- Give 3rd party services full access to public and private repos (i.e., the 3rd party has full control to modify the code).

The recently announced v4 API, supporting GraphQL didn't solve the problem. While GraphQL introduced many improvements in terms of efficiency and scale, the security model was unchanged.
We believe that more granular OAuth scopes will improve the security for both users and integrators, namely:
- Allow access to a specific repository (currently it's all repositories of an org, or nothing)
- Allow read-only access to a repo (currently it's `read/write` or nothing)
Scope for accessing the commit status

### Use cases:
- Users (repository owners) who want to allow access only to what's necessary, and not full access.
- Integrators (Oauth apps) who only want to ask for access to necessary resources.

### Improved Audit Trail
As administrators we would like an organisation-wide audit trail (GitHub Online), and better visibility into the activity of users (GitHub Enterprise).


Signed,
_________,  _____________, ___________
Signature     Name                   Date



References:
#1, #2, #3 - Travis CI, #4 - Zendesk




## Notes/Unused text:
Our experts raised concerns that the compromise of an existing GitHub integrations would halt the multiple integrations that exist (a number of security - DEVELOP).

We want to keep GitHub safe from attack by a third party, something that could have a negative impact on the many people who use GitHub for any number of tasks/reasons.

We want GitHub to be secure
We are worried about a compromise of an existing GitHub integration which will put a brake on the multiple integrations that exist (a number of security).
The lack of granularity of the permissions is actually hurting security today.
How can we work together?

OWASP Summit 2017 would like to engage with GitHub to take the conversation forward.  We feel there is a good fit between our mission and that of GitHub.  We are happy to work with you to design these new features.

We would love to help in designing and testing these new features.

OWASP Summit GitHub session participants would like to help GitHub.

Sherif’s points:
Who are we?
What can we provide to Github? Best practices
Writing code
Assessments
Tutorials
Why are we doing this? -basically an extensions of their security team and a continual conversation between the security and developer community
What issues to consider right now
How to get in touch / next steps



Dear Github representative,

Introduction, raw notes:
World loves github, we love github
GitHub platform has become the world's source code repository
We at The Open Web Application Security Project (OWASP) care deeply about security
So does Github, we acknowledge and appreciate that (#1, #2 - Bug bounty)
We propose a conversation between GitHub and OWASP for improving the security of Github integrations

As more services are integrated with GitHub, the public and private repositories of different companies are exposed to a much wider set of attackers and threats.

Currently, the GitHub security model does not allow the granularity required to control access (for example read-access to only one repo), imposing unnecessary risks on both the users and the integrators. As it stands, choices tend to be limited to either:

Provide no access to 3rd party services (which ironically might provide a security service)
Give 3rd party services full access to public and private repos (i.e., the 3rd party has full control to modify the code).


Outroduction raw notes:
We’re eager to start a conversation and work together
