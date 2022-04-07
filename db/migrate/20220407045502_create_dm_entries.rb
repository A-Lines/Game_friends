class CreateDmEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_entries do |t|
      t.integer :user_id, null: false
      t.integer :dm_space_id, null: false
      t.timestamps
    end
  end
end
