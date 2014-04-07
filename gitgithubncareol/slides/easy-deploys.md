# Easy Deploys w/ Git

- Git-based workflow that allows us to deploy to various environments by using `git push`

- Inspired by **Heroku** PaaS

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

On Server / deployment target, enable `push` to non-`bare` repository:

```bash
[receive]
    denyCurrentBranch = ignore
```

!SLIDE

# Easy Deploys w/ Git: Hooks

`.git/hooks/post-receive`

```bash
#!/bin/sh

# git stuff
cd ..
GIT_DIR='.git'
umask 002 && /usr/bin/git reset --hard

# on-update actions
echo "bundling"
bundle install --local --path=vendor --deployment --without development test
echo "precompiling assets"
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

# Easy-Deploy Example

```bash
$ git checkout develop && git pull
$ git merge --no-ff feature-42-awesomeness
$ git push dev develop # deploy local develop branch to dev
# test changes on dev environment
$ git checkout master && git pull
$ git merge --no-ff develop
$ git push staging master # deploy local master to staging
# test changes on staging environment
# tag release:
$ git tag -a v1.4.2 -m "add awesomeness"
$ git push ops master # deploy local master to ops
# test changes on ops environment
# push merged branches and tag to origin:
$ git push origin develop && git push origin master
$ git push --tags
```
