class Storyroom < ApplicationRecord
  belongs_to :universe
  has_many :messages
  has_many :users, through: :messages
  has_many :events
  has_many :words, through: :events
  has_many :storycards
  validates :title, presence: true, uniqueness: { scope: :universe }
end
