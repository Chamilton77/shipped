# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', -> 
	$('#mbut').on 'click', ->
		$('.modal').modal()

	$('.fboat').on 'click', ->
		$button = $(this)
		window.selected_job = $button.closest ".job"
		$('.jobid').each ->
			$(this).val($button.prev("input").val())
		$('#boatmodal').modal()

	$('.destroy-job').on 'ajax:success', (e) ->
		$(this).closest('.job').remove()
	.on "ajax:error", (e) ->
		console.log(e)
		