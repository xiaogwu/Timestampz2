# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  count = 1
  $('#add-teacher-form').on('click', ->
    $(@).before("<h4>Teacher</h4>")
    $(@).before("<label for='first_name'>First name</label>")
    $(@).before("<input id='teacher_#{count}_first_name' type='text' name='teacher[#{count}][first_name]'>")
    $(@).before("<label for='last_name'>Last name</label>")
    $(@).before("<input id='teacher_#{count}_last_name' type='text' name='teacher[#{count}][last_name]'><br>")

    count++
    )
