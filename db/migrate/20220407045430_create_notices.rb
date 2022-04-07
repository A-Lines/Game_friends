class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.integer :user_id
      t.integer :notice_setting_id
      t.integer :dm_space_id
      t.integer :room_talk_space_id
      t.integer :room_request_id
      t.integer :relationship_id
      t.integer :room_member_id
      t.integer :notice_user_id, null: false
      t.integer :noticed_user_id, null: false
      t.integer :action_type, null: false
      t.boolean :confitmation_status, default: false, null: false
      t.timestamps
    end
  end
end
