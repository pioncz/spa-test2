class @Gui

  createElementFor: (templateId, data) =>
    source = $(templateId).html()
    template = Handlebars.compile(source)
    html = template(data)
    element = $(html)

  showSite: (singleSite) =>
    element = @createElementFor("#show-site-template", singleSite)
    $(".main").append(element)

  loadLinks: =>
    console.log("load links")
    xd = $("#s")
    xd.click( => @showSiteClicked())

  showSiteClicked: =>
    console.log("     xDD ")