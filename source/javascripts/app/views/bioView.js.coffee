window.app = window.app or {}
app.BioView = class BioView extends Backbone.View
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.bioView