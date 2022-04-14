class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :game_id, null: false
      t.integer :member_max, null: false
      t.integer :member_count
      t.integer :owner_id, null: false
      t.string  :image_id
      t.string :introduction
      t.integer :approval, null: false
      t.timestamps
    end
  end
end
