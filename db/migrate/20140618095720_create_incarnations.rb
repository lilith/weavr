class CreateIncarnations < ActiveRecord::Migration
  def change
    create_table :incarnations do |t|
      t.belongs_to :profile, index: true
      t.string :type
      t.string :title
      t.string :name
      t.string :gender
      t.string :other_gender
      t.integer :gold
      t.integer :gems
      t.integer :hitpoints
      t.integer :max_hitpoints
      t.integer :mana
      t.integer :max_mana
      t.integer :experience
      t.integer :level
      t.integer :turns
      t.references :location, index: true
      t.binary :coroutine
      t.text :display

      t.timestamps
    end
  end
end
