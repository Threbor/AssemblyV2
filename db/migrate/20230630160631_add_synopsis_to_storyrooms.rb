class AddSynopsisToStoryrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :storyrooms, :storyroom_synopsis, :string
    add_column :storyrooms, :storyroom_character, :string
  end
end
