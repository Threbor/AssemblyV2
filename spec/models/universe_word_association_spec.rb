require 'rails_helper'

RSpec.describe UniverseWordAssociation, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:word) { create(:word, title: 'trahison') }
  let(:universe_word_association) { create(:universe_word_association, universe: universe, word: word) }

    it 'has a valid factory' do
      expect(universe_word_association).to be_valid
    end

    it 'is invalid without a universe' do
      universe_word_association.universe = nil
      expect(universe_word_association).not_to be_valid
    end

    it 'is invalid without a word' do
      universe_word_association.word = nil
      expect(universe_word_association).not_to be_valid
    end

    it 'is invalid with a duplicate universe and word' do
      universe_word_association
      duplicate_universe_word_association = build(:universe_word_association, universe: universe, word: word)
      expect(duplicate_universe_word_association).not_to be_valid
    end

end
