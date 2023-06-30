class RemoveStoryroomCharacterToStoryrooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :storyrooms, :storyroom_character, :string
  end
end
