class AddUnimpededToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :unimpeded, :boolean
  end
end
