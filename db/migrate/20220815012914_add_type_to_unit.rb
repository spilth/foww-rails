class AddTypeToUnit < ActiveRecord::Migration[7.0]
  def change
    add_reference :units, :type, null: true, foreign_key: true
  end
end
