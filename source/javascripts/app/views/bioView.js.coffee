window.app = window.app or {}
app.BioView = Backbone.View.extend
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.bioView