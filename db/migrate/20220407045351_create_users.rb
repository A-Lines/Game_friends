class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :game_user_id
      t.string :nickname
      t.string :email
      t.string :profile_image_id
      t.string :introduction
      t.integer :gender
      t.integer :platform
      t.integer :playstyle
      t.integer :weekday
      t.integer :time
      t.timestamps
    end
  end
end
