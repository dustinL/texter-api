class MessagesController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Successful"
      redirect_to messages_path
    else
      render 'new'
    end
  end


private

  def message_params
      params.require(:message).permit(:to, :from, :body)
  end

end

