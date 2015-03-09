
# Extras!

!SLIDE

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

