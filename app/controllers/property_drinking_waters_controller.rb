class PropertyDrinkingWatersController < ApplicationController
  before_action :set_property_drinking_water, only: [:show, :edit, :update, :destroy]

  # GET /property_drinking_waters
  # GET /property_drinking_waters.json
  def index
    @property_drinking_waters = PropertyDrinkingWater.all
  end

  # GET /property_drinking_waters/1
  # GET /property_drinking_waters/1.json
  def show
  end

  # GET /property_drinking_waters/new
  def new
    @property_drinking_water = PropertyDrinkingWater.new
  end

  # GET /property_drinking_waters/1/edit
  def edit
  end

  # POST /property_drinking_waters
  # POST /property_drinking_waters.json
  def create
    @property_drinking_water = PropertyDrinkingWater.new(property_drinking_water_params)

    respond_to do |format|
      if @property_drinking_water.save
        format.html { redirect_to @property_drinking_water, notice: 'Property drinking water was successfully created.' }
        format.json { render :show, status: :created, location: @property_drinking_water }
      else
        format.html { render :new }
        format.json { render json: @property_drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_drinking_waters/1
  # PATCH/PUT /property_drinking_waters/1.json
  def update
    respond_to do |format|
      if @property_drinking_water.update(property_drinking_water_params)
        format.html { redirect_to @property_drinking_water, notice: 'Property drinking water was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_drinking_water }
      else
        format.html { render :edit }
        format.json { render json: @property_drinking_water.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_drinking_waters/1
  # DELETE /property_drinking_waters/1.json
  def destroy
    @property_drinking_water.destroy
    respond_to do |format|
      format.html { redirect_to property_drinking_waters_url, notice: 'Property drinking water was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_drinking_water
      @property_drinking_water = PropertyDrinkingWater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_drinking_water_params
      params.require(:property_drinking_water).permit(:drinking_water_id, :property_id, :quality_id)
    end
end
