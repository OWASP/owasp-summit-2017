---
layout       : blocks/working-session
title        : Securing GitHub Integrations
type         : workshop
track        : DevSecOps
status       : done
when-day     : Wed
when-time    : PM-2
location     : Room-2
organizers   : Danny Grander
participants : Francois Raynaud, Dinis Cruz
outcomes     : mapped
---
## Why

This Working Session will examine the need for secure GitHub integrations.

As more and more services are integrated with GitHub, the public and private repos of different companies are being exposed to a much wider set of attackers and threats.

Currently, the GitHub security model does not allow the granularity required to control access (for example read-access to only one repo). This means that choices tend to be limited to either:

 a) provide no access and no use of the 3rd party service (which ironically might provide a security service)

 b) give the 3rd party service full access to public and private repos (i.e the 3rd party has full control to modify the code)

## What

While we are using github as the platform for OWASP projects source code, we need to talk about the security of the code in order to provide integrity checks and other security controls needed.

## Outcomes
- Map out the various risks of the current granularity access
- Reach out to Github with a request for comment

## Who

The target audience for this Working Session is:

* GitHub Security team and developers
* 3rd party service providers: Travis, SNYK, Codiscope, Node Security, ....
* GitHub corporate users with large (hundreds) numbers of GitHub repos

## Note

Email exchange with GitHub on the topic of having multiple GitHub Accounts:

> Since you don't allow the control of which repos to expose to 3rd party services, the only choice we have (vs giving them full access to all public and private repos) is to create a separate account for those services.
>
> Note that this is what is currently being recommended by those service providers, see for example https://twitter.com/snyksec/status/791922582584856577
>
>It would be great if the GitHub Security team could work with organizations like OWASP and its community to find a way to improve the current situation (which doesn't scale and is bound to back-fire when one of those service providers is compromised, exposing thousands of customers' private repos).


## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions)

### Content

- Github Risk
- Github Integrations
- Github Controls
- Cheatsheets
