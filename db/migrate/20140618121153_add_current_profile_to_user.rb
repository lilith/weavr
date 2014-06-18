class AddCurrentProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :current_profile, :relations
  end
end
