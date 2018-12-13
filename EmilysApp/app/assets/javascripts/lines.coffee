# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', () ->
  
  $('body').on 'change', 'select', (e) ->
    $(this).trigger('itemChange', $(this).val())    
  
  $('body').on 'itemChange', '.nested-fields', (e, value) ->
   	element = $(this).find("input[name$='\[unit_price\]']")
    element.val(window.BasePrices[+value])