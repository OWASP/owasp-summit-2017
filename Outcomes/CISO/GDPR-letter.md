---
layout   : blocks/page-content
title    : GDPR and DPO AppSec implications
---

_Add recepients_

_Add intro text_


## Questions



Clarifications

PII
In the event of a data breach when the IP address is an Indicator of Compromise (IOC), and that IP address is not specifically tied to a user, is it still considered PII?
If a third party is used to provide a component of your product, do you need to anonymize/encrypt PII data? If so, how?  What are the approved methods?
Supplier
Given the following scenario: An organisation uses a free tier (or educational/charitable) version of Google Docs (or any other SaaS)  for storing lists of customers/benefactors.
Is Google considered a processor?
Does this comply with Article 28 - 3:  “Processing by a processor shall be governed by a contract or other legal act under Union or Member State law, that is binding on the processor”.
In this case, is Google required to notify the “controller” in the event of a breach?
To what extent in this case is the controller responsible for a breach of the processors’ systems
A processor has a breach and takes 48 hours to report to the controller. Does the controller then have 24 hours to notify the ICO, or does the time reset from time of notification?  (Article 33 - 1)
What is the definition of “large scale” when determining the requirement for designation of a data protection officer (Article 37 - 1)
How does this apply to the user of analytics systems (GA, Krux, etc.)?
Browser fingerprinting, URLs visited,  etc., clearly fall under the definition of “personal data” (Article 4 - 1) and “profiling” (Article 4 - 4)
If you are using a cloud provider and they the state server side is encrypted, is that enough? end 2 end (client side also) vs. server side encryption?


Definitions

What types of company are required to have a DPO?
How do we quantify what a breach actually is?

Operational Questions
Transfer of data (e.g., when accessing a free wifi, should a default routed VPN be used  when accessing customer data)?
Mandatory security on Wifi networks?
What type of evidence must be provided in the event of a data breach to prove due diligence (process vs. pentest reports)?
Subjects Rights
	The right to be forgotten.
Are data backups in scope?
What if the data backup is the source of the breach?


Data Breach Notification
You have to notify the ICO of a breach only where it is likely to result in a risk to the rights and freedoms of individuals – for example, if it could result in discrimination, damage to reputation, financial loss, loss of confidentiality, or any other significant economic or social disadvantage.

How do we triage a breach so that it is clear we have impacted an individual?
Do known secure cryptographic hashes being leaked online count as a breach (given a privacy impact assessment (PIA) which treats the risk as controlled)?

IP Address

Is an IP Address on its own PII?
Do you need consent to record an IP Address?
What is  “legitimate business context”?

As an IP address is not necessary unique to a person, at what point does it become PII? See the following scenarios:


IP address
IP address from known Proxy / TOR / UPA, etc.
IP address Known User (account)
IP address and timestamp
IP address and session cookie
IP address and browser type (footprint)
IP address and MAC address

Is an impact assessment a part of your actual cyber hygiene regime and overall cyber risk assessment?

Once legislation is enacted, is an impact assessment (or any changes made to systems/infrastructure since the enactment) retrospective?  Does it cover existing infrastructure, systems, and applications?

Are external parties required to report (responsible disclosure) ICO notification following the discovery of a vulnerability that resulted in the extraction of personal data that potentially is being exploited by malicious parties?

In the event of vulnerability discovery, how is the magnitude and sensitivity of personal data disclosure determined; what dictates disclosure to the ICO or regulator?

Are there safeguards (security measures) at ICO level to protect confidentiality and sensitivity of incident notifications? How is such information protected in transit/motion and at rest/storage?

How do you actively detect breaches?

How does active GDPR “policing” ensure you’ve closed a breach and what proof do you have to show  improvement to your system once a breach has happened.  Is this another PCI DSS scenario where the offending party has to pay for expensive consultants to come in and tell the offender how to put things right?  Can this be the penalty rather than a fine?

Does the compliance documentation (risk assessment) have to be available to the ICO prior to any breach or only after an incident.  How is commercially sensitive information made available?  Can it be published to all? (ED, clarify)

What happens to personal data deletion requests, does this apply to backups and archiving?  What about off-site archived data?  What happens when archived personal data is restored following a denial of service attack?  Is the data holder responsible for deleting from all locations?

What about consent?  How long is consent valid?  Do we need consent management in our application design or data models?

Who should be responsible for GDPR education initiatives?
Technical Leads
Legal Leads
Data Owners

Pseudonymisation - Consider a situation where an organisation hashes personal data (e.g., email address), is this still considered personal data even though it is not theoretically reversible?  What happens if and when we can break the technology and are able to reverse engineer (even collisions in SHA2 - 256?)?
