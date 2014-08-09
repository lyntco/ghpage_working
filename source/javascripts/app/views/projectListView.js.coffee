window.app = window.app or {}
class app.ProjectListView extends Backbone.View

  # $el: '#main',
  tagName: "li"
  events:
    click: "view"

  initialize: ->

  render: ->
    listHTML = Handlebars.compile(app.templates.projectListView)
    copy = listHTML(@model.toJSON())
    @$el.html copy
    @el

  view: ->
    app.router.navigate "projects/" + @model.get("id"), true