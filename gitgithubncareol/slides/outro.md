
# Misc Git: `.gitconfig`

- use `aliases`
  ```
[alias]
    ss = status
    s  = status -sb
    cl = config --list
    a  = add
    ci = commit
    co = checkout
    d  = diff
    ds = diff --cached # diff staged changes
    p  = push
    b  = branch
    undo    = reset --soft HEAD^
```

https://github.com/erikj/dotfiles/blob/master/kepler/.gitconfig

https://github.com/erikj/dotfiles/blob/master/.gitconfig.aliases

!SLIDE

# Misc Git: `.gitconfig`

- use global `.gitignore`
- keep developer-specific cruft out of project `.gitignore`s
- `~/.gitconfig`
  ```
  [core]
    excludesfile = ~/.gitignore-global
  ```

- `~/.gitignore-global`
  ```
*.DS_Store
*.sublime-*
/.pow*
jmeter.log
```

https://github.com/erikj/dotfiles/blob/master/kepler/.gitconfig

https://github.com/erikj/dotfiles/blob/master/.gitignore-global

!SLIDE

# Lessons Learned

- Use the tools you have / that are available:
  - Git is awesome
  - GitHub is awesome
  - Markdown is awesome
  - packaging libraries offer many features

- GitHub is reliable and simple but powerful

- GitHub can be a great tool for communication between developers and stakeholders

- Issue discovery can be difficult when there are many Issues
  - => Easy to create duplicates

- Use Labels for organization

- Use Git `tag`s for releases

- Minimize third-party dependencies

!SLIDE

# Summary

- Development starts w/ an Issue
- Markdown / GFM and auto-linking features
- Git-Branching Workflow
- GitHub Pull Requests: code review and discussion
- Git-Based Easy Deploys

!SLIDE

# Future

- Faster, smarter Easy Deploys
- Continuous Integration
- Vagrant
- DevOps
- Open Source

!SLIDE

# References

- http://en.wikipedia.org/wiki/Git_(software)
- http://en.wikipedia.org/wiki/GitHub
- https://github.com/blog/1470-five-years
- https://github.com/blog/1724-10-million-repositories
- https://github.com/pricing
- https://daringfireball.net/projects/markdown/basics
- https://help.github.com/articles/github-flavored-markdown
- https://github.com/blog/831-issues-2-0-the-next-generation
- https://c9.io/site/blog/2011/11/never-commit-to-your-master/
- http://nvie.com/posts/a-successful-git-branching-model/
- http://martinfowler.com/bliki/TwoHardThings.html
- https://github.com/torvalds/linux/pull/17#issuecomment-5654674

!SLIDE

# `</content>`

- thanks!
- comments, questions?

- `ej@ucar.edu`
- http://github.com/erikj
