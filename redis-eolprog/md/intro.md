
# Redis

<!--What is Redis-->

- Advanced, in-memory key-value store

- like **Memcached**, but w/ optional data persistence

- like **ZeroMQ**, but not just a messaging queue

!SLIDE

# Redis

<!--Features-->

- [Partionable](http://redis.io/topics/partitioning)
  - distribute data among multiple Redis instances
- Replicatable
  - master / slave(s)
- Clusterable
- [Clients](http://redis.io/clients) available for all popular languages


!SLIDE

# Redis

<!--Benefits-->

- Advanced
  - many useful [commands](http://redis.io/commands) and [data types](http://redis.io/topics/data-types)
  - [Publish/Subscribe (Pub/Sub)](http://redis.io/topics/pubsub) messaging system
  - Lua scripting
- Fast!
- Well designed
- Well documented
  - all queries documented w/ `Big O()` notation

!SLIDE

# Redis

<!--Costs-->

- Data is stored in memory-- volatile!
  - typically most expensive component
  - can be persisted to disk, as backup, if needed
- Single threaded
  - long-running command / query blocks others
- Security not strictly included
  - single password, transmitted in plain text
  - assumed that Redis is run in a protected environment
  - easily added on via firewalls, SSL or SSH tunnels
- Maximum of 16 databases per Redis instance

!SLIDE

# Use Cases

- NoSQL Database
- Cache
  - [redis-rails](https://github.com/redis-store/redis-rails) *"provides a full set of stores (Cache, Session, HTTP Cache) for Ruby on Rails."*
- Message queue
  - [resque](https://github.com/resque/resque), *"a Redis-backed library for creating background jobs, placing those jobs on multiple queues, and processing them later."*
- Data store for high-data-rate instruments' data


!SLIDE

# [Value Data Types](http://redis.io/topics/data-types)

- **Strings**, binary-safe
- **Lists**, *"lists of strings, sorted by insertion order"*
- **Sets**, *"unordered collections of Strings"*
- **Hashes**, *"maps between string fields and string values"*
- **Sorted sets**, `ZSETs`, sets whose members have an associated score

!NOTE
keys are strings, max size: 512MB

