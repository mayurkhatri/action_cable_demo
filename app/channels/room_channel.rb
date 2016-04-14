# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    # stream will call received on client side
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #byebug
    Message.create!(content_text: data['message'])
    #ActionCable.server.broadcast 'room_channel', message: data['message']
  end
end
