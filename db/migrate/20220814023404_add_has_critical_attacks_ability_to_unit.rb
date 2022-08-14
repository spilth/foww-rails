class AddHasCriticalAttacksAbilityToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :has_critical_attacks_ability, :boolean
  end
end
