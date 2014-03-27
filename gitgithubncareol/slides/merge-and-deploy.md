# Easy Deploys w/ Git

Git-based workflow that allows us to deploy to various environments by using `git push`

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

