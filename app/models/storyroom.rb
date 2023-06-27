class Storyroom < ApplicationRecord
  has_many :messages
  belongs_to :universe
  has_many :words, through: :events
  validates :title, presence: true, uniqueness: { scope: :universe }
end
