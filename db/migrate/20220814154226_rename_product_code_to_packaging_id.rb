class RenameProductCodeToPackagingId < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :code, :packaging_id
  end
end
