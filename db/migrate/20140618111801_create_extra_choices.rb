class CreateExtraChoices < ActiveRecord::Migration
  def change
    create_table :extra_choices do |t|
      t.belongs_to :mod, index: true
      t.string :title
      t.belongs_to :choice_location, index: true
      t.belongs_to :destination, index: true
      t.float :priority

      t.timestamps
    end
  end
end
