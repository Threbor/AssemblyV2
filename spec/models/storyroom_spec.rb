require 'rails_helper'

RSpec.describe Storyroom, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:user) { create(:user, email: 'tester@mail.com', password: '123456', username: 'testeur') }
  let(:storyroom) { create(:storyroom, universe: universe, title: 'test storyroom', user: user) }

    it 'has a valid factory' do
      expect(storyroom).to be_valid
    end

    it 'is invalid without a universe' do
      storyroom.universe = nil
      expect(storyroom).not_to be_valid
    end

    it 'is invalid without a title' do
      storyroom.title = nil
      expect(storyroom).not_to be_valid
    end

    it 'is invalid without a user' do
      storyroom.user = nil
      expect(storyroom).not_to be_valid
    end

    it 'is invalid with a duplicate universe and title' do
      storyroom
      duplicate_storyroom = build(:storyroom, universe: universe, title: 'test storyroom')
      expect(duplicate_storyroom).not_to be_valid
    end

    it 'is valide without a synopsis' do
      storyroom.storyroom_synopsis = nil
      expect(storyroom).to be_valid
    end

end
