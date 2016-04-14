App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log('In received')
    #alert data['message'];
    $("#messages").append data['message']

  speak: (message) ->
    console.log('In speak')
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=rooms_speaker]', (event) ->
  if event.keyCode == 13
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
