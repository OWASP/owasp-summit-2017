---
layout       : blocks/working-session
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

#### Delivery Service (External)

**Threats**

- Fake delivery services
- Tampering of quantity
- Reproduction of confirmation response
- Reversal of data direction

**Assumptions**

- TLS is used
- Threat models exist for TLS
- Paid Service
- A Quote-flow is generated

#### Juice Shop User (External)

**Threats**

- User authentication
- Audit trail for user activity
- Account takeover (email confirmation)
- Admin console available due to lack of authentication
- Admin console is obfuscated

**Assumptions**

- TLS is used
- Threat models exist for TLS
- User is authenticated

#### Email Service (External)

**Threats**

- Service is misused
- Juice Shop sends malicious emails
- Connected to the correct service
- BCC abused
- HTML body injection
- Header injection
- Juice Shop sending spam
- Email message tampering
- Sent confirmation
- Sensitive data sent in emails
- Tracking mechanism (privacy)

**Assumptions**

- Rest API
- TLS is used
- Threat models exist for TLS
- Delivery confirmation
- Validated reputation

#### Invoice Tracking (Internal)

**Threats**

- Unauthorised access to the invoice service
- Page is obfuscated
- Discouragement of business sensitive data (Prices, Quantities)
- Discouragement of user sensitive data
- Audit trail of the invoice
- Manipulation of invoice data
- Logging of read access
- Screen scraping

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
