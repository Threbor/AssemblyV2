class CreateStoryroomCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :storyroom_characters do |t|
      t.references :storyroom, null: false, foreign_key: true
      t.string :photo
      t.string :name
      t.string :quotation
      t.string :background
      t.integer :age

      t.timestamps
    end
  end
end
