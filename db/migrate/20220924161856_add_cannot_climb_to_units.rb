class AddCannotClimbToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :cannot_climb, :boolean
  end
end
