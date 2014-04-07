
# Git Branches

<img src='img/git-logo.png' alt='git-logo' height=180 width=180 />

- Branches are a fundamental part of Git
- Subversion branches are complete copies of their parent branch
- Git branches are only the commits that diverge from their parent branch

!NOTE
so fundamental that they're represented in Git's logo

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
  adapted from http://nvie.com/posts/a-successful-git-branching-model/
</span>

![gitflow model](img/gitflow-model.jpg)

!NOTE
graphic representation of branching workflow

!SLIDE

# Branch Categories

- features: `feature-...`
- fixes: `fix-...`
- experimental: `xfeature-...`
- hot features and fixes: `hotfeature-...`

http://nvie.com/posts/a-successful-git-branching-model/

!SLIDE

# Branch Names

> There are two hard problems in computer science: cache invalidation, naming things and off-by-one errors. \- Phil Karlton + [Martin Fowler](http://martinfowler.com/bliki/TwoHardThings.html)

!NOTE
branch names are a form of communication to other humans, so it's important to use a good branch name to communicate clearly

!SLIDE

# Branch Names

1. Use branch category as prefix: *e.g.* `feature`, `fix`
1. Include the issue number-- easy point of reference for which issue the branch applies
1. Short-but-informative description

*e.g.*

- `feature-42-the-answer`
- `fix-314-pi-miscalculation`
- `hotfix-all-bugs`

!NOTE
Branch naming conventions that we've adopted.
2 is important and often used.
I'm soliciting pull requests that fix all of the bugs!

!SLIDE

# Commit Messages: GitHub Hotlinking

Like Issue content and comments, `#`issue IDs, `@`usernames and commit hashes will be autolinked in GitHub's web interface.

!NOTE
once we have a branch checked out, we're going to make commits to it. via hotlinking, GitHub enhances the value of our commit messages by adding human-friendly features
