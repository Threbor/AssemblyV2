class StoryroomsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    @storyrooms = Storyroom.all

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

    @timeline_items = (@storyroom.events + @storyroom.messages).sort_by(&:created_at)

    @message = Message.new
  end

  def new
    @storyroom = Storyroom.new
    @universe = Universe.find(params[:universe_id])
    @title = @universe.title
    @words = @universe.words
  end

  def create
    # création de la salle de jeu
    @storyroom = Storyroom.new(storyroom_params)
    @storyroom.user = current_user
    # @storyroom.user = current_user

    # création des cartes de mots liés à la salle de jeu
    @storyroom.universe.words.each do |word|
      Storycard.create(title: word.title, storyroom: @storyroom)
    end

    if @storyroom.save
      redirect_to storyroom_path(@storyroom)
    else
      render :new
    end
  end


  private

  def storyroom_params
    params.require(:storyroom).permit(:title, :universe_id)
  end
end
