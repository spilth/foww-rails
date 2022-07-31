class CreateModelsUnitsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :models, :units
  end
end
