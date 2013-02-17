class @Site
  constructor: ->
    @sites = []
    console.log("Site.constructor")
    @counter = 0

  start: =>
    console.log("site started")

  setSite: (singleSite) =>
    console.log("set site: "+singleSite.name)

class @SingleSite
  constructor: (@id, @name, @content) ->
    @cid = null

  setCid: (@cid) =>