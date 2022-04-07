class CreateRoomTalkSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :room_talk_spaces do |t|

      t.timestamps
    end
  end
end
