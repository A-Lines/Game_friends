class CreateNotionSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :notion_settings do |t|
      t.integer :user_id, null: false
      t.boolean :email_notice, default: false, null: false
      t.boolean :follow_notice, default: true, null: false
      t.boolean :dm_notice, default: true, null: false
      t.boolean :room_entry_notice, default: true, null: false
      t.boolean :room_result_notice, default: true, null: false
      t.boolean :group_talk_notice, default: true, null: false
      t.timestamps
    end
  end
end
