class CreateNotionSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :notion_settings do |t|

      t.timestamps
    end
  end
end
