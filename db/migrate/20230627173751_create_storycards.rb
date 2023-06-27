class CreateStorycards < ActiveRecord::Migration[7.0]
  def change
    create_table :storycards do |t|
      t.string :title
      t.references :storyroom, null: false, foreign_key: true
      t.timestamps
    end
  end
end
