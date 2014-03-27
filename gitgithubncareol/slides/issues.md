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

composed in plain text and / or markdown / GFM

!SLIDE

# Markdown

plain-text syntax for authoring that compiles to HTML

designed to be written quickly w/ rich-text formatting provided by HTML

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML). https://daringfireball.net/projects/markdown/

!SLIDE

# Markdown Basics

```
# heading 1
## heading 2
### heading 3

**bold**

*italics*

- unordered
- list

1. ordered
1. list

[link](http://some/url)
```

https://daringfireball.net/projects/markdown/basics

!SLIDE

# GitHub-Flavored Markdown

Misc enhancements to plain-old Markdown

- auto-link URLs
- strikethrough: `~~struck~~` => ~~struck~~

https://help.github.com/articles/github-flavored-markdown

!SLIDE

# GitHub-Flavored Markdown

Misc enhancements to plain-old Markdown

- language-specific syntax highlighting

  <pre><code data-ignore>```javascript
  function alertHello() {
    alert("Hello World!");
  }
  ```</code></pre>

  ```javascript
  function alertHello() {
    alert("Hello World!");
  }
  ```

https://help.github.com/articles/github-flavored-markdown

!SLIDE

# GitHub Magic!

`#`issues, `@`usernames and commit hashes are hot-linked:

- \#1337 => issues/1337
- 047decc => commit/047decc
- @erikj => http://github.com/erikj

https://github.com/blog/831-issues-2-0-the-next-generation

!SLIDE

# GitHub Magic!

checklists:

```
- [x] this is a completed item
- [ ] this is a TODO item
```

![checklist-screenshot](img/checklist-screenshot.png)

https://github.com/blog/831-issues-2-0-the-next-generation

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

# Issues

Issues can be observed and commented upon as they progress

- Comments can be in-line w/ Issue

- Comments can be made to specific commits of lines of commits

- Comments are in Markdown / GFM w/ auto-linking features described previously


