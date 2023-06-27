class Event < ApplicationRecord
  belongs_to :word
  belongs_to :storyroom
  validates :dice_value, presence: true
end
