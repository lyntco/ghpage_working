window.app = window.app or {}
class app.ContactView extends Backbone.View
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.contactView