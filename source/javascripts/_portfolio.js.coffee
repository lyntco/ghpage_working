# sets up the global object
window.app = window.app or {}

$.preloadImages = ->
  i = 0

  while i < arguments.length
    $("<img />").attr "src", arguments[i]
    i++
  return

$.preloadImages "/images/dtf_01.png", "/images/dtf_02.png", "/images/dtf_03.png", "/images/fireball.png", "/images/fireball_02.png", "/images/fireball_03.png",  "/images/pubcrawl.png",  "/images/stereospace-01.png", "images/smoky.jpg", "images/me.jpg"

window.onload = ->

  $(document).ready ->

    $('#preload').slideUp(700)
    # Grabs templates off the page for user in views
    app.templates =
      appView: $("#app-template").html()
      projectListView: $("#project-list-template").html()
      projectView: $("#project-template").html()
      bioView: $("#bio-template").html()
      contactView: $("#contact-template").html()

    # Initializes router
    app.router = new app.Router()
    Backbone.history.start()
