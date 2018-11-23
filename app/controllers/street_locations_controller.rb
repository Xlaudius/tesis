class StreetLocationsController < ApplicationController
  before_action :set_street_location, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /street_locations
  # GET /street_locations.json
  def index
    @street_locations = StreetLocation.all
  end

  # GET /street_locations/1
  # GET /street_locations/1.json
  def show
  end

  # GET /street_locations/new
  def new
    @street_location = StreetLocation.new
  end

  # GET /street_locations/1/edit
  def edit
  end

  # POST /street_locations
  # POST /street_locations.json
  def create
    @street_location = StreetLocation.new(street_location_params)

    respond_to do |format|
      if @street_location.save
        format.html { redirect_to @street_location, notice: 'Street location was successfully created.' }
        format.json { render :show, status: :created, location: @street_location }
      else
        format.html { render :new }
        format.json { render json: @street_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /street_locations/1
  # PATCH/PUT /street_locations/1.json
  def update
    respond_to do |format|
      if @street_location.update(street_location_params)
        format.html { redirect_to @street_location, notice: 'Street location was successfully updated.' }
        format.json { render :show, status: :ok, location: @street_location }
      else
        format.html { render :edit }
        format.json { render json: @street_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /street_locations/1
  # DELETE /street_locations/1.json
  def destroy
    @street_location.destroy
    respond_to do |format|
      format.html { redirect_to street_locations_url, notice: 'Street location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_street_location
      @street_location = StreetLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def street_location_params
      params.require(:street_location).permit(:name, :value)
    end
end
