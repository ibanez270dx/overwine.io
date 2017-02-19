#= require jquery
#= require jquery_ujs
#= require_tree .

# Scroll down past the jumbotron
$(document).on 'click', '#scroll-down', (event) ->
  event.preventDefault()
  $('html, body').animate({ scrollTop: $('#jumbotron').height() }, 800)

# Remove arrow after scrolling at least 1/6th of jumbotron
$(window).on 'scroll', (event) ->
  if $(this).scrollTop() > ($('#jumbotron').height()/6)
  then $('#scroll-down').fadeOut 'slow'
  else $('#scroll-down').fadeIn 'slow'
