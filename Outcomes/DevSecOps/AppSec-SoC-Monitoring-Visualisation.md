---
layout  : blocks/outcome
title   : AppSec SOC Monitoring Visualisation
---

## Outcomes

This Working Session will publish a document containing the following

- List of best practices for capturing logs and feeding them into central locations
- List of best practices for using tools like ELK or Splunk
- Guidelines for visualising SOC data collected in actionable/meaningful graphs
- Tricks, tips and ideas 

### Synopsis and Takeaways

 The working session produced a list of best practices for capturing logs and feeding them into central locations. 

#### What do we put on a list of best practices? (discussion)

- Good RegEx tutorials 
- Plug-ins pages links for parservs
- Syslog integration procedure
- Read the meta data, process for understanding 
- Feed MISP with threat intelligence information 

#### Best Practice list

- Check time synchronisation of NTP servers 
- Evaluate which alerts can be converted into automatic or manual actions 
- Send your CI / CD information to the SOC

#### Guidelines for visualising SOC data collected in actionable/meaningful graphs

- Correlation of events
- Out of bounds activities 
- Main DC KPPI
- Availability monitoring 
- False positive feedback and deeper understanding
- From Dev perspective, false positives cause delays, visualising them makes them easier to filter
- Modify test/ alerts for improvement  
- Provide feedback for not-fixed alerts 
- Add some risk management accept, mitigate, or transfer 
- Generate and maintain a baseline
- Detect anomalies 
