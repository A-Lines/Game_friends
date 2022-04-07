class CreateRoomMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :room_members do |t|
      t.integer :user_id, null: false
      t.integer :room_id, null: false
      t.timestamps
    end
  end
end
