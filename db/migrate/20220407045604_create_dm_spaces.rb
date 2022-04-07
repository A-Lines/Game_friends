class CreateDmSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_spaces do |t|
      t.integer :dm_entry, null: false
      t.timestamps
    end
  end
end
