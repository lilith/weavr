class RenameHookTypeToKind < ActiveRecord::Migration
  def change
    rename_column :hooks, :type, :kind
  end
end
