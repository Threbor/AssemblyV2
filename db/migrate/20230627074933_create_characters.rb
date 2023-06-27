class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :photo
      t.string :name
      t.string :quotation
      t.string :background

      t.timestamps
    end
  end
end
