class Universe < ApplicationRecord
  has_many :universe_word_associations
  has_many :words, through: :universe_word_associations
  has_many :universe_character_associations, dependent: :destroy
  has_many :characters, through: :universe_character_associations
  validates :title, presence: true
  validates :title, uniqueness: true
end
