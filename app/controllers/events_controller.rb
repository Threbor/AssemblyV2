class EventsController < ApplicationController
  def create
    @storyroom = Storyroom.find(params[:storyroom_id])
    @storycards = @storyroom.storycards
    @event = @storyroom.events.create
    @event.word = Word.find_by(title: @storycards.sample.title)
    @storycards.find_by(title: @event.word.title).destroy
    @event.dice_value = rand(1..20)
    @event.description = outcome(@event.dice_value)

    if @event.save
      redirect_to @storyroom
    else
      redirect_to @storyroom
    end
  end

  private

  def event_params
    params.require(:event).permit(:storyroom_id)
  end

  def outcome(dice_value)
    if dice_value <= 5
      'Désastreux'
    elsif dice_value <= 10
      'Contrariant'
    elsif dice_value <= 15
      'Opportun'
    elsif dice_value <= 20
      'Triomphant'
    else
      'Neutre'
    end
  end

end
