class AddCodeToModel < ActiveRecord::Migration[7.0]
  def change
    add_column :models, :code, :string
  end
end
