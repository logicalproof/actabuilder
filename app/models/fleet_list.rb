class FleetList < ActiveRecord::Base
  has_many :assigned_ships, dependent: :destroy
end
