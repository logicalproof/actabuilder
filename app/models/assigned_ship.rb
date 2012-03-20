class AssignedShip < ActiveRecord::Base
  belongs_to :ship
  belongs_to :fleet_list
end
