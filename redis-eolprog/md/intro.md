
# What is Redis

Advanced, in-memory key-value store

like Memcached, but w/ optional data persistence

like ZeroMQ, but not just a messaging queue

!SLIDE

# Good `:)`

- Advanced
  - many useful [commands](http://redis.io/commands) and [data types](http://redis.io/topics/data-types)
  - [Publish/Subscribe (Pub/Sub)](http://redis.io/topics/pubsub) messaging system
  - Lua scripting
- Fast!
- Well designed
- Well documented
  - all queries documented w/ `Big O()` notation

!SLIDE

# Good `:)`

- [Partionable](http://redis.io/topics/partitioning)
  - distribute data among multiple Redis instances
- Replicatable
  - master / slave(s)
- Clusterable
- [Clients](http://redis.io/clients) available for all popular languages

!SLIDE

# Bad `:(`

- Data is stored in memory-- volatile!
  - typically most expensive component
  - can be persisted to disk, as backup, if needed
- Single threaded
  - long-running command / query blocks others
- Security not strictly included
  - single password, transmitted in plain text
  - assumed that Redis is run in a protected environment
  - easily added on via firewalls, SSL or SSH tunnels
- maximum of 16 databases

!SLIDE

# Use Cases

- NoSQL Database
- Cache
  - [redis-rails](https://github.com/redis-store/redis-rails) *"provides a full set of stores (Cache, Session, HTTP Cache) for Ruby on Rails."*
- Message queue
  - [resque](https://github.com/resque/resque), *"a Redis-backed library for creating background jobs, placing those jobs on multiple queues, and processing them later."*
