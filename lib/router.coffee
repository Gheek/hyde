Router.configure
  layoutTemplate: 'nav'

Router.route '/', () ->
  @render 'hello', to: 'content'

Router.route 'fingerprint', () ->
  @render 'fingerprint', to: 'content'
