window.app = window.app or {}
app.Project = Backbone.Model.extend
  urlRoot: "/projects"
  defaults:
    title: "Project"
    link: "#"
    imageLarge: "/images/project01.jpg"
    imageThumb: "/images/project01_thumb.jpg"
    images: [
      "/images/project01_01.jpg"
      "/images/project01_02.jpg"
    ]
    summary: "This is a project"
    detail: "This is a detailed description of this Project"
    builtWith: [
      "Backbonejs"
      "Handlebars"
      "Javascript"
      "Hosted by Github.io"
    ]
    collaborators: [] #objects for people {name: 'bob', link: 'http://github.com/bob'}
