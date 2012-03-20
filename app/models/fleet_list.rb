class FleetList < ActiveRecord::Base
  has_many :assigned_ships, dependent: :destroy
  
  def add_ship(ship_id)
    current_assignment = assigned_ships.find_by_ship_id(ship_id)
    if current_assignment
      current_assignment.quantity +=1
    else
      current_assignment = assigned_ships.build(ship_id: ship_id)
    end
    current_assignment
  end
end
