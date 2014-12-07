# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./Controllers/main
#= require_tree ./Directives/main
#= require_tree ./Filters/main
#= require_tree ./Services/main

Blog = angular.module('Blog', [])

Blog.config(['$routeProvider', ($routeProvider) ->

  $routeProvider.when '/',
   templateUrl: "../assets/mainIndex.html" , controller: 'IndexCtrl'

  $routeProvider.when('/post/:postId', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )
 
  $routeProvider.otherwise
   redirectTo: '/'
])

