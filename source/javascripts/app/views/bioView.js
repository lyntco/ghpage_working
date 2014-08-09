var app = app || {};

app.BioView = Backbone.View.extend({
  el: '#main',
  initialize: function(){},
  render: function(){
    this.$el.html( app.templates.bioView )
  }
});