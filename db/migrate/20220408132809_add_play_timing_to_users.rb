class AddPlayTimingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :play_timing, :integer
  end
end
