class CreateGameStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :game_styles do |t|
       t.string  :table_type, null: false
       t.integer :table_id, null: false
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
