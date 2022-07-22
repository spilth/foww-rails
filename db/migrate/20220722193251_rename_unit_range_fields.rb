class RenameUnitRangeFields < ActiveRecord::Migration[7.0]
  def change
    rename_column :units, :move, :move_range
    rename_column :units, :charge, :charge_range
  end
end
