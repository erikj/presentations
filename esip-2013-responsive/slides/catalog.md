!SLIDE incremental
# Field Catalog 1

- perl CGIs spanning 15+ years of development
- per-project theming, for project distinction
- vintage mid-1990s HTML, JavaScript, CSS
- clone-and-patch workflow for each project
- not sustainable
- difficult to backport enhancements

!SLIDE incremental
# Field Catalog 2 Objectives

- Common backend across field projects
- maintainable
- enhancements for modern users
    - work well on portable electronics:
      - smart phones
      - tablets
      - phablets
      - ???

!SLIDE incremental
# Field Catalog 2 Goals

## DRY: Don't Repeat Yourself

- avoid writing new interface for every device form factor
  - redundant
  - more work to support
  - what form factors will arise in the future?

- How to achieve this in a web interface?
  - Responsive Design

!SLIDE incremental
# Field Catalog 2 Goals

## use contemporary technologies and techniques

- Field Catalog shouldn't look old and dated
- off-load heavy lifting to third-party libraries and frameworks where possible
  - don't reinvent the wheel
  - lots of smart and talented folks have done this before and well
