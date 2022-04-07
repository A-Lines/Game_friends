class CreateRoomRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :room_requests do |t|

      t.timestamps
    end
  end
end
