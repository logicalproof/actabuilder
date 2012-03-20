class StoreController < ApplicationController
  def index
    @ships = Ship.order(:empire_image, :cost, :name)
    @fleet_list = current_fleet_list
  end
end
