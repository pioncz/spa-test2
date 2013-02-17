class @Gui

  createElementFor: (templateId, data) =>
    source = $(templateId).html()
    template = Handlebars.compile(source)
    html = template(data)
    element = $(html)

  showSite: (singleSite) =>
    element = @createElementFor("#show-site-template", singleSite)
    $(".content").empty()
    $(".error-box").empty()
    $(".error-box").css("display","none")
    $(".content").append(element)

  loadLinks: =>
    $("#show-site-1").click(=> @showSiteClicked("1"))
    $("#show-site-2").click(=> @showSiteClicked("2"))
    $("#show-site-3").click(=> @showSiteClicked("3"))
    $("#show-site-4").click(=> @showSiteClicked("4"))
    $("#show-site-5").click(=> @showSiteClicked("5"))

  showSiteClicked: (id)=>

  showError: (xhr, ajaxOptions, thrownError)=>
    $(".error-box").append("Error (" + xhr.status + "): " + thrownError)
    $(".error-box").css("display","block")