var app = app || {};

app.ProjectView = Backbone.View.extend({
  el: '#main',
  initialize: function(){
    this.render();
  },
  render: function(){
    var projectHTML = Handlebars.compile( app.templates.projectView );
    var copy = projectHTML( this.model.toJSON() );
    this.$el.html( copy );
    return this.el
  }
});