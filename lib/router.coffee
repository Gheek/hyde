Router.configure
  layoutTemplate: 'nav'

Router.route '/', () ->
  @render 'hello', to: 'content'

Router.route 'fingerprint', () ->
  if (!Meteor.userId())
    Router.go '/'
  @render 'fingerprint', to: 'content'
