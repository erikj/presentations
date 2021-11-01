# Design

!SLIDE

# Design Thinking

"Match people's needs" with a "viable business strategy."

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

Element: `companyName`

Action: `approveUser`

Normalization and validation:

[https://schema.org](https://schema.org)

(More oriented around business, events, health care and biology.)

!SLIDE

# Workflows

User and API Stories + Descriptors => Workflows

Workflows => Sequence Diagrams

!SLIDE

# [WebSequenceDiagrams](https://www.websequencediagrams.com/) editor

Text format => diagram images

Author created a NodeJS cli application, `wsdgen`, that stores txt (input) files locally, and uses WSD API to generate diagrams, then stores them locally.

Mitigates data loss that I experienced using web editor.

!SLIDE

# [WebSequenceDiagrams](https://www.websequencediagrams.com)

[text format](https://www.websequencediagrams.com/examples.html)

<pre class="code-wrapper" style="font-size: 0.4em;">
<code class="plaintext hls">
title BigCo, Inc. Onboarding API
home->+WIP: startOnboarding(identifier)
WIP->+companyData: collectCompanyData(identifier, companyName, address,  email, telephone, status)
companyData-->-WIP: saveToWIP(identifier, companyName, address, email, telephone, status)
WIP->-home:goHome
</code>
</pre>

![BigCo Onboarding API](images/short-bigco-onboarding-api.png)
