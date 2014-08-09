var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'projects/:id': 'show',
    'bio': 'bio',
    'contact': 'contact'
  },
  initialize: function() { // on init of router, make projects in a collection
    app.projects = new app.Projects([
      new app.Project({id: 1, title: 'First Project', content: 'MY SPIIIIIIIIINE!!!!'}),
      new app.Project({id: 2, title: 'Second Project', content: 'Laalallalala'}),
      new app.Project({id: 3, title: 'Third Project', content: 'Rawr'}),
      new app.Project({id: 4, title: 'Forth Project', content: 'Woop'})
    ]);
    console.log('routes init')
  },
  index: function(){
    var view = new app.AppView({collection: app.projects});
    view.render();
    console.log('got to projects/index thing')
  },
  show: function(id){
    // render single project
    var project = app.projects.get(id);
    new app.ProjectView({model: project});
    console.log('got to project ' + id)
  },
  bio: function(){
    //render about view
    var view = new app.BioView();
    view.render();
    console.log('you got to bio')
  },
  contact: function(){
    var view = new app.ContactView();
    view.render();
    console.log('you got to contact')
  }
});