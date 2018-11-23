class PropertySectorsController < ApplicationController
  before_action :set_property_sector, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_sectors
  # GET /property_sectors.json
  def index
    @property_sectors = PropertySector.all
  end

  # GET /property_sectors/1
  # GET /property_sectors/1.json
  def show
  end

  # GET /property_sectors/new
  def new
    @property_sector = PropertySector.new
  end

  # GET /property_sectors/1/edit
  def edit
  end

  # POST /property_sectors
  # POST /property_sectors.json
  def create
    @property_sector = PropertySector.new(property_sector_params)

    respond_to do |format|
      if @property_sector.save
        format.html { redirect_to @property_sector, notice: 'Property sector was successfully created.' }
        format.json { render :show, status: :created, location: @property_sector }
      else
        format.html { render :new }
        format.json { render json: @property_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_sectors/1
  # PATCH/PUT /property_sectors/1.json
  def update
    respond_to do |format|
      if @property_sector.update(property_sector_params)
        format.html { redirect_to @property_sector, notice: 'Property sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_sector }
      else
        format.html { render :edit }
        format.json { render json: @property_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_sectors/1
  # DELETE /property_sectors/1.json
  def destroy
    @property_sector.destroy
    respond_to do |format|
      format.html { redirect_to property_sectors_url, notice: 'Property sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sector
      @property_sector = PropertySector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sector_params
      params.require(:property_sector).permit(:distance, :property_id, :sector_id)
    end
end
