class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.uuid :pid
      t.belongs_to :parent, index: true
      t.string :name
      t.text :title
      t.text :description
      t.references :creator, index: true

      t.timestamps
    end
  end
end
