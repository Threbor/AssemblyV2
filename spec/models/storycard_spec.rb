require 'rails_helper'

RSpec.describe Storycard, type: :model do
  let(:universe) { Universe.create(title: 'test') }
  let(:storyroom) { Storyroom.create(title: 'test', universe: universe) }
  let(:storycard) { Storycard.create(title: 'test', storyroom: storyroom) }

    it 'storycard is valid ' do
      expect(storycard).to be_valid
    end

    it 'storycard is not valid without title' do
      storycard.title = nil
      expect(storycard).not_to be_valid
    end

    it 'storycard is not valid without storyroom' do
      storycard.storyroom = nil
      expect(storycard).not_to be_valid
    end

end
