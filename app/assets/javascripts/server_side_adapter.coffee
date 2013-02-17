class @ServerSideAdapter
  constructor: ->
    console.log("ServerSideAdapter.constructor")

  loadSite: (siteId)=>
    console.log("ServerSideAdapter.loadSite("+siteId+")")
    $.ajax(
      type: "GET"
      url: "/sites/"+siteId+".json"
      success: (siteJson) =>
        @jsonSiteLoaded(siteJson)
      error: => @jsonSiteNotLoaded
    )

  jsonSiteLoaded: (jsonSite)=>
    singleSite = new SingleSite(jsonSite.id, jsonSite.name, jsonSite.content)
    console.log("json site loaded")