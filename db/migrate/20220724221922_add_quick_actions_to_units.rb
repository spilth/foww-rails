class AddQuickActionsToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :movement_quick_actions, :integer
    add_column :units, :attack_quick_actions, :integer
    add_column :units, :melee_quick_actions, :integer
    add_column :units, :pistol_quick_actions, :integer
    add_column :units, :rifle_quick_actions, :integer
    add_column :units, :heavy_weapon_quick_actions, :integer
    add_column :units, :target_quick_actions, :integer
    add_column :units, :use_expertise_quick_actions, :integer
    add_column :units, :prepare_quick_actions, :integer
  end
end
