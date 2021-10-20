# Web API Motivation

Ubiquity

- Contemporary websites and apps
- Robust tools and techniques
  - Web servers
  - Load balancers and high availability
  - Web-application frameworks
  - Security
- Third-party software, eg.
  - AWS, cloud-services APIs
  - InfluxDB: client-server interactions are over HTTP

!SLIDE

# Web API Skepticism

> "The Best Code is No Code At All"- [Jeff Atwood](https://blog.codinghorror.com/the-best-code-is-no-code-at-all/)

- Will a native client suffice? Eg. connecting directly to database.

- Is there something already written? OPenDAP, PostgREST, SDK, etc.

> "Microservices: 'I wish my method calls had more latency'" - [Aaron Patterson](https://twitter.com/tenderlove/status/1337483916492488705)

!SLIDE

# [Design and Build Great Web APIs](https://pragprog.com/titles/maapis/design-and-build-great-web-apis/)

Mike Amundsen, The Pragmatic Bookshelf

> An internationally known author and speaker, Mike Amundsen travels the world consulting and talking about network architecture, web development, and the intersection of technology and society. He works with companies large and small to help them capitalize on the opportunities APIs and microservices present for both consumers and the enterprise.

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
- In practice: loops of iteration, jump back and forth between modeling, design and implementation

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

# HTTP Response Messages

- Status line: protocol version, status code, status text
- Headers: case insensitive, colon-delimited
- Body: the content of the response, eg. HTML, JSON, binary data (eg. images, audio, video), etc.

```
HTTP/1.1 200 OK
Date: Mon, 27 Jul 2009 12:28:53 GMT
Server: Apache/2.2.14 (Win32)
Last-Modified: Wed, 22 Jul 2009 19:15:56 GMT
Content-Length: 88
Content-Type: text/html
Connection: Closed
<html>
<body>
<h1>Hello, World!</h1>
</body>
</html>
```

!SLIDE

# HTTP Response Status Codes

Examples:

```plaintext
200 OK
404 Not Found
418 I'm a teapot
429 Too Many Requests
500 Internal Server Error
```

https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/418
https://en.wikipedia.org/wiki/Hyper_Text_Coffee_Pot_Control_Protocol

!SLIDE

# HTTP Methods

- `GET`: typical web request, get data from server
- `POST`: form submission for new entity
- `PUT`: form submission to update entity
- `DELETE`: form submission to remove an entity

!SLIDE

# Representational State Transfer (REST)

!SLIDE

# Web API Responses

Typically Javascript Object Notation (JSON)

```json
{
  key: "value",
  a: [1,2,3]
}
```

!SLIDE

# Web APIs

Typically used for client to query server for data from a backend
