class CombineAssignmentsIn < ActiveRecord::Migration
  def up
    # replace multiple assigned ships for a single ship in a fleet list with a single assignment
    FleetList.all.each do |fleet_list|
      #count the number of each ship in the fleet list
      sums = fleet_list.assigned_ships.group(:ship_id).sum(:quantity)
      
      sums.each do |ship_id, quantity|
        if quantity > 1
          #remove individual ships
          fleet_list.assigned_ships.where(ship_id: ship_id).delete_all
          
          #replace with a single assignment
          fleet_list.assigned_ships.create(ship_id: ship_id, quantity: quantity)
        end
      end
    end
  end

  def down
    #split assignments with a quantity greater than one into multiple assignments
    AssignedShip.where("quantity>1").each do |assigned_ship|
      #add individual assignments
      assigned_ship.quantity.times do
        AssignedShip.create fleet_list_id: assigned_ship.fleet_list_id, ship_id: assigned_ship.ship_id, quantity: 1
      end
      assigned_ship.destroy
    end
  end
end
