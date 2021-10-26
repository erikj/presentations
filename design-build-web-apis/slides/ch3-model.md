# Model

!SLIDE

# Norman's Action Lifecycle

![Norman's Action Lifecycle](images/normans-action-lifecycle.png)

!SLIDE

# User Stories

*As an \<actor> I want to \<action> so that \<reason>*

https://www.mountaingoatsoftware.com/agile/user-stories

!SLIDE

## API Action Lifecycle: The RPW Loop

![Request Parse Wait Loop](images/request-parse-wait.png)

!SLIDE

# Modeling Synopsis

Ask questions of stakeholders

> Good designers never start out by trying to solve the problem given to them: they start by trying to understand what the real issues are. - Donald Norman, The Design of Everyday Things

Map out the API workflow and identify the internal cycles

Write an API story document - narrative

Create and preserve notes and diagram

!SLIDE

# API Stories

- Purpose
- Data
- Actions
- Rules
- Processing

!SLIDE

# Example

*As an account manager, I was to store a company in the database to track an account.*

> Home
>
> -> Company
>
> -> CreateCompany(companyName, email, phone, status)
>
> -> CreatedCompany
