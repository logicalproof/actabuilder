class FleetListsController < ApplicationController
  # GET /fleet_lists
  # GET /fleet_lists.json
  def index
    @fleet_lists = FleetList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fleet_lists }
    end
  end

  # GET /fleet_lists/1
  # GET /fleet_lists/1.json
  def show
    @fleet_list = FleetList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fleet_list }
    end
  end

  # GET /fleet_lists/new
  # GET /fleet_lists/new.json
  def new
    @fleet_list = FleetList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fleet_list }
    end
  end

  # GET /fleet_lists/1/edit
  def edit
    @fleet_list = FleetList.find(params[:id])
  end

  # POST /fleet_lists
  # POST /fleet_lists.json
  def create
    @fleet_list = FleetList.new(params[:fleet_list])

    respond_to do |format|
      if @fleet_list.save
        format.html { redirect_to @fleet_list, notice: 'Fleet list was successfully created.' }
        format.json { render json: @fleet_list, status: :created, location: @fleet_list }
      else
        format.html { render action: "new" }
        format.json { render json: @fleet_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fleet_lists/1
  # PUT /fleet_lists/1.json
  def update
    @fleet_list = FleetList.find(params[:id])

    respond_to do |format|
      if @fleet_list.update_attributes(params[:fleet_list])
        format.html { redirect_to @fleet_list, notice: 'Fleet list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fleet_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleet_lists/1
  # DELETE /fleet_lists/1.json
  def destroy
    @fleet_list = FleetList.find(params[:id])
    @fleet_list.destroy

    respond_to do |format|
      format.html { redirect_to fleet_lists_url }
      format.json { head :no_content }
    end
  end
end
