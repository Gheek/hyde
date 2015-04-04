Router.configure
  layoutTemplate: 'body'

Router.route '/', () ->
  @render('hello')

Router.route 'test', () ->
  @render('test')

