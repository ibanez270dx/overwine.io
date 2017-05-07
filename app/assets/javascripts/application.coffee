#= require jquery
#= require jquery_ujs
#= require lodash
#= require_tree .

#################################################
# Jumbotron
#################################################

# Scroll down past the jumbotron
$(document).on 'click', '#scroll-down', (event) ->
  event.preventDefault()
  $('html, body').animate({ scrollTop: $('#jumbotron').height() }, 800)

# Remove arrow after scrolling at least 1/6th of jumbotron
$(window).on 'scroll', (event) ->
  if $(this).width() >= 560
    if $(this).scrollTop() > ($('#jumbotron').height()/6)
    then $('#scroll-down').fadeOut 'slow'
    else $('#scroll-down').fadeIn 'slow'

#################################################
# Contact Us
#################################################

validateContactForm = ->
  form = $('#contact-us form')
  if form.find('#email').val()=="" or form.find('#message').val()==""
  then form.find(':submit').attr('disabled','disabled')
  else form.find(':submit').removeAttr('disabled')

$(document).ready ->
  $('#contact-us :input').on 'change', _.debounce(validateContactForm, 250)
  $('#contact-us :input').on 'keyup', _.debounce(validateContactForm, 250, { 'leading': true, 'trailing': true })
  validateContactForm()
