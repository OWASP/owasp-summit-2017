---
layout       : blocks/working-session
title        : Identity and Access Management for REST APIs - REST Security Cheat Sheet
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

### Synopsis & takeaways

REST IAM

**Discussion**

- Current section doesn't make sense, makes lot of upfront assumptions
- Prefer time-limited tokens to sending credentials with every request
- Tokens should be short-lived and scoped
- Long-running processes still need to be identified and authorised
- Exchanging short-lived tokens for longer-lived tokens with narrower scope - narrow scope is a good principle anyways - principle of least privilege
- Complexity of implementation is a consideration and trade-off to consider - more likely to get it wrong if complex
- Need to at least address the simple case and offer good advice
- Signed bearer tokens are an interesting idea

**Outcomes**

- Use simpler terms: user, api, application - good enough for most scenarios and more comprehensible - guideline should outlive the specific schemes
- Glossary of terms to clarify our use of terms like credentials, api keys, ...
- Need to list the different common scenarios (use cases), providing guidelines for each, e.g.:
- Application consuming an api without a separate identity provider - api issues credentials/secret/mutual ssl securely - supplied on requests in an authorisation header over secure channel, e.g. HTTPS - application must be able to keep the credentials secret, e.g. not in public repositories, encrypted in configuration, ...  api could use internal identity (authorisation) provider - application not aware of an IDP - one-legged
- Application calling multiple APIs with shared identity provider (application is aware of the IDP) - two-legged c.g. OAuth client credential grant - microservices scenario
- User (resource owner) and application (client) and api - OAuth three-legged case - adds authorisation claims
- As above but api calls api - no way to prevent api propagating rights illegitimately - JWT or signing bearer tokens is one way to mitigate this
- Fine-grained resource control 


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
* CSRF protection cannot be achieved in a multi-client REST service with a CSRF token. Origin header should be mandated and checked with configured list of allowed origins.
* Direct object references are fine - this is how you point to a resource. It is just that access to that resource needs to be protected with an access token.
* Input validation section is hard to understand. The bottom line is that any data included in the call needs to be output encoded before being used in processing the request.
* Drop references to parsing XML - I assume no-one seriously wants to do that.
* AFAIK, JWT *cannot* be used to guarantee message integrity.
* A couple of important topics are missing and should be added:
    * CORS
    * HoK
