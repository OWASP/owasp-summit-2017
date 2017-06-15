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

#### Synapse/Takeaways

##### Delivery Service (External)

###### Threats 
- Fake Delivery Services 
- Tampering of Quantity 
- Reproduction of Confirmation Response
- Reversal of Data Direction. 

###### Assumptions 
- TLS is used
- Treat Models Exist for TLS
- Paid Service
- A Quote-Flow is generated.

##### Juice Shop User (External)

###### Threats 
- User Authentication
- Audit Trail for User Activity 
- Account Take-Over (Email Confirmation)
- Admin Console Available due to Lack of Authentication 
- Admin Console is obfuscated

###### Assumptions 
- TLS is used
- Treat Models Exist for TLS
- User is authenticated 

##### Email Service (External)

###### Threats
- Service is misused
- Juice Shop sends Malicious Emails
- Connected to the Correct Service
- BCC Abused
- HTML Body Injection
- Header Injection 
- Juice Shop sending Spam
- Email Message Tampering
- Sent Confirmation
- Sensitive Data sent in Emails
- Tracking Mechanism (Privacy)

###### Assumptions
- Rest API
- TLS is used
- Treat Models Exist for TLS
- Delivery Confirmation
- Validated Reputation 

##### Invoice Tracking (Internal)

###### Threats
- Unauthorised access to the invoice service
- Page is obfuscated
- Discouragement of business sensitive data (Prices, Quantities) 
- Discouragement of User Sensitive Data
- Audit Trail of the Invoice
- Manipulation of Invoice Data 
- Logging of Read Access
- Screen Scraping 

###### Assumptions
- Page is within the application 
- User is authenticated 
- Used only for delivery services
- Not built for user invoicing 

#### Takeaways
Went through the user story handling the address lookup delivery service
Identified threats to the service that threat model templates need to be created for such as TLS, Email etc.
We encountered friction of what level of threats we should be looking at.
 
## Who

... target audience ...

--- 

## Working materials

Here are the current 'work in progress' materials for this session 

(please add as much information as possible before the sessions)

### Content

...add content...
