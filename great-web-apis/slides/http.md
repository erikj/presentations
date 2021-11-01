# HTTP

1989: Tim Berners-Lee, CERN 

> The most important thing to know about the HTTP protocol is that it was designed entirely on the notion of passing messages, not objects or database query results.

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

# Web API Responses

Typically Javascript Object Notation (JSON)

```json
{
  k: "value",
  a: [1,2,3]
  h: { k1: 1, k2: 2 }
}
```
