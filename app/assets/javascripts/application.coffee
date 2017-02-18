#= require jquery
#= require jquery_ujs
#= require_tree .

# Scroll down past the jumbotron
$(document).on 'click', '#scroll-down', (event) ->
  event.preventDefault()
  $('html, body').animate
    scrollTop: $('#jumbotron').height()
  , 800
