---
layout       : blocks/working-session
title        : IAM for REST APIs
type         : workshop
track        : Owasp Projects
related-to   : Cheat Sheets, A10 - Underprotected APIs
technology   : REST
status       : Final stage; missing working materials
when-day     : Fri
when-time    : AM-1
location     : Main-Room
room-layout  : Cabaret
organizers   : Johan Peeters
participants : Dinis Cruz, Robert Morschel, Steven Wierckx
---

## Why

REST APIs are ubiquitous, yet there is a lack of solid insights into securing REST APIs. The OWASP cheat sheet is notably out of date, focusing on issues such as session management that reflect a past where REST services were merely a data layer for simple web applications. Contemporary REST APIs serve a multitude of consumers and cover a wide variety of profiles. The game has changed and we need to rethink the security measures we take to protect the APIs, consumers, and end users.

## What

- Which current authN and authZ standards make sense in the REST ecosystems? In which scenarios?
- Are there any tried-and-tested implementations of those standards?
- Are there any common vulnerabilities?
- Are there any implementation/integration guidelines?

### Candidate technologies to try out

- OAuth 2.0
- OpenID Connect
- Oz
- UMA
- JWT/JOSE
- HoK

## Outcomes

- A new version of the REST Security Cheatsheet.
- One or more demonstrators.

## Who

The target audience for this Working Session is:

- Back-end REST services developers
- SPA developers
- Mobile developers
- Authors of the REST Security Cheat Sheet


## References

- [REST Security Cheat Sheet](https://www.owasp.org/index.php/REST_Security_Cheat_Sheet)
- [Protect your REST APIs with JWT tokens](http://yo1peeters.blogspot.com/2017/06/protect-your-rest-apis-with-jwt-tokens.html)
- [In the (back)end, JWT is all that matters](http://yo1peeters.blogspot.com/2017/06/in-backend-jwt-is-all-that-matters.html)

---

## Working materials

Here are the points that I think need to be addressed in the cheat sheet. Give me feedback ASAP and I will start making changes on the OWASP site:
* drop references to session management. At most mention that REST services should be stateless
* Security-sensitive REST services should consume a signed JWT access token for authN and authZ
* Current implementations only support JWT bearer tokens. Hence REST APIs that require authN/Z should only be available via an HTTPS URL. HSTS flag should be set
* API key can be useful in an attempt to identify the client. In many cases, it is a bit of a stretch to expect authentication from an API key as publicly available clients cannot reliably keep the key secret
* An access token is issued to a specific client to signal that the resource owner grants scoped access to the resource to that client for a given time period. The *scope* specifies the permissible operations, e.g. can the API consumer read the email address or also change it? Hence the REST service should at least check whether
     * the token is issued by a trusted issuer, sometimes called a *Security Token Service* or *authorization server*
     * the token is currently valid
     * the resource owner granted access to one of more resources on this resource server
     * the resource owner granted access to the API consumer invoking the services
     * the requested operation is in scope.
* Drop references to CSRF. When a REST service has multiple clients, some of which do not have access to the CSRF tokens issued, that service has no role in protecting against CSRF - this is exclusively the responsibility for the client.
* Direct object references are fine - this is how you point to a resource. It is just that access to that resource needs to be protected with an access token.
* Input validation section is hard to understand. The bottom line is that any data included in the call needs to be output encoded before being used in processing the request.
* Drop references to parsing XML - I assume no-one seriously wants to do that.
* AFAIK, JWT *cannot* be used to guarantee message integrity.
* A couple of important topics are missing and should be added:
    * CORS
    * HoK
