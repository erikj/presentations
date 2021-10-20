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

# Table of Contents

- I: Getting started
- II: Design Phase
  - Model, Design, Describe
- III: Build
  - Sketch, Prototype, Build
- IV: Release
  - Test, Secure, Deploy, Modify

!SLIDE

# "In Reality"

Narrative: Linear approach

In practice:

Loops of iteration, jump back and forth between modeling, design and implementation

!SLIDE

# Approach

Example: "BigCo"

Standalone services

- Company: business client
- Account: affiliation, BigCo <=> client
- Activity: interactions between BigCo and client "mails, phone calls, office visits," etc.

!SLIDE

# A Brief History of HTTP

1989: Tim Berners-Lee, CERN 

2021: Ubiquitous application and data-interchange framework

Message passing: Request, Response

!SLIDE

# HTTP Message Passing

> The most important thing to know about the HTTP protocol is that it was designed entirely on the notion of passing messages, not objects or database query results. This message-orientation is one of the reasons HTTP (and HTML) became so popular and so pervasive so quickly. As long as you could write a client or service that can deal with HTTP messages, you could create an HTTP server and start serving up content, no matter what programming language, object model, or database you used.

!SLIDE

# HTTP Methods

- `GET`: typical web request, get data from server
- `POST`: create entity
- `PUT`: update update entity
- `DELETE`

!SLIDE

# HTTP Request Messages

- Start line: method + target, eg. a URL / path
- Headers: user agent; content type and length; accept document types (`text/html`), language, encoding
- Body: data

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
- Body: response data, eg. HTML, JSON, binary data (eg. images, audio, video), etc.

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

Examples

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

# Representational State Transfer (REST)

Six guiding constraints

1. Client-server
2. Stateless
3. Cacheable
4. Uniform interface
5. Layered system
6. Code on demand

!SLIDE

# CRUD

Example and subset of REST

<table>
<tr><th>
CRUD
</th>
<th>
HTTP
</th></tr>

<tr><td>
Create
</td><td>
POST
</td></tr>

<tr><td>
Read
</td><td>
GET
</td></tr>

<tr><td>
Update
</td><td>
PUT
</td></tr>

<tr><td>
Delete
</td><td>
DELETE
</td></tr>

</table>

!SLIDE

# Web API Responses

Typically Javascript Object Notation (JSON)

```json
{
  k: "value",
  a: [1,2,3]
  h: {
    k1:1,
    k2:2
  }
}
```

!SLIDE

# Web APIs

Typically used for client to query server for data from a backend
