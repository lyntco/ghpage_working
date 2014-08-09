var app = app || {};

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function(){
    this.render()
  },
  render: function(){
    this.$el.html( app.templates.appView )
    this.collection.each(function(p){
      var view = new app.ProjectListView({model: p});
      $('#projects').append( view.render() );
    });
  }
});