# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#add_weapon").on "click", ->
		$(".ship_weapon_form").removeClass('hidden')
	$(".actions input").on "click", ->
		$(".ship_weapon_form").addClass('hidden')
	$("#federation_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Federation").toggleClass("hidden")
	$("#klingon_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Klingon").toggleClass("hidden")
	$("#romulan_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Romulan").toggleClass("hidden")
	$("#tholian_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Tholian").toggleClass("hidden")
	$("#kzinti_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Kzinti").toggleClass("hidden")
	$("#gorn_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Gorn").toggleClass("hidden")
	$("#orion_sort").on "click", ->
		$('.fleet_index').addClass('hidden')
		$(".Orion").toggleClass("hidden")
	$("#show_all_empires").on "click", ->
		$('.fleet_index').removeClass('hidden')