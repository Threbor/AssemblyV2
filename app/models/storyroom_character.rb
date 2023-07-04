class StoryroomCharacter < ApplicationRecord
  belongs_to :storyroom
  belongs_to :user
  validates :storyroom, presence: true
end
