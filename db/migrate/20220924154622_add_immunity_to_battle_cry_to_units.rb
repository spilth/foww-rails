class AddImmunityToBattleCryToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :immunity_to_battle_cry, :boolean
  end
end
