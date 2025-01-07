class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your message has been sent successfully!"
      redirect_to root_path
    else
      flash[:alert] = "There was an error sending your message."
      render :new
    end
  end

  private
  
  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
