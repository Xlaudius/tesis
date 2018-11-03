class PropertyStreetLocationsController < ApplicationController
  before_action :set_property_street_location, only: [:show, :edit, :update, :destroy]

  # GET /property_street_locations
  # GET /property_street_locations.json
  def index
    @property_street_locations = PropertyStreetLocation.all
  end

  # GET /property_street_locations/1
  # GET /property_street_locations/1.json
  def show
  end

  # GET /property_street_locations/new
  def new
    @property_street_location = PropertyStreetLocation.new
  end

  # GET /property_street_locations/1/edit
  def edit
  end

  # POST /property_street_locations
  # POST /property_street_locations.json
  def create
    @property_street_location = PropertyStreetLocation.new(property_street_location_params)

    respond_to do |format|
      if @property_street_location.save
        format.html { redirect_to @property_street_location, notice: 'Property street location was successfully created.' }
        format.json { render :show, status: :created, location: @property_street_location }
      else
        format.html { render :new }
        format.json { render json: @property_street_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_street_locations/1
  # PATCH/PUT /property_street_locations/1.json
  def update
    respond_to do |format|
      if @property_street_location.update(property_street_location_params)
        format.html { redirect_to @property_street_location, notice: 'Property street location was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_street_location }
      else
        format.html { render :edit }
        format.json { render json: @property_street_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_street_locations/1
  # DELETE /property_street_locations/1.json
  def destroy
    @property_street_location.destroy
    respond_to do |format|
      format.html { redirect_to property_street_locations_url, notice: 'Property street location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_street_location
      @property_street_location = PropertyStreetLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_street_location_params
      params.require(:property_street_location).permit(:property_id, :street_location_id)
    end
end
