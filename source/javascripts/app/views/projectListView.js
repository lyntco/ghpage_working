var app = app || {};

app.ProjectListView = Backbone.View.extend({
  // $el: '#main',
  tagName: 'li',
  events: {
    'click': 'view'
  },
  initialize: function(){

  },
  render: function(){
    var listHTML = Handlebars.compile(app.templates.projectListView);
    var copy = listHTML( this.model.toJSON() );
    this.$el.html( copy );
    return this.el;
  },
  view: function() {
    app.router.navigate('projects/' + this.model.get('id'), true );
  }
});