class CreateRoomRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :room_requests do |t|
      t.integer :user_id, null: false
      t.integer :room_id, null: false
      t.integer :status, null: false, default: 1
      t.timestamps
    end
  end
end
