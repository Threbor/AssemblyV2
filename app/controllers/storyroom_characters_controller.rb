class StoryroomCharactersController < ApplicationController

  def new
    @storyroom = Storyroom.find(params[:storyroom_id])
    @universe = @storyroom.universe
    @characters = @universe.characters
    @storyroom_character = StoryroomCharacter.new
    @close_users = Set.new
    current_user.storyroom_characters.each do |storyroom_character|
      user = User.find(storyroom_character.storyroom.user_id)
      @close_users << user if user != current_user
    end
  end

  def create
    @storyroom = Storyroom.find(params[:storyroom_id])
    @user = User.find_by(username: params[:username])

    @character = Character.find(params[:character_id])
    @storyroom_character = StoryroomCharacter.new
    @storyroom_character.storyroom = @storyroom
    @storyroom_character.photo = @character.photo
    @storyroom_character.name = @character.name
    @storyroom_character.quotation = @character.quotation
    @storyroom_character.background = @character.background
    @storyroom_character.user = @user
    if @storyroom_character.save
      redirect_to storyroom_path(@storyroom)
    else
      @universe = @storyroom.universe
      @characters = @universe.characters
      @close_users = []
      current_user.storyroom_characters.each do |storyroom_character|
        @close_users << User.find(storyroom_character.storyroom.user_id) if User.find(storyroom_character.storyroom.user_id) != current_user
      end
      render :new
    end
  end


  def edit
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storyroom_character = StoryroomCharacter.find(params[:id])
  end

  def update
    @storyroom_character = StoryroomCharacter.find(params[:id])
    @storyroom_character.update(
      name: storyroom_character_params[:storyroom_character_name],
      quotation: storyroom_character_params[:storyroom_character_quotation],
      background: storyroom_character_params[:storyroom_character_background]
    )
    @storyroom = Storyroom.find(@storyroom_character.storyroom_id)
    redirect_to storyroom_path(@storyroom)
  end


  def destroy
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storyroom_character = StoryroomCharacter.find(params[:id])
    @storyroom_character_user = @storyroom_character.user
    @storyroom_user_messages = @storyroom.messages.where( user: @storyroom_character_user)
    @storyroom_user_messages.each do |message|
      message.destroy
    end
    @storyroom_character.destroy

    if current_user == @storyroom.user
      redirect_to storyroom_path(@storyroom)
    else
      redirect_to storyrooms_path
    end
  end

  private

  def storyroom_character_params
    params.require(:storyroom_character).permit(
      :storyroom_id,
      :character_id,
      :username,
      :storyroom_character_name,
      :storyroom_character_quotation,
      :storyroom_character_background,
    )
  end

end
