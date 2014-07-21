class DropLocationsTable < ActiveRecord::Migration
  def up
    drop_table :locations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
