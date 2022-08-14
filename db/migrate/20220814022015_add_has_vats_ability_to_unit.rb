class AddHasVatsAbilityToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :has_vats_ability, :boolean
  end
end
