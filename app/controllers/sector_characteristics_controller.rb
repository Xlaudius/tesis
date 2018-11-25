class SectorCharacteristicsController < ApplicationController
  before_action :set_sector_characteristic, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /sector_characteristics
  # GET /sector_characteristics.json
  def index
    @sector_characteristics = SectorCharacteristic.all
  end

  # GET /sector_characteristics/1
  # GET /sector_characteristics/1.json
  def show
  end

  # GET /sector_characteristics/new
  def new
    @sector_characteristic = SectorCharacteristic.new
  end

  # GET /sector_characteristics/1/edit
  def edit
  end

  # POST /sector_characteristics
  # POST /sector_characteristics.json
  def create
    @sector_characteristic = SectorCharacteristic.new(sector_characteristic_params)

    respond_to do |format|
      if @sector_characteristic.save
        format.html { redirect_to @sector_characteristic, notice: 'Sector characteristic was successfully created.' }
        format.json { render :show, status: :created, location: @sector_characteristic }
      else
        format.html { render :new }
        format.json { render json: @sector_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sector_characteristics/1
  # PATCH/PUT /sector_characteristics/1.json
  def update
    respond_to do |format|
      if @sector_characteristic.update(sector_characteristic_params)
        format.html { redirect_to @sector_characteristic, notice: 'Sector characteristic was successfully updated.' }
        format.json { render :show, status: :ok, location: @sector_characteristic }
      else
        format.html { render :edit }
        format.json { render json: @sector_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sector_characteristics/1
  # DELETE /sector_characteristics/1.json
  def destroy
    @sector_characteristic.destroy
    respond_to do |format|
      format.html { redirect_to sector_characteristics_url, notice: 'Sector characteristic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector_characteristic
      @sector_characteristic = SectorCharacteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_characteristic_params
      params.require(:sector_characteristic).permit(:name, :value)
    end
end
