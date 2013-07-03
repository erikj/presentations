# ESIP Summer 2013 Presentation: Responsive Web Design

## About

This presentation is:

- made w/ [ShowOff](https://github.com/schacon/showoff)
- derived, in part, from my [SSG Lunch Seminar: Browser-side Field-Catalog 2.0: HTML5, Responsive Web Design, Twitter Bootstrap, 2013/03/21](https://github.com/erikj/ssg-lunch-seminar)

- to be presented @ ESIP's 2013 Summer Meeting as [NCAR EOL's Experience Using Twitter Bootstrap and Responsive Web Design For Field Catalog 2.0](http://commons.esipfed.org/node/1522)

   > Twitter Bootstrap is a CSS / JS framework that enables a lot of modern features that we're using in Catalog 2.0 and makes it easier to make web pages look nice. Responsive Web Design enables web developers to specify how a web page should be displayed based on parameters of the device, e.g. height, width, resolution, etc. This is very handy for write-once web pages that are presented optimally on a variety of common device form factors: phone, tablets, laptops, workstations, etc. Twitter Bootstrap provides convenient methods for writing responsive HTML and CSS, and has been used by NCAR EOL to implement Field Catalog 2.0 with responsive features that are essential to modern users.

## Usage

### Initialization

    % git clone git@github.com:erikj/esip-2013-responsive.git
    % cd esip-2013-responsive
    % bundle --path vendor

### Service

Serve the slides as a Sinatra app:

    % showoff serve
    % open http://localhost:9090

### Generate static site:

#### Local

    % showoff static
    % open static/index.html

#### GitHub Pages:

    % showoff github
    % git push origin gh-pages
    % open http://username.github.io/esip-2013-responsive

