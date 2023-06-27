class UniverseCharacterAssociation < ApplicationRecord
  belongs_to :universe
  belongs_to :character
end
