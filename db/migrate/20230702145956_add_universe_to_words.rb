class AddUniverseToWords < ActiveRecord::Migration[7.0]
  def change
    add_reference :words, :universe, foreign_key: true
  end
end
