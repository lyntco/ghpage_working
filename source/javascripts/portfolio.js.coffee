# sets up the global object
window.app = window.app or {}

$(document).ready ->
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
