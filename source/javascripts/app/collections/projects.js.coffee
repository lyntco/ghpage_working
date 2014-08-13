window.app = window.app or {}

app.Projects = Backbone.Collection.extend
  url: "/projects"
  model: app.Project