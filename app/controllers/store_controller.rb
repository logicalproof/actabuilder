class StoreController < ApplicationController
  def index
    @ships = Ship.order(:empire_image, :cost, :name)
  end
end
