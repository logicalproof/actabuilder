class StoreController < ApplicationController
  load_and_authorize_resource :ship, :parent => false
  def index
    #@ships = Ship.order(:empire_image, :cost, :name)
    @ships = Ship.paginate(:page => params[:page], :per_page => 5)
    @fleet_list = current_fleet_list
  end
end
