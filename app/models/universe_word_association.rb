class UniverseWordAssociation < ApplicationRecord
  belongs_to :universe
  belongs_to :word
  validates :universe, presence: true, uniqueness: { scope: :word }
end
