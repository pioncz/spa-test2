class @Glue
  constructor: (@site, @gui, @serverSideAdapter) ->
    After(@site, "start", => @gui.loadLinks())
    After(@gui, "loadLinks", => @serverSideAdapter.loadSite('1'))
    After(@serverSideAdapter, "jsonSiteLoaded", (singleSite) => @site.setSite(singleSite))

    After(@site, "setSite", (singleSite) => @gui.showSite(singleSite))