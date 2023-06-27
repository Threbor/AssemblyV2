class Event < ApplicationRecord
  belongs_to :word
  belongs_to :storyroom
end
