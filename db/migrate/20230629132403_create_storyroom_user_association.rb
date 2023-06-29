class CreateStoryroomUserAssociation < ActiveRecord::Migration[7.0]
  def change
    create_table :storyroom_user_associations do |t|
      t.references :storyroom, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
