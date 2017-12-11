---
title        : Threat Modeling by Feature and Layer
type         : workshop
track        : Threat Model
technology   :
related-to   :
status       : draft
when-day     : Thu
when-time    : AM-1
location     : Room-6
organizers   :
participants :
---

...intro text...

## Why

...why text...

## What

...what text...

## Outcomes

### Synopsis/Takeaways

#### Address Lookup (external entity)

**Threats**

- (S) Fake address lookup service
    - possibly through DNS poisoning
    - goals might be either to siphon private data of JuiceShop customers or return bogus addresses
 - Mitigation: TLS with mutual authentication
    
- (S) Fake JuiceShop - someone else (possibly including the address lookup service itself) sending requests on behalf of the JuiceShop
- (R) Malicious data in these requests - can JuiceShop be liable if addressing service incures damage
    
- (D) If service is rate-limited, the threat above will lead to DoS.

- (S) Customer enters fake address, leading to "craiglist" attack

- Address lookup is malicious, leading to:

- (T) Trucks being sent to fake address
- (T) Bad data sent back, violating assumed response format, leading to range of problems with JuiceShop depending how vulnerable the JuiceShop parser is (from DoS to RCE)

- (D) Customers or maybe fake JuiceShop requests include bad addresses (bad as in associated with drug trade, terrorists etc), hoping to trigger alerts in some security analytics, leading to DoS by government.

- (I) Eavesdropping on communication will break privacy regulations, GDPR etc.
    Mitigation: TLS.

- (D) If the service is synchronous and unavailable or slow, would it result in DoS in JuiceShop?

- (I) If JuiceShop authenticates with keys, how secure is key storage.


**Assumptions**

- Address resolution service is paid (or at least rate-limited, with Juice shop having a specific quota)
- The API sends (name, address), gets back either:
  - address if it was correct
  - list of potential addresses if the resolution was a bit fuzzy
  - nothing if failed to resolve
- No outbound rate limit, so a fuzzy request can result in a large list of matches


#### Delivery Service (External)

**Threats**
- Fake delivery service spoofs the real one; can collect data on JS customers, interfere with delivery
 -Tampering of quantity on wire
 - Repudiation of confirmation response & reverse, repudiation of request for truck roll
 - Send bad pricing: either too high to see if it gets accepted, or too (this might be spoofing, repudiation, tampering, info disclose; we had several motivations)
 - (See Address Lookup for additional threats; many are similar)


**Assumptions**

- TLS is used
- Threat models exist for TLS
- Delivery service is a pay-for service
- This is an analysis of the quote flow, there is also a execute flow that needs to be threat modeled.


#### Juice Shop User (External)

**Threats**

- Weak user authentication allows the user to be spoofed easily (spoofing, EoP)
- No Audit trail for user activity exists (repudiation)
- Weak account management security allows account takeover, e.g. lack of email confirmation (spoofing, EoP)
- Admin console available due to lack of authentication (EoP)
- Admin console security relies on obfuscation (information disclosure)
- POST-SESSION: User is able to input malicious data (EoP)

**Assumptions**

- TLS is used
- Threat models exist for TLS
- User is authenticated

#### Email Service (External)

**Threats**

- Juice Shop sends malicious emails (spoofing+)
- Connecting to a fake service (spoofing)
- BCC header field is abused (tampering, information disclosure)
- Malicious data can be injected into the HTML body (tampering)
- Malicious data can be injected to the email headers headers (tampering)
- Juice Shop sending spam (spoofing+)
- Emails are not being sent (denial of service)
- Sent emails not confirmed appropriately by email service provider (repudiation)
- Sensitive data sent in emails (information disclosure)
- Email tracking mechanism is misused or abused (information disclosure / privacy)

**Assumptions**

- Rest API is used
- TLS is used
- Threat models exist for TLS
- Email service is only used for delivery confirmation
- Juice Shop has validated reputation of the email delivery mechanism

#### Invoice Tracking (Internal)

**Threats**

- (E) Unauthorised access to the invoice service
- (I) Page is obfuscated, but a determined attacker can easily find it
- (I) Disclosure of business sensitive data (Prices, Quantities)
- (I) Disclosure of user sensitive data (PII)
- (R) Audit trail of the invoice
- (T) Manipulation of invoice data
- (R) Logging of read access
- (I) Screen scraping (grab large volume of data)

**Assumptions**

- Page is within the application
- User is authenticated
- Used only for delivery services
- Not built for user invoicing

#### Takeaways

- Went through the user story handling the address lookup delivery service
- Threats were identified for the service that threat model templates need to be created for: TLS, e-mail etc.
- The discussion did not resolve the level of threat we should be looking at

![Whiteboard picture](https://raw.githubusercontent.com/OWASP/owasp-summit-2017/master/Working-Sessions/Threat-Model/whiteboard-photos/By-Feature-and-Layer.jpg)

## Who

... target audience ...

---

## Working materials

Here are the current 'work in progress' materials for this session

(please add as much information as possible before the sessions)

### Content

...add content...
