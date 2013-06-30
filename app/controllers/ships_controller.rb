class ShipsController < ApplicationController
  load_resource
  authorize_resource
  # GET /ships
  # GET /ships.json
  def index
    # @ships = Ship.paginate(:page => params[:page], :per_page => 5)
    #sorts the ship list by empire and name (remember #sort_by sorts 
    #from left to right so you can have multiple criteria)
    @ships = ships.sort_by { |v| [v[:empire_image], v[:cost]] }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ships }
    end
  end

  # GET /ships/1
  # GET /ships/1.json
  def show
    @ship = Ship.find(params[:id])
    @weapon = WeaponCard.find_by_ship_id(params[:id])
    @weapon_card = WeaponCard.new
    weapon_names = Weapon.all
    @weapon_names = {}
    weapon_names.each do |name|
      @weapon_names[name.name] = name.id
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ship }
    end
  end

  # GET /ships/new
  # GET /ships/new.json
  def new
    @ship = Ship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ship }
    end
  end

  # GET /ships/1/edit
  def edit
    @ship = Ship.find(params[:id])
  end

  # POST /ships
  # POST /ships.json
  def create
    @ship = Ship.new(params[:ship])
    respond_to do |format|
      if @ship.save
        format.html { redirect_to @ship, notice: 'Ship was successfully created.' }
        format.json { render json: @ship, status: :created, location: @ship }
      else
        format.html { render action: "new" }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ships/1
  # PUT /ships/1.json
  def update
    @ship = Ship.find(params[:id])

    respond_to do |format|
      if @ship.update_attributes(params[:ship])
        format.html { redirect_to @ship, notice: 'Ship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ships/1
  # DELETE /ships/1.json
  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy

    respond_to do |format|
      format.html { redirect_to ships_url }
      format.json { head :no_content }
    end
  end
end
