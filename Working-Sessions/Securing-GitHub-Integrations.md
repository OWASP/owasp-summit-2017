---
layout: blocks/working-session
title: Securing GitHub Integrations
type: workshop
---

As more and more services are integrated with GitHub, companies public and private repos are being exposed to a much wider set of attackers and threats.

At the moment the GitHub Security model does not allow the granularity required to control this access (for example read-access to only one repo), which means that the only choices tend to be either:

 a) provide no access and not use the 3rd party service (which ironically might be providing a security service)

 b) give that 3rd party service full access to public and private repos (i.e full control to modify the code)

**To Invite:**

* GitHub Security Team and developers
* 3rd party service providers: Travis, SNYK, Codiscope, Node Security, ....
* GitHub corporate users which large (hundreds) numbers of GitHub repos

**Notes**

Email exchange with Github on the topic of having multiple Github Accounts

> Since you don't allow the control of which repos to expose to 3rd party services, the only choice we have (vs giving them full access to all public and private repos) is to create a separate account for those services.
>
> Note that this is what is currently being recommended by those service providers, see for example https://twitter.com/snyksec/status/791922582584856577
>
>It would be great if the GitHub Security team could work with organizations like OWASP and its community in finding a way to improve the current situation (which doesn't scale and is bound to back-fire when one of those service providers is comprised, exposing thousands of customers private repos)
