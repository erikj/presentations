!SLIDE center
# Bootstrap

![B](bootstrap-logo.png)

*Sleek, intuitive, and powerful front-end framework for faster and easier web
development.* - <http://twitter.github.io/bootstrap/>

!SLIDE center smaller incremental
# Bootstrap

## Development

![bird](twitter-logo.png)

- Developed by employees, @mdo and @fat, @ Twitter for internal tools and
Open-Sourced for users beyond Twitter

- @mdo and @fat have left Twitter

- Bootstrap will drop the "Twitter" prefix w/ version 3.0

!SLIDE incremental
# Bootstrap

## multiple layout systems

- defined-width grid, pixels, constant
- fluid grid, percents, scales w/ browser size

!SLIDE incremental
# Bootstrap

## CSS enhancements

- consistent / better-than-default:

  - typography
  - forms
  - buttons
  - image helpers
  - icons (via sprites)

!SLIDE incremental smaller
# Bootstrap

## Components

- dropdown menus
- button groups and button-based dropdown menus
- navigation and navbar elements
- breadcrumbs
- pagination links
- alerts
- progress bars

!SLIDE
# Bootstrap

## Responsive

    @@@ html
    <link href="bootstrap.css"
          rel="stylesheet"
          type="text/css" />
    <link href="boostrap-responsive.css"
          rel="stylesheet"
          type="text/css" />

!SLIDE incremental
# Bootstrap

## Fluid-Grid Layout

    @@@ html
    <div class='row-fluid'>
      <span6>alpha</span6>
      <span6>beta</span6>
    </div>

- spans entire page or collapses, depending on device's display width

!SLIDE incremental
# Bootstrap

## Responsive Hooks

- desktop: >= 980px
  - `.visible-desktop`, `.hidden-desktop`

- tablet: >= 768px and <= 979px
  - `.visible-tablet`, `.hidden-tablet`

- phone: <= 767px
  - `.visible-phone`, `.hidden-phone`

!SLIDE incremental
# Bootstrap

## Responsive Hooks Demo

[Demo](http://erikj.github.io/responsive-demo/)

!SLIDE incremental
# Bootstrap

## Responsive NavBar

- almost every site displays navigation on every page
- Bootstrap's responsive navbar collapses to dropdown menu on smaller screens

