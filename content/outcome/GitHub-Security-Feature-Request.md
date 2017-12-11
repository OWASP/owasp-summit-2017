---
title          : GitHub Security Feature Request
working-session: Securing GitHub Integrations
---

The Open Web Application Security Project (OWASP) is a non-profit online community which creates freely-available articles, methodologies, documentation, tools, and technologies in the field of web application security.

From 12 to 16 June 2017, 150 leading web application security experts from the UK, Europe (EU and non-EU), North and South America, the Middle East, India, and Singapore, attended the OWASP Summit in Woburn, Bedfordshire, UK.

During our daily sessions, and subsequent breakout meetings, GitHub security was discussed and our experts came up with several feature requests designed to improve the security of GitHub integrations.

The amount of work our members produce using GitHub is proof of how highly we regard the service.

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
- Scope for accessing the commit status

### Use cases:

- Users (repository owners) who want to allow access only to what's necessary, and not full access.
- Integrators (Oauth apps) who only want to ask for access to necessary resources.

### Improved Audit Trail

As administrators we would like an organisation-wide audit trail (GitHub Online), and better visibility into the activity of users (GitHub Enterprise).

Best regards

Owasp Summit 2017




## Next steps

- Deliver this letter to GitHub
- Create a communication channel between GitHub and Owasp Community (Slack?)
- Start mapping out the technical implementation and workflow for this solution
