class CreateUniverseWordAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :universe_word_associations do |t|
      t.references :universe, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
