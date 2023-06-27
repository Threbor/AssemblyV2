class Storycard < ApplicationRecord
  belongs_to :storyroom
  validates :title, presence: true
end
