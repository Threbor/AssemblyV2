class CreateUniverseCharacterAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :universe_character_associations do |t|
      t.references :universe, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
