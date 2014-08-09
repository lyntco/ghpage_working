window.app = window.app or {}
class app.BioView extends Backbone.View
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.bioView