class StoryroomCharacter < ApplicationRecord
  belongs_to :storyroom
  belongs_to :user
  validates :storyroom, presence: true
  validates :user, presence: true

  validates :user_id, uniqueness: { scope: :storyroom_id, message: "ne peut avoir qu'un seul personnage par storyroom" }
end
