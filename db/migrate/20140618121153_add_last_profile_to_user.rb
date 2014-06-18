class AddLastProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_profile_id, :integer
  end
end
