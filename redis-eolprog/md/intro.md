# Redis

- Advanced, in-memory, key-value store
- like **Memcached**, but w/ optional data persistence
- like **ZeroMQ**, but not just a messaging queue

!NOTE
What is Redis

!SLIDE

# Redis

- **REmote DIctionary Server**
- initially released in 2009
- created, maintained by Salvatore Sanfilippo, *aka* [antirez](http://antirez.com/latest/0)
- currently sponsored by **Redis Labs**, previously **Pivotal Labs** and **VMWare**
- written in **C**
- **BSD** license

!NOTE
About

stands for REmote DIctionary Server

been around for six years

!SLIDE

# Redis

- [Partioning](http://redis.io/topics/partitioning)
  - distribute data among multiple Redis instances
- [Replication](http://redis.io/topics/replication)
  - master / slave(s)
- [Clustering](http://redis.io/topics/cluster-tutorial)
- [Clients](http://redis.io/clients) available for all popular languages
- High Availability via [Redis Sentinel](http://redis.io/topics/sentinel)

!NOTE
Features

!SLIDE

# Redis

- Advanced
  - many useful [commands](http://redis.io/commands) and [data types](http://redis.io/topics/data-types)
  - [Publish/Subscribe (Pub/Sub)](http://redis.io/topics/pubsub) messaging system
  - Lua scripting
- Fast!
  - data stored and accessed in memory
  - written in **C**
- Well designed
- Well documented
  - all queries documented w/ `Big O()` notation

!NOTE
Benefits

Well-designed: does One Thing Well

!SLIDE

# Redis

- Data is stored in memory-- volatile!
  - typically most expensive component
  - can be persisted to disk, as backup, if needed
    - persisence modes:
      - append-only file (faster)
      - ...
- Single threaded
  - long-running command / query blocks others
- Maximum of 16 databases per **Redis** instance

!NOTE
Costs / limitations

!SLIDE

# Redis Security

- Security not strictly included
  - single password, transmitted in plain text
  - assumed that **Redis** is run in a protected environment
  - easily added on via firewalls, **SSL** or **SSH** tunnels
  - *"The Redis security model is: it's totally insecure to let untrusted clients access the system, please protect it from the outside world yourself."* \- [A few things about Redis security - antirez](http://www.antirez.com/news/96)

!NOTE

'One Thing Well' means that time is not spent implementing and maintaining advanced security features

"The reason is that, basically, 99.99% of the Redis use cases are inside a sandboxed environment. Security is complex. Adding security features adds complexity. Complexity for 0.01% of use cases is not great, but it is a matter of design philosophy, so you may disagree of course.""

!SLIDE

# Redis Security

- Enhancements planned
  - security-related bug fixes
  - more conservative default configuration
  - multiple users w/ ACLs
  - \- [A few things about Redis security - antirez](http://www.antirez.com/news/96)

!SLIDE

# Use Cases

- NoSQL Database
- Cache
  - [redis-rails](https://github.com/redis-store/redis-rails) *"provides a full set of stores (Cache, Session, HTTP Cache) for Ruby on Rails."*
- Message queue
  - [Resque](https://github.com/resque/resque), *"a Redis-backed library for creating background jobs, placing those jobs on multiple queues, and processing them later."*
  - [Sidekiq](http://sidekiq.org/), *Simple, efficient background processing for Ruby.*
- Data store for high-data-rate instruments

!SLIDE

# [Value Data Types](http://redis.io/topics/data-types)

- **Strings**, binary-safe
- **Lists**, *"lists of strings, sorted by insertion order"*
- **Sets**, *"unordered collections of Strings"*
- **Hashes**, *"maps between string fields and string values"*
- **Sorted sets**, `ZSETs`, sets whose members have an associated score

!NOTE
keys are strings, max size: 512MB

!SLIDE

# Redis CLI

```sh
$ sudo yum install -y redis
$ sudo service redis start
Starting redis-server:     [  OK  ]
$ redis-cli
redis 127.0.0.1:6379> ping
PONG
redis 127.0.0.1:6379> set salutation 'greetings earthling'
OK
redis 127.0.0.1:6379> set valediction adieu
OK
redis 127.0.0.1:6379> mget salutation valediction
1) "greetings earthling"
2) "adieu"
redis 127.0.0.1:6379> dbsize
(integer) 2
```

!NOTE
Command-line interface
