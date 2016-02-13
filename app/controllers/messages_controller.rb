class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    # Create new message form when succeeded
    @message = Message.new if @message.save

    @messages = Message.all
    render 'index'
  end

  private

  def message_params
    params.require(:message).permit(:message)
  end
end
