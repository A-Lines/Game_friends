class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :play_timing, :integer, null: false
  end
end
