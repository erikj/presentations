# GitHub Issues

## In the beginning...

There is an issue:

<img src=img/new-issue-screenshot.png>

!SLIDE

# GitHub Issues

Issues generally fall into one of two categories:

- features: make something / make something better
- bugs: something is wrong and needs to be fixed

!SLIDE

# Issue Description

composed in plain text and / or Markdown / GFM + GitHub Hotlinking

!NOTE
which I'll get into...

!SLIDE

# Markdown

plain-text syntax for authoring that compiles to HTML

designed to be written quickly w/ rich-text formatting provided by HTML

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML). https://daringfireball.net/projects/markdown/

!SLIDE

# GitHub-Flavored Markdown + Hotlinking

- handy formatting enhancements to plain-old Markdown
- language-specific syntax highlighting and code fencing via ``` / ```language
- `#`issues, `@`usernames and commit hashes are hot-linked
- checklists

https://help.github.com/articles/github-flavored-markdown

https://github.com/blog/831-issues-2-0-the-next-generation

https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments

!SLIDE

# Issue Description

<pre>
# Issue Heading

A **good idea** for a *new feature* from @erikj that relates to #60:

```ruby
puts 'Hello SEA'
```
</pre>

![img/github-issue-rendered.png](img/github-issue-rendered.png)

!NOTE
heading gets h1 tag, bold text, italics, username and issue ID are hotlinked.
hovering over issue ID displays issue title.
text formatting enhances communication w/ fellow humans, which is valuable in online interactions

!SLIDE

# Issues

Issues can be observed and commented upon as they progress

- Comments
  - in-line w/ Issue
  - specific commits or lines of commits
  - Markdown / GFM w/ hotlinking

- Users receive notifications when their username is mentioned or comments are added to issues to which they subscribe or to commits they've made

!NOTE
Users can also unsubscribe from Issues if they're not interested

!SLIDE

# Labels

- Issues can be assigned one or more labels

- Create / edit / delete labels as needed

- Useful for categorizing issues

!SLIDE

# Labels Example

![img/github-labels.png](img/github-labels.png)

!NOTE
These are the labels we use for CatalogMaps

!SLIDE

# CHECKED OUT

![CHECKED OUT](img/checked-out-screenshot.png)

When a developer is ready to work on an issue:

- assign Issue to themselves

- add the **CHECKED OUT** label to the issue

!NOTE
good for using the Issues interface to determine who is working on what: MANAGER FRIENDLY!

!SLIDE

# Milestones

A Milestone is composed of:

- title
- description (optional)
- due date
- set of issues

!NOTE
an issue can be assigned to only on milestone

!SLIDE

# Milestones

We generally assign significant, planned versions to their own milestones, *e.g.*

- **Catalog Maps 2.0**
- **Catalog Maps 2.1**
- **Catalog Maps 2.2**
