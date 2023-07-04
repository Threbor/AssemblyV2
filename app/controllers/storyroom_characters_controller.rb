class StoryroomCharactersController < ApplicationController

  def new
    @storyroom = Storyroom.find(params[:storyroom_id])
    @universe = @storyroom.universe
    @characters = @universe.characters
    @storyroom_character = StoryroomCharacter.new
    @close_users = []
    current_user.storyroom_characters.each do |storyroom_character|
      @close_users << User.find(storyroom_character.storyroom.user_id) if User.find(storyroom_character.storyroom.user_id) != current_user
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
      render :new
    end
  end


  def edit
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storyroom_character = StoryroomCharacter.find(params[:id])
  end

  def update
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storyroom_character = StoryroomCharacter.find(params[:id])
    @storyroom_character.update(storyroom_character_params)
    redirect_to storyroom_path(@storyroom)
  end

  def destroy
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storyroom_character = StoryroomCharacter.find(params[:id])
    @storyroom_character.destroy
    redirect_to storyroom_path(@storyroom)
  end

  private

  def storyroom_character_params
    params.require(:storyroom_storyroom_characters).permit(:storyroom_id, :character_id, :username)
  end

end
