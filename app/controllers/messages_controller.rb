class MessagesController < ApplicationController
  def create
    @storyroom = Storyroom.find(params[:storyroom_id])
    @message = @storyroom.messages.build(message_params)
    @message.user = current_user
    if @message.save
      redirect_to @storyroom
    else
      render 'storyrooms/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
