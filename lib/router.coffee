Router.configure
  layoutTemplate: 'nav'

Router.route '/', () ->
  @render 'hello', to: 'content'

Router.route 'test', () ->
  @render 'test', to: 'content'

