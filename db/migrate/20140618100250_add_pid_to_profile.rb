class AddPidToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :pid, :uuid
  end
end
