class CreateForceUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :force_units do |t|
      t.references :force, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.integer :cost

      t.timestamps
    end
  end
end
