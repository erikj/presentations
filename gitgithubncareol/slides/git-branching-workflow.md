
# Branches

Branches are a fundamental part of Git

**TODO** branches clip art / photo

!SLIDE

# Git-Branching Workflow

- *"Never commit to your `master`"*
  - https://c9.io/site/blog/2011/11/never-commit-to-your-master/
- everything is branched from `develop`
- changes are made in dedicated branches
- branches are `merge`d back in to `develop` when they are ready
- `master` is updated via `merge` from `develop`
- `master` is always deployable

!SLIDE

<span style="font-size:0.6em;">
  http://nvie.com/posts/a-successful-git-branching-model/
</span>

![git branching diagram](img/git-branching.png)


!SLIDE

# Branch Categories

- features: `feature-...`
- fixes: `fix-...`
- experimental: `xfeature-...`
- hot features and fixes: `hotfeature-...`

http://nvie.com/posts/a-successful-git-branching-model/

!SLIDE

# Branch Names

> There are two hard problems in computer science: cache invalidation, naming things and off-by-one errors. Phil Karlton + [Martin Fowler](http://martinfowler.com/bliki/TwoHardThings.html)

1. Prefix the branch name w/ the branch category: *e.g.* `feature`, `fix`
1. If the branch is associated w/ an issue, include the issue number-- easy point of reference for which issue the branch applies
1. Finish the branch name w/ short-but-informative description

*e.g.*

- `feature-42-the-answer`
- `fix-314-pi-miscalculation`
- `hotfix-all-the-bugs`

!SLIDE

# workflow in action, contrived example, part 1

```
$ git checkout develop
$ git pull # update w/ latest from origin: github
$ git checkout -b feature-99-add-project-columns
$ vi db/migrate/022_add_project_columns.rb # make and save changes
$ git commit -m "add columns to table project; #99"
$ git push -u origin feature-99-add-project-columns # push to origin
```

!SLIDE

# Commit Messages: Issue Number

including the issue number, prefixed w/ `#` will associate w/ the issue and cause the commit to be displayed on and linked from the issue's page

- **TODO** include example(s)

!SLIDE

# Commit Messages: Issue Number

- issues can also be closed from commit messages, w/ `fixes` `closes`, *etc.* before commit number:

  - `fixes`
  - `fixed`
  - `fix`
  - `closes`
  - `close`
  - `closed`

!SLIDE

# Commit Messages: Issue Number

- good to separate issue ID from message w/ a safe delimiter
  - want to avoid "apply required CSS fix #99" from closing `#99`
  - semicolon delimiter: "apply required CSS fix; #99" doesn't close `#99`
  - but if we did intend close the issue: "apply required CSS; fix #99"

!SLIDE

# Commit Message: GitHub Magic

Like Issue content, `#`issue IDs, `@`usernames and commit hashes will be autolinked in GitHub's web interface.
