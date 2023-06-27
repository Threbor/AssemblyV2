require 'rails_helper'

RSpec.describe Event, type: :model do
let(:universe) { create(:universe, title: 'Contrées givrées') }
let(:storyroom) { create(:storyroom, universe: universe, title: 'test storyroom') }
let(:word) { create(:word, title: 'trahison') }
let(:event) { create(:event, storyroom: storyroom, word: word, dice_value: 20, event_output: 'test event') }

  it 'has a valid factory' do
    expect(event).to be_valid
  end

  it 'is invalid without a storyroom' do
    event.storyroom = nil
    expect(event).not_to be_valid
  end

  it 'is invalid without a word' do
    event.word = nil
    expect(event).not_to be_valid
  end

  it 'is invalid without a dice_value' do
    event.dice_value = nil
    expect(event).not_to be_valid
  end

end
