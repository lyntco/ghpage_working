window.app = window.app or {}
class app.AppView extends Backbone.View
  el: "#main"
  initialize: ->
    @render()

  render: ->
    @$el.html app.templates.appView
    @collection.each (p) ->
      view = new app.ProjectListView(model: p)
      $("#my-projects").append view.render()
