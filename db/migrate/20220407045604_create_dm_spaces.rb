class CreateDmSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_spaces do |t|

      t.timestamps
    end
  end
end
