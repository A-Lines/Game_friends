class ChangeNotionSettingsToNoticeSettings < ActiveRecord::Migration[5.2]
  def change
    rename_table :notion_settings, :notice_settings
  end
end
