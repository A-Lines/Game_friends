class CreateDmMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_messages do |t|
      t.integer :dm_space_id, null: false
      t.integer :user_id, null: false
      t.string :message, null: false
      t.timestamps
    end
  end
end
