window.app = window.app or {}
class app.Projects extends Backbone.Collection
  url: "/projects"
  model: app.Project