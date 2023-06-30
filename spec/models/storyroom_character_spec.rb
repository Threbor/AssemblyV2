require 'rails_helper'

RSpec.describe StoryroomCharacter, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:user) {create(:user, email:"hello@mail.com", password:"123456", username:"hello")}
  let(:storyroom) { create(:storyroom, universe: universe, title: 'test storyroom', user: user) }
  let(:storyroom_character) { create(:storyroom_character, storyroom: storyroom) }

  it 'has a valid factory' do
    expect(storyroom_character).to be_valid
  end

  it 'is invalid without a storyroom' do
    storyroom_character.storyroom = nil
    expect(storyroom_character).not_to be_valid
  end

end
