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
  
  def decrement_assigned_ship_quantity(assigned_ship_id)
    current_assignment = assigned_ships.find(assigned_ship_id)
    if current_assignment.quantity > 1
      current_assignment.quantity -=1
    else
      current_assignment.destroy
    end
    
    current_assignment
  end
  
  def total_cost
    assigned_ships.to_a.sum { |item| item.total_cost }
  end
end
# == Schema Information
#
# Table name: fleet_lists
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

