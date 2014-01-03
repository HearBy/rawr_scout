# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).on "click", ".clear_fit", ->
	$(".checkboxes_fit").prop("checked", false);
	$(document).find(".sizer-form").submit()
	false

$(document).on "click", ".clear_made_in", ->
	$(".checkboxes_made_in").prop("checked", false);
	$(document).find(".sizer-form").submit()
	false

$(document).on "click", ".clear_fabric_origin", ->
	$(".checkboxes_fabric_origin").prop("checked", false);
	$(document).find(".sizer-form").submit()
	false

$(document).on "click", ".clear_color", ->
	$(".checkboxes_color").prop("checked", false);
	$(document).find(".sizer-form").submit()
	false

$(document).on "click", ".clear_brand", ->
	$(".checkboxes_brand").prop("checked", false);
	$(document).find(".sizer-form").submit()
	false