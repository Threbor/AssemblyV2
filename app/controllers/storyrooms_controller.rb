class StoryroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @storyrooms = Storyroom.where(user: current_user).order(created_at: :desc)
    @groups = []
    current_user.storyroom_characters.each do |storyroom_character|
      @groups << storyroom_character.storyroom if storyroom_character.storyroom.user != current_user
    end
    @groups.sort_by! { |group| group.created_at }.reverse!
  end


  def show
    @storyroom = Storyroom.find(params[:id])
    @title = @storyroom.title
    @universe = @storyroom.universe
    @storycards = @storyroom.storycards
    @messages = @storyroom.messages
    @events = @storyroom.events
    @characters = @storyroom.universe.characters
    @words = @storyroom.universe.words

    @timeline_items = (@storyroom.events + @storyroom.messages).sort_by(&:created_at).reverse

    @storyroom_characters = @storyroom.storyroom_characters.sort_by(&:created_at)

    @message = Message.new
  end

  def new
    @storyroom = Storyroom.new
    @universe = Universe.find(params[:universe_id])
    @synopsis = Synopsis.find(params[:synopse_id])
    @character = Character.find(params[:character_id])
    @title = @universe.title
    @words = @universe.words
  end


  def create
    # création de la salle de jeu
    @synopsis = Synopsis.find(params[:storyroom][:storyroom_synopsis_original_id])
    @character = Character.find(params[:storyroom][:storyroom_character_original_id])
    @storyroom = Storyroom.new
    @universe = Universe.find(params[:storyroom][:universe_id])
    @storyroom.universe = @universe
    @storyroom.user = current_user
    @storyroom.title = params[:storyroom][:title]
    @storyroom.storyroom_synopsis = params[:storyroom][:storyroom_synopsis]

    # création du personnage
    @storyroom_character = StoryroomCharacter.new(storyroom: @storyroom, user: current_user)
    @storyroom_character.name = params[:storyroom][:storyroom_character_name]
    @storyroom_character.quotation = params[:storyroom][:storyroom_character_quotation]
    @storyroom_character.background = params[:storyroom][:storyroom_character_background]
    @storyroom_character.photo = params[:storyroom][:storyroom_character_photo]

    if @storyroom.save
      # création du personnage
      @storyroom_character.storyroom = @storyroom
      @storyroom_character.save

      # création des cartes de mots associées au monde
      @universe.words.each do |word|
        @storycard = Storycard.new
        @storycard.title = word.title
        @storycard.storyroom = @storyroom
        @storycard.save
      end


      redirect_to storyroom_path(@storyroom)
    else
      render :new
    end
  end

  def edit
    @storyroom = Storyroom.find(params[:id])
    @title = @storyroom.title
    @universe = @storyroom.universe
    @storyroom_synopsis = @storyroom.storyroom_synopsis
    @storyroom_character = StoryroomCharacter.find_by(storyroom: @storyroom, user: current_user)
  end

  def update
    @storyroom = Storyroom.find(params[:id])
    @storyroom.update(
      title: params[:storyroom][:title],
      storyroom_synopsis: params[:storyroom][:storyroom_synopsis])

    redirect_to storyroom_path(@storyroom)
  end

  def destroy
    @storyroom = Storyroom.find(params[:id])
    if @storyroom.destroy
      flash[:notice] = "Storyroom has been deleted successfully."
    else
      flash[:alert] = "There was an error deleting the Storyroom."
    end
    redirect_to storyrooms_path
  end



  private

  def storyroom_params
    params.require(:storyroom).permit(
      :title,
      :universe_id,
      :storyroom_synopsis_original_id,
      :storyroom_synopsis,
      :storyroom_character_original_id,
      :storyroom_character_name,
      :storyroom_character_quotation,
      :storyroom_character_background,
      :storyroom_character_photo
    )
  end
end
