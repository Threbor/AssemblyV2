class Storyroom < ApplicationRecord
  belongs_to :universe
  belongs_to :user
  # has_many :messages
  # has_many :storyroom_user_associations
  # has_many :users, through: :storyroom_user_associations
  # has_many :events
  # has_many :words, through: :events
  # has_many :storycards
  # has_many :storyroom_characters
  # validates :title, presence: true, uniqueness: { scope: :universe }
  # validates :user, presence: true
  has_many :events, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :storycards, dependent: :destroy
  has_many :storyroom_characters, dependent: :destroy
end
