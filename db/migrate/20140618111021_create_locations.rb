class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :mod, index: true
      t.string :name
      t.text :title
      t.text :text
      t.text :choices
      t.boolean :choices_expandable
      t.text :code

      t.timestamps
    end
  end
end
