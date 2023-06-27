class RenameEventOutPutInEvent < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :event_output, :description
  end
end
