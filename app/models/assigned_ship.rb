class AssignedShip < ActiveRecord::Base
  belongs_to :ship
  belongs_to :fleet_list
  
  def total_cost
    ship.cost * quantity
  end
end
# == Schema Information
#
# Table name: assigned_ships
#
#  id            :integer         not null, primary key
#  ship_id       :integer
#  fleet_list_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  quantity      :integer         default(1)
#

