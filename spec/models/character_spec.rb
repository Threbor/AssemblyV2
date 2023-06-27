require 'rails_helper'

RSpec.describe Character, type: :model do
  let(:character) { create(:character, name: 'Olaf') }

  it 'has a valid factory' do
    expect(character).to be_valid
  end

  it 'has a unique name' do
    duplicate_character = build(:character, name: character.name)
    expect(duplicate_character).not_to be_valid
  end

end
