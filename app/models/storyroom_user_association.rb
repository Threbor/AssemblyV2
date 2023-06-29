class StoryroomUserAssociation < ApplicationRecord
  belongs_to :storyroom
  belongs_to :user
end
