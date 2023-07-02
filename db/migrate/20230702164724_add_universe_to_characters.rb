class AddUniverseToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :universe, foreign_key: true
  end
end
