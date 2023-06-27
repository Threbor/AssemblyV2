class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_output
      t.integer :dice_value
      t.references :word, null: false, foreign_key: true
      t.references :storyroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
