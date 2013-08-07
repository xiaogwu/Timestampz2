# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.showcal').datepicker({ dateFormat: 'mm-dd-yy' })

  # form = '.assignment-form'
  # count = '1'

  # $('.add-assignment-form').on('click', ->
  #   $(form).after(
  #     "<input class='showcal' type='text' name='assignment[#{count}][due_date]'>")
  #   $(form).after("<label for='due_date'>Due date</label>")
  #   $(form).after()

  #   $('.showcal').datepicker({ dateFormat: 'mm-dd-yy' })
  # )
