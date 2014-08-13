window.app = window.app or {}
app.AppView = Backbone.View.extend
  el: "#main"
  initialize: ->
    @render()

  render: ->
    @$el.html app.templates.appView
    @collection.each (p) ->
      view = new app.ProjectListView(model: p)
      $("#my-projects").append view.render()
