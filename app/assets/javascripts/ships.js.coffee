# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#add_weapon").on "click", ->
		$(".ship_weapon_form").removeClass('hidden')
	$(".actions input").on "click", ->
		$(".ship_weapon_form").addClass('hidden')
	# $(".edit_weapon_link").on "click", ->
 #        row = $(this).closest("tr")
 #        ship_id = row.data("id")
 #        row.after $("#ajax_weapon_form")
 #        row.addClass("hidden")
 #        $(".ship_weapon_form").removeClass "hidden"
	