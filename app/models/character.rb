class Character < ApplicationRecord
  has_many :universe_character_associations, dependent: :destroy
  has_many :universes, through: :universe_character_associations
  validates :name, presence: true, uniqueness: true
end
