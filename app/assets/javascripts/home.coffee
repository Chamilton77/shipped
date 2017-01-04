# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
	$('.destroy-boat').on 'ajax:success', (e) ->
		$(this).closest('.boat').remove()
	.on "ajax:error", (e) ->
		console.log(e)

	$(document).on 'turbolinks:load', -> 
	$('#jobsboats').on 'click', ->
		$('.modal').modal()	
