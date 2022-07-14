class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.integer :wave
      t.boolean :unique
      t.string :name
      t.integer :move
      t.integer :charge
      t.integer :strength
      t.integer :perception
      t.integer :endurance
      t.integer :charisma
      t.integer :intelligence
      t.integer :agility
      t.integer :luck

      t.timestamps
    end
  end
end
