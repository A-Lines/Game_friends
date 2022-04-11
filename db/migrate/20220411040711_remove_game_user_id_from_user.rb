class RemoveGameUserIdFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :game_user_id, :integer
  end
end
