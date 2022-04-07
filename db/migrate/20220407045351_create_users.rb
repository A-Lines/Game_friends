class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :game_user_id, null: false
      t.string :nickname, null: false
      t.string :profile_image_id
      t.string :introduction
      t.integer :gender,null: false
      t.integer :playstyle,null: false
      t.integer :platform,null: false
      t.integer :weekday,null: false
      t.integer :play_timing,null: false
      t.timestamps
    end
  end
end
