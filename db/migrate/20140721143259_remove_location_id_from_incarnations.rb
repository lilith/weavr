class RemoveLocationIdFromIncarnations < ActiveRecord::Migration
  def change
    remove_column :incarnations, :location_id, :integer
  end
end
