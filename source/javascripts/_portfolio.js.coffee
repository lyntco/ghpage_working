# sets up the global object
window.app = window.app or {}


window.onload = ->

  $(document).ready ->

    $('#preload').delay(500).slideUp(700)
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
