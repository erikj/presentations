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

> "Microservices: 'I wish my method calls had more latency'" - [Aaron Patterson](https://twitter.com/tenderlove/status/1337483916492488705)

- Will a native client suffice? Eg. connecting directly to database.

- Is there something already written? OPenDAP, PostgREST, SDK, etc.

- Dynamic, server-side HTML updates
  - Rails HTML Over The Wire (HOTWIRE)
  - Phoenix LiveView

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
