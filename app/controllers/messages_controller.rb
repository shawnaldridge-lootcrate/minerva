class MessagesController < ApplicationController

  protect_from_forgery except: :create

  def create
    message = Message.new({topic_name: params[:topic_name]})
    if message.save
      ActionCable.server.broadcast 'messages',
        # message: message.content,
        topic_name: message.topic_name
      head :ok
    end
  end

end
