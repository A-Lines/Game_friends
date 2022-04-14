class CreateRoomForms < ActiveRecord::Migration[5.2]
  def change
    create_table :room_forms do |t|

      t.timestamps
    end
  end
end
