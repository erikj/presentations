# Design

!SLIDE

# Design Thinking

"match people's needs" with a "viable business strategy."

!SLIDE

# Jobs To Be Done

!SLIDE

# The API Design Method

> This API design method consists of four steps:
> 
> - Descriptor
> - Diagram
> - Definition
> - Documentation

!SLIDE

# Descriptors

Examples:

Element: `companyName`

Action: `approveUser`

Normalization and validation:

[https://schema.org](https://schema.org)

(More oriented around business, events, health care and biology)

!SLIDE

# Workflows

User and API Stories + Descriptors => Workflows

Workflows => Sequence Diagrams

!SLIDE

# WebSequenceDiagrams editor

https://www.websequencediagrams.com/#

Author created a node cli application, `wsdgen`, that stores txt (input) files locally, and uses WSD API to generate diagrams, then stores them locally.

Mitigates data loss that I experienced using web editor

!SLIDE

# [WebSequenceDiagrams](https://www.websequencediagrams.com)

[txt format](https://www.websequencediagrams.com/examples.html)

```
title BigCo, Inc. Onboarding API
home->+WIP: startOnboarding
WIP->+companyData: collectCompanyData
companyData-->-WIP: saveToWIP
WIP->+accountData: collectAccountData
accountData-->-WIP:saveToWIP
WIP->+activityData: collectActivityData
activityData-->-WIP:saveToWIP
WIP-->+finalizeWIP:completeOnboarding
finalizeWIP->-home:goHome
WIP->+cancelWIP:abandonOnboarding
cancelWIP-->-home:goHome
```

!SLIDE

# [WebSequenceDiagramms](https://www.websequencediagrams.com)

![BigCo Onboarding API](images/bigco-onboarding-api.png)
