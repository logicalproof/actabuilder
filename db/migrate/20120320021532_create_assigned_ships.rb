class CreateAssignedShips < ActiveRecord::Migration
  def change
    create_table :assigned_ships do |t|
      t.integer :ship_id
      t.integer :fleet_list_id

      t.timestamps
    end
  end
end
