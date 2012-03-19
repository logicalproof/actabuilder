class StoreController < ApplicationController
  def index
    @ships = Ship.order(:empire, :cost, :name)
  end
end
