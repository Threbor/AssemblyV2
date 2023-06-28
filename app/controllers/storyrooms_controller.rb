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
end
