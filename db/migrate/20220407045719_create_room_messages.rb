class CreateRoomMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :room_messages do |t|
      t.integer :room_talk_space_id, null: false
      t.integer :room_member_id, null: false
      t.string :message, null: false
      t.timestamps
    end
  end
end
