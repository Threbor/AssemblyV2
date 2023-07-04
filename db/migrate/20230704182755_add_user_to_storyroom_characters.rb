class AddUserToStoryroomCharacters < ActiveRecord::Migration[7.0]
  def change
    add_reference :storyroom_characters, :user, foreign_key: true
  end
end
