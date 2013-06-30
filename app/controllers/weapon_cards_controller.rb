class WeaponCardsController < ApplicationController
  load_resource
  authorize_resource
  # GET /weapon_cards
  # GET /weapon_cards.json
  def index
    @weapon_cards = WeaponCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weapon_cards }
    end
  end

  # GET /weapon_cards/1
  # GET /weapon_cards/1.json
  def show
    @weapon_card = WeaponCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weapon_card }
    end
  end

  # GET /weapon_cards/new
  # GET /weapon_cards/new.json
  def new
    weapon_names = Weapon.all
    @weapon_names = {}
    weapon_names.each do |name|
      @weapon_names[name.name] = name.id
    end
    
    ship = Ship.find(params[:ship_id])
    @weapon_card = WeaponCard.new(:ship_id => ship.id)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weapon_card }
    end
  end

  # GET /weapon_cards/1/edit
  def edit
    @weapon_card = WeaponCard.find(params[:id])
  end

  # POST /weapon_cards
  # POST /weapon_cards.json
  def create
    @weapon_names = Weapon.all
   
    @weapon_card = WeaponCard.new(params[:weapon_card])
     @ship = Ship.find(@weapon_card.ship_id)
    respond_to do |format|
      if @weapon_card.save
        format.html { redirect_to @ship, notice: 'Weapon card was successfully created.' }
        format.json { render json: @weapon_card, status: :created, location: @weapon_card }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @weapon_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weapon_cards/1
  # PUT /weapon_cards/1.json
  def update
    @weapon_card = WeaponCard.find(params[:id])

    respond_to do |format|
      if @weapon_card.update_attributes(params[:weapon_card])
        format.html { redirect_to @weapon_card, notice: 'Weapon card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weapon_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_cards/1
  # DELETE /weapon_cards/1.json
  def destroy
    @weapon_card = WeaponCard.find(params[:id])
    @weapon_card.destroy

    respond_to do |format|
      format.html { redirect_to weapon_cards_url }
      format.json { head :no_content }
    end
  end
end
