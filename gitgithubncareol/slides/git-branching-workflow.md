# git-branching-workflow

!SLIDE

# branches

branches are a fundamental part of Git

**TODO** branches clip art / photo

!SLIDE


- *"Never commit to your `master`"*
  - https://c9.io/site/blog/2011/11/never-commit-to-your-master/
- everything is branched from `develop`
- changes are made in dedicated branches
- branches are merged back in to `develop` when they are ready
- `master` is updated via merge from `develop`
- `master` is always deployable

![git branching diagram](img/git-branching.png)

!SLIDE

# branch categories

- features: `feature-...`
- fixes: `fix-...`
- experimental: `xfeature-...`
- hot features and fixes: `hotfeature-...`

http://nvie.com/posts/a-successful-git-branching-model/

!SLIDE

# branch names

> There are two hard problems in computer science: cache invalidation, naming things and off-by-one errors. Phil Karlton + [Martin Fowler](http://martinfowler.com/bliki/TwoHardThings.html)

1. Prefix the branch name w/ the branch category: *e.g.* `feature`, `fix`, etc.
1. If the branch is associated w/ an issue, include the issue number
1. Finish the branch name w/ short-but-informative description

*e.g.*

- `feature-42-the-answer`
- `fix-314-pi-miscalculation`
- `hotfix-all-the-bugs`

# workflow in action, contrived example, part 1

```
$ git checkout develop
$ git pull # update w/ latest from origin: github
$ git checkout -b feature-99-add-columns-to-project
$ vi db/migrate/022_add_columns_to_project.rb # make and save changes
$ git commit -m "add columns to table project; #99"
$ git push -u origin feature-99-add-columns-to-project # push to origin
```
