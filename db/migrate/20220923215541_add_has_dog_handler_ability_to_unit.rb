class AddHasDogHandlerAbilityToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :has_dog_handler_ability, :boolean
  end
end
