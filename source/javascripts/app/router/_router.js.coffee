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
        link: "http://www.didthatfit.me"
        summary: "Clothes gotta fit you man"
        imageLarge: "/images/project02.jpg"
        imageThumb: "/images/project02_thumb.jpg"
        images: [
          "/images/project02_01.jpg"
          "/images/project02_02.jpg"
        ]
        builtWith: [
          "Rails"
          "Google Translate API"
          "Javascript"
          "Hosted by Heroku"
        ]
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
          "Rails"
          "Google Translate API"
          "Javascript"
          "Hosted by Heroku"
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
          "Backbone"
          "Rails"
          "Javascript"
          # "Hosted by Heroku"
        ]
        collaborators: [
          { name: "Allen Hsu", link: "http://github.com/aldhsu" }
        ]
      )
      new app.Project(
        id: 4
        title: "StereoSpace"
        link: "http://stereospace.herokuapp.com"
        summary: "A Music app"
        content: "A digital soundboard you can record your beats on."
        builtWith: [
          "Backbone"
          "Rails"
          "Coffeescript"
          # "Hosted by Heroku"
        ]
        collaborators: [
          { name: "Rich Field", link: "http://github.com/toodelirious" }
        ]
      )
    ])
    return
  index: ->
    view = new app.AppView(collection: app.projects)
    view.render()
    return
  show: (id) ->
    # render single project
    project = app.projects.get(id)
    new app.ProjectView(model: project)
    return
  bio: ->
    #render about view
    view = new app.BioView()
    view.render()
    return
  contact: ->
    view = new app.ContactView()
    view.render()
    return