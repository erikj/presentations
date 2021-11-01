# Describe

TODO: Skip? I didn't find this section useful

!SLIDE

# Application-Level Profile Semantics (ALPS) header

```yaml
alps:
  version: '1.0'
  title: "Onboarding API"
  doc:
  type: "markdown"
  value: "This is the ALPS document for BigCo's **Onboarding API**"
descriptor:
  # vocabulary properties
  - id: "identifier"
    type: "semantic"
```

!SLIDE

# ALPS Actions

```yaml
# actions
  - id: startOnboarding
    type: unsafe
  - id: collectCompanyData
    type: safe
  - id: SaveToWIP
    type: idempotent
```


!SLIDE

# ALPS Person Description

```yaml
descriptor:
- id: person
  type: semantic
  descriptor:
  - id: givenName
    type: semantic
  - id: familyName
    type: semantic
  - id: email
    type: semantic
  - id: read
    type: safe
    rt: person
```
