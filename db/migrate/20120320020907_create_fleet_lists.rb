class CreateFleetLists < ActiveRecord::Migration
  def change
    create_table :fleet_lists do |t|

      t.timestamps
    end
  end
end
