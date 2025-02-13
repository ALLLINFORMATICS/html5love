window.app = {}
app.controllers = {}
app.models = {}
app.collections = {}
app.views = {}

MainController = require('controllers/main_controller').MainController
HomeView = require('views/home_view').HomeView
viewHandler = require('views/viewHandler').viewHandler

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.controllers.main = new MainController()
    app.views.home = new HomeView()
    app.views.viewHandler = new viewHandler()
    Backbone.history.saveLocation("!/home") if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
