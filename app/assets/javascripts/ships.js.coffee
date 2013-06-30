# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#add_weapon").on "click", ->
		$(".ship_weapon_form").removeClass('hidden')
	$(".actions input").on "click", ->
		$(".ship_weapon_form").addClass('hidden')
		