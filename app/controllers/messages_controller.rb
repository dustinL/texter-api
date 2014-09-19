class MessagesController < ApplicationController

def index
  @messages = Message.all
end

def new
  @message = Message.new
end

def create
  @message = Message.new
  if @message.save
    flash[:notice] = "Successful"
    redirect_to messages_path
  else
    render 'new'
  end
end

end
