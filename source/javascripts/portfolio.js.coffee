window.app = window.app or {}
# app = app or {}
$(document).ready ->
  app.templates =
    appView: $("#app-template").html()
    projectListView: $("#project-list-template").html()
    projectView: $("#project-template").html()
    bioView: $("#bio-template").html()
    contactView: $("#contact-template").html()

  console.log(app)
  console.log(@)
  app.router = new app.Router()
  Backbone.history.start()
