class AddWaveToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :wave, :integer
  end
end
