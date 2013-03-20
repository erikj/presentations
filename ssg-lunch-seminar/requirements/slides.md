!SLIDE bullets incremental
# Catalog-2 Requirements
## Replace Field-Catalog 1

- clone-and-patch workflow
- each project has its own:
    - database
    - code base
        - static **HTML**
        - perl **CGI**s

!SLIDE bullets incremental
# Catalog-2 Requirements
## Field-Catalog 1: Catalogs

    @@@sh
    % ls /net/web/catalog/html/
    1                       catalog.html           fastex/               index.html.20111219  predict_catalog_earth@  testit
    ace/                    catalog_projects.out   favicon.ico           index.html.save      rainex/                 tmp/
    ace-asia/               cat.html               fc/                   index.old.html       ramadda1.3/             torero/
    adele_sprite/           cat_table.html         fcicons/              indoex/              ramadda1.3.rm/          torero_catalog_earth@
    amma/                   chat/                  field_catalog.sh*     itop_2009/           ramadda1.3.zip          tparc@
    bamex/                  contacts/              front/                itop_2010/           ramadda_old/            tparc_2007/
    banner.html             css/                   ge.html               itop_2010_prelim/    rico/                   tparc_2008/
    base/                   cupido/                ge.html~              ix.html              robots.txt              tparc.rm/
    best/                   data/                  gif/                  jasmine/             salljex/                trex/
    best_hly-08-02/         dc3@                   hippo/                jja-ws/              sbi/                    trex.rm/
    best_hly-08-03/         dc3_2011/              hippo2/               js/                  sbi_hly-02-01/          vocals/
    best_hly-09-02/         dc3_2011.rm/           hippo3/               lakeice/             sbi_hly-02-03/          vortex2_2009/
    best_kn195-10/          dc3_2012@              hippo4/               map/                 sbi_hly-04-02/          vortex2_2010/
    best_kn195-10.save/     dc3_2012_dev@          hippo5/               milagro/             sbi_hly-04-03/          wms-ops@
    best_psea-10-01@        dc3_catalog_earth@     hiwc@                 milagro.mark/        sbi_nbp03-04a/          wrf-2004/
    best_sea-10-01/         documentation/         hiwc_2013@            movie/               sheba/                  wrf-2005/
    best_summer-09@         documentation.rm/      hold/                 name/                skeleton/               wrf_2006/
    best_tn249/             du.out                 ice_l/                name_2003/           snorman/                wrf-2006@
    best_tn249.orig/        du.runit               ice-l@                pacdex/              start08@                wrf_2007/
    best_tn249.save/        dwfe/                  ice-t/                pacdex_hiaper/       start_08/               wrf_2008/
    best_tn250/             dycoms/                ice-t_catalog_earth@  pase/                stratus/
    best_tn250.orig/        dynamo/                ihop/                 plows_08-09/         svn/
    best_tn250.save/        dynamo_catalog_earth@  index.html            plows_09-10/         table.html
    cases99/                epic/                  index.html.20091029   post/                test/
    catalog-admin-scripts/  eventlog@              index.html.20110913   predict/             test1/

!SLIDE bullets incremental

# Catalog-2 Requirements

## Field-Catalog 1: DC3 Catalog

    @@@sh
    % ls dc3_2012/
    alt.css         earch/               index.20120630.html  main.css         photos/            scripts/
    alt.html        excludes             indexes_old/         map/             play_panel         state/
    bin/            ftp_monitor/         index.html           missions/        radar/             stations/
    calendar.html   ge/                  index.html~          model/           removed_products/  test.html
    clock/          gif/                 index_vtx2.html      navigation.html  report/            upload_files/
    Clock.class     head.html            ix.html              oldfiles/        research/
    data/           images/              js/                  ops/             rss_feeds/
    display_panel/  index.20120629.html  low_bandwidth/       other/           science/

!SLIDE bullets incremental
# Catalog 2 Requirements
## many projects:

- single database
- single code-base

!SLIDE bullets incremental
# Catalog 2 Requirements
## per-project customization:

- views (**HTML**)

    - banners
    - footers
    - sub-pages:
        - home page
        - tools & links
        - etc.

!SLIDE bullets incremental
# Catalog 2 Requirements
## per-project customization:

- style (**CSS**)

!SLIDE bullets incremental
# Catalog 2 Requirements
## browser support

- modern desktop browsers:
    - Chrome
    - Firefox
    - Safari
    - etc.

!SLIDE bullets incremental
# Catalog 2 Requirements
## browser support

- mobile browsers:
    - Android
    - iOS / Mobile Safari
    - phone **and** tablet form factors
    - not just *works ok*, but *works well*
