class AddArmorFieldsToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :physical_armor, :integer
    add_column :units, :physical_strong_armor_bonus, :integer
    add_column :units, :energy_armor, :integer
    add_column :units, :energy_strong_armor_bonus, :integer
    add_column :units, :radiation_immunity, :boolean
    add_column :units, :radiation_armor, :integer
  end
end
