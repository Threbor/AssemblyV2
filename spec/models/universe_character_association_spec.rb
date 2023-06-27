require 'rails_helper'

RSpec.describe UniverseCharacterAssociation, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:character) { create(:character, name: 'Olaf l\'intrépide') }
  let(:universe_character_association) { create(:universe_character_association, universe: universe, character: character) }

    it 'has a valid factory' do
      expect(universe_character_association).to be_valid
    end
end
