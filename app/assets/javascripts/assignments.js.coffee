# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#showcal').datepicker({ dateFormat: 'yy-mm-dd' })
  count = '1'
  $('.add-assignment-form').on('click', ->
    $(@).after("<input id='assignment_due_date_#{count}' id='assignment_#{count}_due_date")
    )