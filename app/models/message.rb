class Message < ApplicationRecord
  belongs_to :storyroom
  belongs_to :user
  validates :content, presence: true
end
