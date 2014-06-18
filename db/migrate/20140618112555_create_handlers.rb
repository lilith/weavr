class CreateHandlers < ActiveRecord::Migration
  def change
    create_table :handlers do |t|
      t.belongs_to :mod, index: true
      t.belongs_to :hook, index: true
      t.text :code
      t.float :priority

      t.timestamps
    end
  end
end
