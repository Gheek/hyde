Router.configure
  layoutTemplate: 'nav'
  waitOn: () ->
    return [Meteor.subscribe('fingerprints')]

Router.route '/', () ->
  @render 'hello', to: 'content'

Router.route 'fingerprint', () ->
  if (!Meteor.userId())
    Router.go '/'
  @render 'fingerprint', to: 'content'
