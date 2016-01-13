# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

WHITE = "#FFFFFF"

color_dic = "0123456789ABCDE".split('')
randomColor = ->
  "#" + (_.sample(color_dic) for num in [1..6]).join('')

$ ->
  $tds = $('.js-board td')

  # setting cells height to equal width
  $tds.css height: $tds.innerWidth()

  # changing colors
  $tds.on 'click', ->
    $this = $(@)
    
    if $this.attr('data-color') == WHITE
      color = randomColor()
      $this
        .css('background-color': color)
        .attr('data-color', color)
    else
      $this
        .css('background-color': WHITE)
        .attr('data-color', WHITE)

  # color reset
  $('#reset-to-white').on 'click', ->
    $tds
      .css('background-color': WHITE)
      .attr('data-color', WHITE)
    false

  # before submitting, put actual color data to board_data input
  $('#save-btn').on 'click', ->
    colors = $tds.map(-> $(@).attr('data-color')).toArray()
    json = JSON.stringify(colors)
    $('#board_color_data').val(json)
