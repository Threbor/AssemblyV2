class Word < ApplicationRecord
  # has_many :universe_word_associations
  # has_many :universe, through: :universe_word_associations
  belongs_to :universe
end
