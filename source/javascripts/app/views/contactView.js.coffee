window.app = window.app or {}
app.ContactView = class app.ContactView extends Backbone.View
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.contactView