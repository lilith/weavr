class AddActiveIncarnationToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :active_incarnaton_id, :integer
  end
end
