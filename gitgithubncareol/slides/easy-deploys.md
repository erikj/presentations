# Easy Deploys w/ Git

- Git-based workflow that allows us to deploy to various environments by using `git push`

- Inspired by **Heroku**

```
$ git push heroku master

Counting objects: 63, done.
Compressing objects: 100% (49/49), done.
Writing objects: 100% (63/63), 26.35 KiB, done.
Total 63 (delta 2), reused 0 (delta 0)
-----> Ruby/Rails app detected
-----> Installing dependencies using Bundler version 1.3.0.pre.5
Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin --deployment
Fetching gem metadata from https://rubygems.org/.....
...
```

https://devcenter.heroku.com/articles/git

!SLIDE

# Easy Deploys w/ Git: Config

Server / deployment target repository:

Add `[receive]` section to `.git/config`

    [receive]
        denyCurrentBranch = ignore

!SLIDE

# Easy Deploys w/ Git: Hooks

Automatically trigger actions that are required so that service is aware and updated w/ `push`ed source code

git hooks

- `.git/hooks/post-receive`

git remotes

!SLIDE

# Merge, Easily Deploy

command line

- merge to `develop`
- deploy local `develop` branch to dev
- merge to `master`
- deploy local `master` to staging
- deploy local `master` to ops
