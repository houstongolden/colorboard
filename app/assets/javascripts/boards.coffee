# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


color_dic = "0123456789ABCDE".split('')
randomColor = ->
  "#" + (_.sample(color_dic) for num in [1..6]).join('')



$ ->
  $tds = $('.colorboard td')
  $tds.css height: $tds.innerWidth()

  $tds.on 'click', ->
    $this = $(@)
    
    if $this.hasClass 'js-white'
      $this.css('background-color': randomColor())
    else
      $this.css('background-color': '#fff')
    $this.toggleClass 'js-white'

  $('#reset-to-white').on 'click', ->
    $tds.addClass('js-white').css('background-color': '#fff')
