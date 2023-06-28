class AddDescriptionToUniverses < ActiveRecord::Migration[7.0]
  def change
    add_column :universes, :description, :string
  end
end
