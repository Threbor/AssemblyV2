class StoryroomCharacter < ApplicationRecord
  belongs_to :storyroom
  validates :storyroom, presence: true
end
