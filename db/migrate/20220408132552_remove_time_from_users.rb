class RemoveTimeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :time, :integer
  end
end
