class AddProseAndCodeToMods < ActiveRecord::Migration
  def change
    add_column :mods, :prose, :text
    add_column :mods, :code, :text
  end
end
