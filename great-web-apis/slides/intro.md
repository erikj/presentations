# Web API Motivation

- Contemporary websites and apps
  - Dynamic javascript applications
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

- Will a native client suffice? Eg. connecting directly to database or message queue.

- Is there something already written? OPenDAP, PostgREST, SDK, etc.

!SLIDE

# Web API Skepticism

> "Microservices: 'I wish my method calls had more latency'" - [Aaron Patterson](https://twitter.com/tenderlove/status/1337483916492488705)

- Dynamic, server-side HTML updates
  - Rails HTML Over The Wire (HOTWIRE)
  - Phoenix LiveView

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

Book: Linear narrative

In practice: Loops of iteration, jump back and forth between modeling, design and implementation

!SLIDE

# Approach

Language agnostic

Example written NodeJS + Express web framework

!SLIDE

# Shortcut

`alias api="restful web api"`
