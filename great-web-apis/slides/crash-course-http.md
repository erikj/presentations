# A Crash Course In HTTP

1989: Tim Berners-Lee, CERN 

2000: Roy Fielding REST dissertation

mid-2000s: REST adopted for Web APIs

2021: Ubiquitous application and data-interchange framework

> The most important thing to know about the HTTP protocol is that it was designed entirely on the notion of passing messages, not objects or database query results. - TBL

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
- Headers: case insensitive, colon-, newline-delimited
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

1. Client-server
2. Stateless
3. Cacheable
4. Uniform interface
5. Layered system
6. Code on demand

Roy Fielding Ph. D Dissertation, [Architectural Styles and the Design of Network-based Software Architectures](https://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm)

!SLIDE

# CRUD

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
  h: { k1: 1, k2: 2 }
}
```
