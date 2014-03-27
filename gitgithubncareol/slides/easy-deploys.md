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

`.git/hooks/post-receive`:

```
echo "bundle'ing"
bundle install --local --path=vendor --deployment --without development test

echo "precompile'ing assets"
rake RAILS_ENV=production assets:precompile

echo "reloading"
/usr/local/catalog/etc/catalog-ui-reload
```

!SLIDE

# Easy Deploys w/ Git: Remotes

```
[ej@kepler] git remote -v
dev ssh://ej@ctm-dev.eol.ucar.edu/usr/local/catalog/catalog_ui (fetch)
dev ssh://ej@ctm-dev.eol.ucar.edu/usr/local/catalog/catalog_ui (push)
ops ssh://ej@sferic.eol.ucar.edu:23/usr/local/catalog/catalog_ui (fetch)
ops ssh://ej@sferic.eol.ucar.edu:23/usr/local/catalog/catalog_ui (push)
staging ssh://ej@sferic-dev.eol.ucar.edu/usr/local/catalog/catalog_ui (push)
staging ssh://ej@sferic-dev.eol.ucar.edu/usr/local/catalog/catalog_ui (fetch)
```

!SLIDE

# Merge, Easily Deploy

- merge to `develop`
- deploy local `develop` branch to `dev`
  ```
  $ git push dev develop
  ```
- test changes on `dev` environment
- merge to `master`
- deploy local `master` to staging
  ```
  $ git push staging master
  ```
- test changes on `staging` environment
- `tag` release
- deploy local `master` to ops
  ```
  $ git push ops master
  ```
- test changes on `staging` environment
- push `develop` and `master` to `origin`
