## Key-Value Schema Example

### Twitter Clone

```sh
# entrypoint is typically username, e.g. twitter.com/antirez

# associate username w/ user ID
> INCR next_user_id # => 1000
> HSET users antirez 1000

# associate user properties w/ user ID
> HMSET user:1000 username antirez password p1pp0
```

<http://redis.io/topics/twitter-clone>

!NOTE
query-driven schema: what you're querying by determines structure of keys and values;
HSET: hash set;
HMSET: hash multiple-value set;

!SLIDE

## Key-Value Schema Example

### Twitter Clone

```sh
# other users follow user
# followers:1000 => Sorted Set of uids of all the followers users
# Add user 1234 with time 1401267618
> ZADD followers:1000 1401267618 1234

# user follows other users
# following:1000 => Sorted Set of uids of all the following users
# Add user 5678 with time 1401267618
> ZADD following:1000 1401267618 5678
```

<http://redis.io/topics/twitter-clone>

!NOTE
followers-following is redundant, but enables faster queries
max value size: 2^32, ~4.2B

key-value schemas ARE NOT normallized

!SLIDE

## Key-Value Schema Example

### Twitter Clone

```sh
# user makes posts / 'updates'
> INCR next_post_id # => 10343
> HMSET post:10343 user_id 1000 time 1447799908 \
        body "Greetings Earthling!"
> LPUSH posts:1000 10343

# add post to follower's timeline
> LPUSH timeline:1234 10343
```

<http://redis.io/topics/twitter-clone>

!SLIDE

## Key-Value Schema Example

### Twitter Clone

```sh
# key          => value
users          => {'antirez':1000}
user:1000      => {'username':'antirez', 'password':'p1pp0'}
followers:1000 => [ [1401267618, 1234] ]
following:1000 => [ [1401267618, 5678] ]
post:10343     => { 'user_id': 1000,
                    'time':    1447799908,
                    'body':    "Greetings Earthling!" }
posts:1000     => [ 10343 ]
timeline:1234  => [ 10343 ]
```

<http://redis.io/topics/twitter-clone>

!NOTE
based on the previous commands, this is what our data looks like
