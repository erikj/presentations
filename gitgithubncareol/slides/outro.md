
# Workflow Summary

1. Scrum
1. Open issue, assign to developer, label as **CHECKED OUT**
1. `branch` from `develop`
1. Make and `commit` changes
1. `push` changes to GitHub
1. Open pull request on GitHub
1. Review pull request
1. `merge` and `tag` locally
1. Deploy via `push` from local environment to `dev`, `staging`, `ops` environments
1. `push` merged branches and tags to github
1. Close issue

!SLIDE

# Lessons Learned

- Learn and use the tools that we have / are available: Git, Markdown, languages' preferred packaging utilities, etc.
- Git can enhance your workflow
- GitHub
  - Reliable and simple but powerful
  - Great tool for communication between developers and stakeholders
  - Subscribe to GitHub's blog for updates on features
  - Issue discovery can be difficult when there are many Issues
    - => Easy to create duplicates
  - Organize w/ labels
- Use Git `tag`s for releases
- Minimize / eliminate third-party dependencies

!NOTE
you can make the most of your VCS and management software to enhance your workflow and team communication.

!SLIDE

# Room For Improvement

- Cross-repo issues: where do they issues belong?
- Deployment collision-- surprise!
user friendly, can be surprising, in violation of PLOS, surprises in `ops` are bad
- Application and assets out of sync while precompiling on deployment
- Scrum, less useful when staff are working on isolated tasks
- Schema scattered across two repositories as Rails migrations and SQL files

!NOTE

- cross-repo issues: duplicate issues across repos, sacrifice private-repo
slot as meta repo for cross-repo issues?
- deployment collision: hasn't happened, handled gracefully by `git`, but not
user friendly, can be surprising, in violation of PLOS, surprises in `ops` are bad
- Scrum: isolated tasks, historically how our organization operates

!SLIDE

# Summary

- Development starts w/ an Issue
- Markdown / GFM and auto-linking features
- Git-Branching Workflow
- GitHub Pull Requests: code review and discussion
- Bundle / w/ Git, Vendor Everything
- Git-Based Easy Deploys

!SLIDE

# Future / Wish List

- More Features
- Ruby 2.1, Rails 4.1, Bootstrap 3
- Continuous Integration
- DevOps
- Docker
- Open Source

!SLIDE

# `</content>`

- thanks!
- `erik@erikj.me`
- http://github.com/erikj
- slides: http://erikj.github.io/gitgithubncareol
- source: https://github.com/erikj/gitgithubncareol
- stickers!
- comments, questions?

!NOTE
thanks for your attention and thanks to the SEA for welcoming me.
email address if you'd like to discuss git or github later.
slides available online w/ source code @ these URLs.
