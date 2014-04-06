# GitHub Issues

## In the beginning...

There is an issue:

<img src=img/new-issue-screenshot.png>

!SLIDE

Issues generally fall into one of two categories:

- features: make something / make something better
- bugs: something is wrong and needs to be fixed

!SLIDE

# Issue Description

composed in plain text and / or markdown / GFM + GitHub Hotlinking

!SLIDE

# Markdown

plain-text syntax for authoring that compiles to HTML

designed to be written quickly w/ rich-text formatting provided by HTML

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML). https://daringfireball.net/projects/markdown/

!SLIDE

# GitHub-Flavored Markdown + Hotlinking

- Misc formatting enhancements to plain-old Markdown
- language-specific syntax highlighting and code fencing via ```
- `#`issues, `@`usernames and commit hashes are hot-linked
- checklists

https://help.github.com/articles/github-flavored-markdown

https://github.com/blog/831-issues-2-0-the-next-generation

https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments

!SLIDE

# Issue Example

    # Issue Heading

    A **good idea** for a *new feature* from @erikj that relates to #60:

    ```ruby
    puts 'Hello SEA'
    ```

![img/github-issue-rendered.png](img/github-issue-rendered.png)

!SLIDE

# Issues

Issues can be observed and commented upon as they progress

- Comments can be in-line w/ Issue

- Comments can be made to specific commits or lines of commits

- Comments are in Markdown / GFM w/ auto-linking features described previously

- Users receive notifications when their username is mentioned or comments are added to issues to which they subscribe or to commits they've made

!SLIDE

# Labels

Issues can be assigned one or more labels

Create / edit / delete labels as needed

Useful for categorizing issues

!SLIDE

# Labels

![bug label](img/label-bug.png)

![feature label](img/label-feature.png)

![security label](img/label-security.png)

![high-priority label](img/label-high-priority.png)

!SLIDE

# CHECKED OUT

![CHECKED OUT](img/checked-out-screenshot.png)

when a developer is ready to work on an issue:

- assign the issue to themselves

- add the **CHECKED OUT** label to the issue

!SLIDE

# Milestones

- title
- description (optional)
- due date
- set of issues

!SLIDE

# Milestones

![milestone-screenshot](img/milestone-screenshot.png)

!SLIDE

# Milestones

We generally assign significant, planned versions to their own milestones, *e.g.*

- **Catalog Maps 2.0**
- **Catalog Maps 2.1**
- **Catalog Maps 2.2**
