class @App
  constructor: ->
    site = new Site()
    gui = new Gui()
    serverSideAdapter = new ServerSideAdapter()

    glue = new Glue(site, gui, serverSideAdapter)

    site.start()