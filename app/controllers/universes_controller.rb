class UniversesController < ApplicationController
  def index
    @universes = Universe.all
  end

  def show
    @universe = Universe.find(params[:id])
    @synopses = @universe.synopses
    @short_description = @universe.description.split('.')[0]
    @words = @universe.words

    @characters = @universe.characters
  end
end
