class AddQuantityToAssignedShips < ActiveRecord::Migration
  def change
    add_column :assigned_ships, :quantity, :integer, default: 1

  end
end
