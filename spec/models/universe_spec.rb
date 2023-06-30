require 'rails_helper'

RSpec.describe Universe, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées', photo: 'a') }

  it 'has a valid factory' do
    expect(universe).to be_valid
  end

  it 'has a unique title' do
    duplicate_universe = build(:universe, title: universe.title)
    expect(duplicate_universe).not_to be_valid
  end

  it 'is invalid without a photo' do
    universe.photo = nil
    expect(universe).not_to be_valid
  end
end
