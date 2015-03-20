# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  onclick = ->
  	x = 1
  	$(".avatar").click (event) ->
  		$(@).css("color", "red")

  onclick()