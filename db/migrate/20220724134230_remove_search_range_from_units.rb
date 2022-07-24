class RemoveSearchRangeFromUnits < ActiveRecord::Migration[7.0]
  def change
    remove_column :units, :search_range, :integer
  end
end
