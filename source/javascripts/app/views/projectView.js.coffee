window.app = window.app or {}
app.ProjectView = class ProjectView extends Backbone.View
  el: "#main"
  initialize: ->
    @render()

  render: ->
    projectHTML = Handlebars.compile(app.templates.projectView)
    copy = projectHTML(@model.toJSON())
    @$el.html copy
    @el
