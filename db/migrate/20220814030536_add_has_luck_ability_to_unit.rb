class AddHasLuckAbilityToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :has_luck_ability, :boolean
  end
end
