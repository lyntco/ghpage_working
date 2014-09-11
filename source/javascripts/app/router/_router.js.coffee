window.app = window.app or {}
app.Router = Backbone.Router.extend
  routes:
    "": "index"
    "web": "web"
    "design": "design"
    "projects/:id": "show"
    bio: "bio"
    contact: "contact"

  initialize: -> # on init of router, manually make projects in a collection
    app.projects = new app.Projects([
      new app.Project(
        id: 1
        type: "web"
        title: "DidThatFit.Me"
        link: "http://www.didthatfit.me"
        summary: "Keep track of how brands fit you."
        detail: "Sometimes the clothes you buy don't quite fit you. The next time you go to buy from that same brand, you may forget - DidThatFit will help you keep track of those items, and recommend you sizes of other brands! Upload photos of your clothing and make a note of how it fit you. Your fit history is where you'll see how all the brands you've already bought and loved fair."
        imageLarge: "/images/dtf_01.png"
        imageThumb: "/images/dtf_01.png"
        images: [
          "dtf_02.png"
          "dtf_03.png"
        ]
        builtWith: [
          "Rails"
          "HAML"
          "Google Translate API"
          "Geocoder gem"
          "Forecast.io gem"
          "Hosted by Heroku"
        ]
      )
      new app.Project(
        id: 2
        type: "web"
        title: "Fireball"
        link: "http://fireballtalks.herokuapp.com"
        imageLarge: "/images/fireball.png"
        imageThumb: "/images/fireball.png"
        images: [
          "fireball_02.png"
          "fireball_03.png"
        ]
        summary: "Learn languages with Fireball."
        detail: "<p>Fireball is a fun translation app. You can learn with the chat function, and test your knowledge when you battle Fireball.</p>
          <p></p>"
        builtWith: [
          "Rails"
          "Google Translate API"
          "Javascript"
          "Hosted by Heroku"
        ]
        collaborators: [
          { name: "Rich Field", link: "http://rich-field.github.io"}
          { name: "Rira Choi", link: "http://rirachoi.github.io"}
        ]
      )
      # new app.Project(
      #   id: 3
      #   type: "web"
      #   title: "Burning Airlines"
      #   # link: "http://fireballtalks.herokuapp.com"
      #   imageLarge: "/images/project03.jpg"
      #   imageThumb: "/images/project03_thumb.jpg"
      #   images: [
      #     "/images/project03_01.jpg"
      #     "/images/project03_02.jpg"
      #   ]
      #   summary: "A flight booking app"
      #   detail: "This is a detailed description of this Project"
      #   builtWith: [
      #     "Backbone"
      #     "Rails"
      #     "Javascript"
      #     # "Hosted by Heroku"
      #   ]
      #   collaborators: [
      #     { name: "Allen Hsu", link: "http://github.com/aldhsu" }
      #   ]
      # )
      new app.Project(
        id: 4
        type: "web"
        imageLarge: "/images/stereospace-01.png"
        imageThumb: "/images/stereospace-01.png"
        title: "StereoSpace"
        link: "http://stereospace.herokuapp.com"
        summary: "A digital soundboard you can record your beats on."
        detail:"<p>StereoSpace is an online sound studio built as a single page app.</p>
        <p>The keyboard is your soundboard. Once you like your beat, hit record and play that beat again to save it. </p>
        <p>You can add as many tracks as you like, and you can move the sound segment you made along the track.</p>
        <p>We were inspired by an in browser soundboard called Patatap for this project. I wanted to challenge myself by adding a feature that recorded the sounds so you could replay them.</p>"
        builtWith: [
          "Backbone"
          "Rails"
          "Coffeescript"
          "Web Audio API"
          # "Hosted by Heroku"
        ]
        collaborators: [
          { name: "Rich Field", link: "http://rich-field.github.io" }
        ]
      )
      new app.Project(
        id: 5
        type: "web"
        imageLarge: "/images/pubcrawl.png"
        imageThumb: "/images/pubcrawl.png"
        title: "PubCrawl"
        link: "http://pubcrawl.herokuapp.com"
        summary: "A social pub discovery app"
        detail: "PubCrawl is a social game. Sign up, follow friends and pubs, view challenges and try to complete them to earn points and badges. This app not only provides a social fun experience for users but can also benefit pubs and clubs to promote their bussiness and reel in patrons.
        <p>PubCrawl was originally concepted by Daisy early on in WDI. After the course, I joined the team to make this possible, using PhoneGap tp turn it into a native app for portable devices.</p>"
        builtWith: [
          "PhoneGap"
          "Backbone"
          "Rails"
          "HAML"
          # "Hosted by Heroku"
        ]
        collaborators: [
          { name: "Daisy Smith", link: "http://daisymarie128.github.io/" }
        ]
      )
    ])
    return
  index: ->
    view = new app.AppView(collection: app.projects)
    view.render()
    return
  web: ->
    webProjects = new app.Projects(app.projects.where({type: "web"}))
    view = new app.AppView(collection: webProjects)
    view.render()
    @underlineNav('Web')
    return
  design: ->
    designProjects = new app.Projects(app.projects.where({type: "design"}))
    view = new app.AppView(collection: designProjects)
    view.render()
    @underlineNav('Design')
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
    @underlineNav('Bio')
    return
  contact: ->
    view = new app.ContactView()
    view.render()
    @underlineNav('Contact')
    return
  underlineNav: (name)->
    $('nav li a:not(:contains("'+name+'"))').css('border', 'none')
    $('nav li a:contains("'+name+'")').css('border-bottom', '5px solid #712337')