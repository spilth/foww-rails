class AddSkillAttributesToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :melee_attribute, :integer
    add_column :units, :pistol_attribute, :integer
    add_column :units, :rifle_attribute, :integer
    add_column :units, :heavy_weapon_attribute, :integer
    add_column :units, :search_attribute, :integer
    add_column :units, :battle_cry_attribute, :integer
    add_column :units, :presence_attribute, :integer
    add_column :units, :lockpick_attribute, :integer
    add_column :units, :computers_attribute, :integer
    add_column :units, :throw_attribute, :integer
    add_column :units, :health_attribute, :integer
  end
end
