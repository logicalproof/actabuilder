class AssignedShip < ActiveRecord::Base
  belongs_to :ship
  belongs_to :fleet_list
  
  def total_cost
    ship.cost * quantity
  end
end
