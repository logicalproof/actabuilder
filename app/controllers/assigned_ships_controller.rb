class AssignedShipsController < ApplicationController
  # GET /assigned_ships
  # GET /assigned_ships.json
  def index
    @assigned_ships = AssignedShip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assigned_ships }
    end
  end

  # GET /assigned_ships/1
  # GET /assigned_ships/1.json
  def show
    @assigned_ship = AssignedShip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assigned_ship }
    end
  end

  # GET /assigned_ships/new
  # GET /assigned_ships/new.json
  def new
    @assigned_ship = AssignedShip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assigned_ship }
    end
  end

  # GET /assigned_ships/1/edit
  def edit
    @assigned_ship = AssignedShip.find(params[:id])
  end

  # POST /assigned_ships
  # POST /assigned_ships.json
  def create
    @fleet_list = current_fleet_list
    ship = Ship.find(params[:ship_id])
    @assigned_ship = @fleet_list.assigned_ships.build(ship: ship)

    respond_to do |format|
      if @assigned_ship.save
        format.html { redirect_to @assigned_ship.fleet_list, notice: 'Assigned ship was successfully created.' }
        format.json { render json: @assigned_ship, status: :created, location: @assigned_ship }
      else
        format.html { render action: "new" }
        format.json { render json: @assigned_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assigned_ships/1
  # PUT /assigned_ships/1.json
  def update
    @assigned_ship = AssignedShip.find(params[:id])

    respond_to do |format|
      if @assigned_ship.update_attributes(params[:assigned_ship])
        format.html { redirect_to @assigned_ship, notice: 'Assigned ship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assigned_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_ships/1
  # DELETE /assigned_ships/1.json
  def destroy
    @assigned_ship = AssignedShip.find(params[:id])
    @assigned_ship.destroy

    respond_to do |format|
      format.html { redirect_to assigned_ships_url }
      format.json { head :no_content }
    end
  end
end
