class AddPhotoToUniverse < ActiveRecord::Migration[7.0]
  def change
    add_column :universes, :photo, :string
  end
end
