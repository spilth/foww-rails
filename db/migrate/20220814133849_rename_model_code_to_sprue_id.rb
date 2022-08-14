class RenameModelCodeToSprueId < ActiveRecord::Migration[7.0]
  def change
    rename_column :models, :code, :sprue_id
  end
end
