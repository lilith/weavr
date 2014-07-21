class RemoveLocationIdFromHooks < ActiveRecord::Migration
  def change
    remove_column :hooks, :location_id, :integer
  end
end
