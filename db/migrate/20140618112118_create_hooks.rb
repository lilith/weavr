class CreateHooks < ActiveRecord::Migration
  def change
    create_table :hooks do |t|
      t.belongs_to :mod, index: true
      t.references :location, index: true
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
