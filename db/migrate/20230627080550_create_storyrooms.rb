class CreateStoryrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :storyrooms do |t|
      t.string :title
      t.references :universe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
