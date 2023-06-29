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

  def edit
    @message = Message.find(params[:id])
    @storyroom = @message.storyroom
  end

  def update
    @message = Message.find(params[:id])
    if @message.update(message_params)
      redirect_to storyroom_path(@message.storyroom)
    else
      render :edit
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
