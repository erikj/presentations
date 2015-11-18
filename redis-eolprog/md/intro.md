
# Redis

<!--What is Redis-->

- Advanced, in-memory, key-value store
- like **Memcached**, but w/ optional data persistence
- like **ZeroMQ**, but not just a messaging queue

!SLIDE

# Redis

- **REmote DIctionary Server**
- initially released in 2009
- created, maintained by Salvatore Sanfilippo, *aka* [antirez](http://antirez.com/latest/0)
- currently sponsored by **Redis Labs**, previously **Pivotal Labs** and **VMWare**
- written in **C**
- **BSD** license
<!--About-->

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

!SLIDE

# Redis

- Data is stored in memory-- volatile!
  - typically most expensive component
  - can be persisted to disk, as backup, if needed
- Single threaded
  - long-running command / query blocks others
- Security not strictly included
  - single password, transmitted in plain text
  - assumed that **Redis** is run in a protected environment
  - easily added on via firewalls, **SSL** or **SSH** tunnels
- Maximum of 16 databases per **Redis** instance

!NOTE
Costs

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
