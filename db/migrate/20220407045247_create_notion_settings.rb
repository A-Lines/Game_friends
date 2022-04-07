class CreateNotionSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :notion_settings do |t|
      t.integer :user_id
      t.boolean :email_notice, default: false
      t.boolean :follow_notice, default: true
      t.boolean :dm_notice, default: true
      t.boolean :room_entry_notice, default: true
      t.boolean :room_result_notice, default: true
      t.boolean :group_talk_notice, default: true
      t.timestamps
    end
  end
end
