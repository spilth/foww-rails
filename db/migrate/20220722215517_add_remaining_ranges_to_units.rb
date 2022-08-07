class AddRemainingRangesToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :throw_range, :integer
    add_column :units, :presence_range, :integer
    add_column :units, :awareness_range, :integer
    add_column :units, :battle_cry_range, :integer
    add_column :units, :search_range, :integer
  end
end
