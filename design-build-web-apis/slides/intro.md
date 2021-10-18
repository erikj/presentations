# [Design and Build Great Web APIs](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/)

Mike Amundsen, The Pragmatic Bookshelf

!SLIDE

# [Design and Build Great Web APIs](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/)

- I: Getting started
- II: Design Phase
  - Model, Design, Describe
- III: Build
  - Sketch, Prototype, Build
- IV: Release
  - Test, Secure, Deploy, Modify

!SLIDE

# [Design and Build Great Web APIs](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/)

## "In Reality"

- Narrative: linear approach
- Book: loops of iteration, jump back and forth between modeling, design and implementation

!SLIDE

# [Design and Build Great Web APIs](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/)

## Approach

Uses example of developing an API for onboarding new clients at a company, "BigCo"

Standalone services

- Company: a client
- Account: the affiliation between BigCo and client
- Activity: interactions between BigCo and client "mails, phone calls, office visits," etc.


!SLIDE

# A Brief History of HTTP

1989: Tim Berners-Lee, CERN

2021: Ubiquitous application and data-interchange framework

Message passing

- Request Messages
- Response Messages

!SLIDE

# HTTP Request Messages

- Start line: method + target, eg. a URL / path
- Headers: user agent; content type and length; accept document types (`text/html`), language, encoding
- Body: request or response data


```
POST /create-user HTTP/2
Host: www.example.com
Content-Type: application/x-www-form-urlencoded
Content-Length: 46
name=mike&email=mike@example.org&sms=123456789
```

!SLIDE

# HTTP Reponse Messages
!SLIDE

# HTTP Methods

- `GET`: typical web request, get data from server
- `POST`: form submission for new entity
- `PUT`: form submission to update entity
- `DELETE`: form submission to remove an entity

API handles interactions w/ datastore, could be relational (SQL) database, filesystem, document database, key-value database, etc.

!SLIDE

# Representational State Transfer (REST)

!SLIDE

# HTTP API Responses

Typically Javascript Object Notation (JSON)

```json
{
  key: "value",
  a: [1,2,3]
}
```
