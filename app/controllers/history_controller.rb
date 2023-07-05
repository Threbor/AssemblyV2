class HistoryController < ApplicationController
  before_action :authenticate_user!

  def index
    @storyrooms = Storyroom.where(user: current_user).order(created_at: :desc)
    @groups = []
    current_user.storyroom_characters.each do |storyroom_character|
      @groups << storyroom_character.storyroom if storyroom_character.storyroom.user != current_user
    end
    @groups.sort_by! { |group| group.created_at }.reverse!


    @ended_stories = []
    @storyrooms.each do |storyroom|
      @ended_stories << storyroom if storyroom.storycards.count == 0
    end
    @ended_stories = @ended_stories.sort_by { |storyroom| storyroom.updated_at }.reverse

    @ended_stories_groups = []
    @groups.each do |storyroom|
      @ended_stories_groups << storyroom if storyroom.storycards.count == 0
    end
    @ended_stories_groups = @ended_stories_groups.sort_by { |storyroom| storyroom.updated_at }.reverse
  end


  def show
  end
end
