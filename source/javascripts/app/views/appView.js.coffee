window.app = window.app or {}
app.AppView = class AppView extends Backbone.View
  el: "#main"
  initialize: ->
    @render()

  render: ->
    @$el.html app.templates.appView
    @collection.each (p) ->
      view = new app.ProjectListView(model: p)
      $("#projects").append view.render()
