window.app = window.app or {}
app.Router = Backbone.Router.extend
  routes:
    "": "index"
    "projects": "index"
    "projects/:id": "show"
    bio: "bio"
    contact: "contact"

  initialize: -> # on init of router, manually make projects in a collection
    app.projects = new app.Projects([
      new app.Project(
        id: 1
        title: "DidThatFit.Me"
        summary: "Clothes gotta fit you man"
        content: "MY SPIIIIIIIIINE!!!!"
      )
      new app.Project(
        id: 2
        title: "Fireball"
        summary: "Translation app"
        content: "lolololo"
      )
      new app.Project(
        id: 3
        title: "Burning Airlines"
        summary: "Burninggggg"
        content: "Rawr"
      )
      new app.Project(
        id: 4
        title: "??? It's a mystery"
        summary: "My final. What will this be"
        content: "Woop"
      )
    ])
    console.log "routes init"
    return
  index: ->
    view = new app.AppView(collection: app.projects)
    view.render()
    console.log "got to projects/index thing"
    return
  show: (id) ->
    # render single project
    project = app.projects.get(id)
    new app.ProjectView(model: project)
    console.log "got to project " + id
    return
  bio: ->
    #render about view
    view = new app.BioView()
    view.render()
    console.log "you got to bio"
    return
  contact: ->
    view = new app.ContactView()
    view.render()
    console.log "you got to contact"
    return