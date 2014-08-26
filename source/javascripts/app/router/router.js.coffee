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
      )
      new app.Project(
        id: 2
        title: "Fireball"
        link: "http://fireballtalks.herokuapp.com"
        imageLarge: "/images/project02.jpg"
        imageThumb: "/images/project02_thumb.jpg"
        images: [
          "/images/project02_01.jpg"
          "/images/project02_02.jpg"
        ]
        summary: "Translation app"
        detail: "This is a detailed description of this Project"
        builtWith: [
          { item: "Rails" }
          { item: "Google Translate API" }
          { item: "Javascript" }
          { item: "Hosted by Heroku" }
        ]
        collaborators: [
          { name: "Rich Field", link: "http://github.com/toodelirious"}
          { name: "Rira Choi", link: "http://github.com/rirachoi"}
        ]
      )
      new app.Project(
        id: 3
        title: "Burning Airlines"
        # link: "http://fireballtalks.herokuapp.com"
        imageLarge: "/images/project03.jpg"
        imageThumb: "/images/project03_thumb.jpg"
        images: [
          "/images/project03_01.jpg"
          "/images/project03_02.jpg"
        ]
        summary: "A flight booking app"
        detail: "This is a detailed description of this Project"
        builtWith: [
          { item: "Backbone" }
          { item: "Rails" }
          { item: "Javascript" }
          # { item: "Hosted by Heroku" }
        ]
        collaborators: [
          { name: "Allen Hsu", link: "http://github.com/aldhsu"}
        ]
      )
      new app.Project(
        id: 4
        title: "StereoSpace"
        summary: "A Music app"
        content: "A digital soundboard you can record your beats on."
        collaborators: [
          { name: "Rich Field", link: "http://github.com/toodelirious"}
        ]
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