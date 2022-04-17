class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :profile_image_id, :string
    add_column :users, :introduction, :string
    add_column :users, :gender, :integer
    add_column :users, :platform_pc, :boolean, default: false
    add_column :users, :platform_playstation, :boolean, default: false
    add_column :users, :platform_xbox, :boolean, default: false
    add_column :users, :platform_switch, :boolean, default: false
    add_column :users, :platform_smartfone, :boolean, default: false
    add_column :users, :playstyle_enjoy, :boolean, default: false
    add_column :users, :playstyle_serious, :boolean, default: false
    add_column :users, :playstyle_beginner, :boolean, default: false
    add_column :users, :weekday_weekday, :boolean, default: false
    add_column :users, :weekday_holiday, :boolean, default: false
    add_column :users, :weekday_norule, :boolean, default: false
    add_column :users, :timing_morning, :boolean, default: false
    add_column :users, :timing_afternoon, :boolean, default: false
    add_column :users, :timing_midnight, :boolean, default: false
    add_column :users, :timing_norule, :boolean, default: false
  end
end
