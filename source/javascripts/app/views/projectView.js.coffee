window.app = window.app or {}
class app.ProjectView extends Backbone.View
  el: "#main"
  initialize: ->
    @render()

  render: ->
    projectHTML = Handlebars.compile(app.templates.projectView)
    copy = projectHTML(@model.toJSON())
    @$el.html copy
    @el
