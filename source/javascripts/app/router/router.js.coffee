window.app = window.app or {}
app.Router = class Router extends Backbone.Router
  routes:
    "": "index"
    "projects/:id": "show"
    bio: "bio"
    contact: "contact"

  initialize: -> # on init of router, make projects in a collection
    app.projects = new app.Projects([
      new app.Project(
        id: 1
        title: "First Project"
        content: "MY SPIIIIIIIIINE!!!!"
      )
      new app.Project(
        id: 2
        title: "Second Project"
        content: "Laalallalala"
      )
      new app.Project(
        id: 3
        title: "Third Project"
        content: "Rawr"
      )
      new app.Project(
        id: 4
        title: "Forth Project"
        content: "Woop"
      )
    ])
    console.log "routes init"

  index: ->
    view = new app.AppView(collection: app.projects)
    view.render()
    console.log "got to projects/index thing"

  show: (id) ->

    # render single project
    project = app.projects.get(id)
    new app.ProjectView(model: project)
    console.log "got to project " + id

  bio: ->

    #render about view
    view = new app.BioView()
    view.render()
    console.log "you got to bio"

  contact: ->
    view = new app.ContactView()
    view.render()
    console.log "you got to contact"