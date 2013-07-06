!SLIDE

# Responsive Design

  > *Responsive web design is a web design approach aimed at crafting
  sites to provide an optimal viewing experience—- easy reading and navigation
  with a minimum of resizing, panning, and scrolling—- across a wide range of
  devices (from desktop computer monitors to mobile phones).*
  \- <http://en.wikipedia.org/wiki/Responsive_web_design>

!SLIDE incremental
# Responsive Design

## write once, display anywhere

- desktops
- phones
- tablets
- ???

!SLIDE incremental
# Responsive Design

## Elements

- dynamic **CSS** based on media queries of device display properties
- fluid grid based on percentages
- fluid image sizes based on percentages

!SLIDE incremental
# Responsive Design

## CSS that responds to devices' display parameters

- height, width
- color / black & white
- text-only
- etc.
- **TODO:** *look-up other display parameters*

!SLIDE incremental small bullets
# Responsive Design

## requires HTML5 media queries

- **TODO**: *downsize HTML5 logo*

  - [html5 logo](500px-HTML5-logo.svg.png)

- 

        @@@css
        @media (min-width:500px) { /* css */ }
        @media (max-width:499px) { /* narrow-screen css */ }
        @media (orientation: portrait) { /* css */ }
