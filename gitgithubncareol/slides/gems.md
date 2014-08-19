
# Bundle w/ Git

- Rubygems
- Bundler package manager
- **Catalog Models** gem: library of shared ActiveRecord models
- Gem loaded by Bundler via Git, specified in application's `Gemfile`:

```ruby
gem 'catalog_models',
  git: 'git@github.com:ncareol/catalog_models.git',
  tag: 'v1.7.3'
```

http://bundler.io/v1.5/git.html

!NOTE
we're already versioning our software w/ Git tags, so this eliminates
the dependency on packaging and distributing the gem w/ every release.
Bundler also allows specification of commit or a branch.

!SLIDE

# Vendor Everything

- Package dependencies w/ the source code into `vendor/`
- Eliminates third-party dependencies on deployment

```bash
$ bundle install --local
```

http://errtheblog.com/posts/50-vendor-everything

http://ryan.mcgeary.org/2011/02/09/vendor-everything-still-applies/

!NOTE
this means that we have no problems deploying even if rubygems.org or GitHub are down.
