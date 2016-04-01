<!-- # NCAR Earth Observing Laboratory (EOL) -->

# <img src='images/eollogo_transparent.png' height=120px style='vertical-align:middle;'/> EOL

Services and Facilities:

- In-Situ (ISF)
- Remote Sensing (RSF)
- Aviation (RAF)
- Design & Fabrication (DFS)
- Digital Services (CDS, CWIG)
- Field-Project Management (PMO)

!SLIDE
# Field Projects

## Atmospheric-Research Campaigns

- Weather
- Climate
- Chemistry
- Pollution

!SLIDE
# Recent Field Projects

- [CONTRAST](https://www.eol.ucar.edu/field_projects/contrast): Guam, 2014
- [DEEPWAVE](https://www.eol.ucar.edu/field_projects/deepwave): New Zealand, 2014
- [FRAPPE](https://www.eol.ucar.edu/field_projects/frappe): Colorado, 2014
- [PECAN](https://www.eol.ucar.edu/field_projects/pecan): Kansas, Central US; 2015
- [ORCAS](https://www.eol.ucar.edu/field_projects/pecan): South America, 2016

!SLIDE
# EOL Research Aviation Facility (RAF)

<img src='images/hercules-front.jpg' height='240px' />
<img src='images/c130.jpg' height='240px' />

**C-130 Hercules**

!SLIDE
# EOL Research Aviation Facility (RAF)

<img src='images/gv-front-edit.jpg' height='240' />
<img src='images/gv.jpg' height='240' />

**Gulfstream V (G-V)**

!SLIDE
# Field Catalog

- project organization and imagery archival framework
<!-- - screenshot -->
  <!-- - `images/catalog-orcas-home.png` -->
<!-- - pictures of products: satellite, research, model -->
  <!-- - `images/products/` -->

!SLIDE

# CatalogMaps
<!-- capabilities / about -->
  <!-- - screenshot -->
- 'realtime' and playback'
- independent layer controls
- KMLs (flight tracks, flight plans, soundings, FIR boundaries, airways, etc.)
- platform positions (aircraft, ships, vehicles, radar, etc.)
- images
- requirement: base layer
- used by project participants on ground

!SLIDE

# CatalogMaps
<!-- technologies -->

- **Ruby**
- **Rails**
- **MySQL**
- **OpenLayers**

!SLIDE
# CatalogIngest

- **Ruby**
- **ActiveRecord**
- **MySQL**

!SLIDE
# Mission-Coordinator Display

- runs on and serves ground and aircraft
- used by project participants on ground and on aircraft
- 'realtime'
<!-- - screenshot -->

!SLIDE

# Mission-Coordinator Display

- CGI
- OpenLayers
- not actively maintained / developed

!SLIDE
# Objective

Replace MCD w/ CatalogMaps
