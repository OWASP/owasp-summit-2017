---
title    : Security Guidance and Feedback in IDE.md
working-session : Securing GitHub Integrations
---
## Outcomes

This Working Session will create industry-wide security guidelines.

### Synopsis and Takeaways

#### Specific and targeted
- Address noise within an IDE – specific and targeted live analysis of code to highlight specific areas requiring attention rather than flooding developers with a long list of errors they will be unable to address; a filtering option may be useful to streamline the process of identifying security errors.

#### Accuracy 
- Feedback on vulnerabilities needs to be accurate particularly if it is a general security issue. However, there may be exceptions to these rules.
- Think carefully about when and where to highlight these exceptions to maintain the credibility of the tool.

#### Gamification
- Developers are competitive and want to maximise achievement. Introducing a scoring system may be a good way to do this: e.g., scoring unit test coverage on how it addresses security errors. 

#### Low resource consumption
- Many IDEs can be resource-intensive and development may involve virtualisation technologies that are also resource-intensive. Whatever is added to the IDE should not add to that load.

#### Dependency Scanning
- Do not limit your thinking to the code the developers are writing; think about code included from third party libraries or dependencies such as CVE scanners.

