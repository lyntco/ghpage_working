var app = app || {};

app.ContactView = Backbone.View.extend({
  el: '#main',
  initialize: function(){},
  render: function(){
    this.$el.html( app.templates.contactView )
  }
});