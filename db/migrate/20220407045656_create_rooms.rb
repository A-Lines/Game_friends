class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :game_id, null: false
      t.integer :member_max, null: false
      t.integer :member_count
      t.integer :owner_id, null: false
      t.string  :image_id
      t.string :introduction
      t.integer :approval, null: false
      t.boolean :platform_pc, null: false, default: false
      t.boolean :platform_playstation, null: false, default: false
      t.boolean :platform_xbox, null: false, default: false
      t.boolean :platform_switch, null: false, default: false  
      t.boolean :platform_smartfone, null: false, default: false
      t.boolean :playstyle_enjoy, null: false, default: false
      t.boolean :playstyle_serious, null: false, default: false
      t.boolean :playstyle_beginner, null: false, default: false
      t.boolean :weekday_weekday, null: false, default: false
      t.boolean :weekday_holiday, null: false, default: false
      t.boolean :weekday_norule, null: false, default: false
      t.boolean :timing_morning, null: false, default: false
      t.boolean :timing_afternoon, null: false, default: false
      t.boolean :timing_midnight, null: false, default: false
      t.boolean :timing_norule, null: false, default: false
      t.timestamps
    end
  end
end
