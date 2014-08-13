window.app = window.app or {}
app.ContactView = Backbone.View.extend
  el: "#main"
  initialize: ->

  render: ->
    @$el.html app.templates.contactView