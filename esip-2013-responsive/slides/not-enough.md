!SLIDE incremental small
# When responsive isn't enough:
## Viewport

- By default, mobile browsers try to mimic desktop display
- this results in pages scaled down to fix full web page onto a small mobile display
- Apple implemented hooks to a `viewport` meta tag
- Allows assignment of page width, based on pixels, device width, scaling, etc.

!SLIDE smaller incremental center
# When responsive isn't enough:
## Viewport Disabled

![catalog-ui-no-viewport.png](catalog-ui-no-viewport.png)

!SLIDE smaller incremental center
# When responsive isn't enough:
## Viewport Enabled

    @@@html
    <meta content='width=device-width, initial-scale=1'
     name='viewport'>

![catalog-ui-viewport.png](catalog-ui-viewport.png)

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

 - allow user to select other interface, store interface selection as cookie
 - not immune to User-Agent spoofing

