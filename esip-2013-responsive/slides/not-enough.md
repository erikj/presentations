!SLIDE incremental small
# When responsive isn't enough:

## form-factor-specific interfaces required

### Field Catalog

3MB image displayed on home pages

- sourced from third party
- NEXRAD mosaic
- project owner *insisted* on it, without modification
- limit for mobile devices:

    - 2-3 megapixels
    - mobile browsers want to conserve RAM

!SLIDE incremental

# When responsive isn't enough:

## form-factor-specific interfaces required

### Catalog Maps

- GIS web interface to geo-located catalog data
- offer fewer options for mobile devices:
  - fewer layers of data
  - no layer sorting
  - no modification of layer opacity

!SLIDE incremental

# When responsive isn't enough:

## form-factor-specific interfaces required

### implementation

- separate mobile interface allows desktop interface to maintain
  full set of features that require a desktops' processing and memory

!SLIDE incremental small

# When responsive isn't enough:

## form-factor-specific interfaces required

### implementation

User-Agent inspection

      @@@ ruby
      def mobile_device?
        request.user_agent =~ /Mobile|webOS|Android/i
      end

      if mobile_device?
        # mobile-specific stuff
      end
 - *Screenshot CatalogMaps interfaces*
 - allow user to select other interface, store interface selection as cookie
 - not immune to User-Agent spoofing

