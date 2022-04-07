class CreateRoomMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :room_members do |t|

      t.timestamps
    end
  end
end
