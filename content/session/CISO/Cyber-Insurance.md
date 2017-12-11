---
title        : Cyber Insurance
type         : workshop
owasp-project: no
track        : CISO
technology   :
related-to   : InfoSec Warranties and Guarantees
status       : done
when-day     : Wed
when-time    : PM-3
location     : Room-4
organizers   : Yan Kravchenko
participants : Dinis Cruz, Francois Faynaud, Fabien Thalgott
outcomes     : not-found

---

According to industry veteran and Chief of Security Strategy at SentinelOne, Jeremiah Grossman, the security industry must change. Today, security industry is one of the only businesses that does not offer any guarantees or warranties.
As a result, almost a third of all U.S companies have some kind of a cyber insurance coverage and PwC estimates that the market for cyber insurance will grow to $7.5 billion by 2020.

## Why

According to Grossman, companies spend $3.8 billion annually on traditional security equipment like AV, firewalls and intrusion detection, but they also spend $3.2 billion on cyber insurance.
This means that a lot of companies opt to spend their money on insurance when they get hit with a breach. But looking at the numbers from some of the biggest incidents, we can conclude that companies are not buying enough cyber insurance:
- Target breach cost the retailer $248 million, but the insurance company only paid out $90 million.
- Home Depot lost $43 million on its breach, with an insurance payout of about $15 million.
-  Anthem, which experienced a major breach in 02/2015, now has a policy in excess of $150 million,

This Working Session will focus on how well the cyber insurance market is working, and how cost-effective it is.


## What

 - Common cyber insurance terms and coverage
 - How insurance companies measure risk
 - Should insurance companies lead the need for common standards and labels?
 - Should governments provide/buy cyber insurance for its citizens and companies?
 - How can organizations like OWASP work with insurance companies?

## Outcomes
### Study of common cyber insurance coverage
Content Analysis of Cyber Insurance Policies: How do carriers write policies and price cyber risk?
https://custom.cvent.com/C674EF8FB0604BC9BF9B668FCA89DFEB/files/event/2FCD5F30B42F4C9CA06E17CF90A33A4C/2b17224650b04acfa1182127e09b3d37.pdf

### How COULD insurance companies measure risk?
There are a couple of different broad categories:
 - Events (botnet infections, evidence of spam/scanning/malware hosting)
 - Diligence (exposed services, how they are configured, etc)
 - User behavior
 - Some endpoint data points

Generally speaking all of the security signals coming out of a company are roughly correlated.  If a company is generally bad with their diligence, they also will have problems with botnet infections, user behavior and so on.  This is intuitive since a company who does not prioritize security will probably have a similar commitment to certificate management as they do patching and monitoring.  And it goes the other way, if a company is doing well in some areas they are probably doing well in others. Impact of application security in the equation has not been sufficiently studies, but is expected to fit into the corelation model.

Once studied, the Loss Exceedance Curves can answer the question of “how likely is it that my losses will exceed a specific amount” and will generally talk about probability in terms of “return years” which is an intuitive way to talk about probability.	 For example a 1 in 50 year event (written as 50 return years) is just 1/50 or 2% chance.

### How DO insurance companies measure risk?
Majority of the insurance companies are not using all the tools available to "measure" risk, and continue to make decisions on fairly subjective formulations.  In this way, the insurance industry is similar to how risk is measured in majority of the organizations (high/medium/low = based on how I am "feeling" at any moment).  The underwriter makes the risk assessment call and will either reject the applicant or tailor the policy to their perceived level of risk. 

There are three primary underwriting methodologies:

Selective Underwriting
 - Long application forms
 - Warranty app wording
 - Highly detailed review of Customer’s IT Systems
 - Narrow number of applicants qualify
 - Quotes manage risk by limiting the policy offerings: limits, deductibles, coverage based on Underwriting appetite of domicile, industry, size of risk, and app info
 
Collateral Customer Underwriting
  - Add Cyber extensions to the customer’s current policy
  - Additional premium is calculated as percent of policy premium
	
The Law of Large Numbers Underwriting
 - Premise is based on Macro data number of potential businesses creating a large pool of insureds & predictability
 - 85m possible insured entities vs. 250,000 (est.) cyber incidents
 - Remove barriers of purchase:
    - Simple application
    - Broad coverage rating based on domicile, industry, revenue and number of employees
    - Streamlined claims process & payment (focused on cyber time vs. natural time)
### Cyber Insurance Trends Worth Watching
Insurance companies realized that how the cyber event is being handled can have significant impact on the total amount of the claim.  Therefore, many companies are working to develop Cyber Incident Response services that come bundled with the policies.  This way, once an incident takes place, insurance companies can help to minimize the payouts by making sure events are handled appropriately and with all the necessary due-process.

## Who

The target audience for this Working Session is:

 - Insurance Companies
 - CISO

## Working materials

Here are the current 'work in progress' materials for this session (please add as much information as possible before the sessions):
- draft document about cyber insurance

## Content
- [Cyber security ratings for companies](https://www.ft.com/content/1cfd5d28-c26f-11e6-81c2-f57d90f6741a)
