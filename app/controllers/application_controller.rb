class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/static_pages/unauthorized'
  end
  
    def current_fleet_list
      FleetList.find(session[:fleet_list_id])
      rescue ActiveRecord::RecordNotFound
        fleet_list = FleetList.create
        session[:fleet_list_id] = fleet_list.id
        fleet_list
    end
end
