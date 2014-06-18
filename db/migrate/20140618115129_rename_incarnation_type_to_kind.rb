class RenameIncarnationTypeToKind < ActiveRecord::Migration
  def change
    rename_column :incarnations, :type, :kind
  end
end
