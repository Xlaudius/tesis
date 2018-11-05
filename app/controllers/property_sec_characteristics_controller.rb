class PropertySecCharacteristicsController < ApplicationController
  before_action :set_property_sec_characteristic, only: [:show, :edit, :update, :destroy]

  # GET /property_sec_characteristics
  # GET /property_sec_characteristics.json
  def index
    @property_sec_characteristics = PropertySecCharacteristic.all
  end

  # GET /property_sec_characteristics/1
  # GET /property_sec_characteristics/1.json
  def show
  end

  # GET /property_sec_characteristics/new
  def new
    @property_sec_characteristic = PropertySecCharacteristic.new
  end

  # GET /property_sec_characteristics/1/edit
  def edit
  end

  # POST /property_sec_characteristics
  # POST /property_sec_characteristics.json
  def create
    @property_sec_characteristic = PropertySecCharacteristic.new(property_sec_characteristic_params)

    respond_to do |format|
      if @property_sec_characteristic.save
        format.html { redirect_to @property_sec_characteristic, notice: 'Property sec characteristic was successfully created.' }
        format.json { render :show, status: :created, location: @property_sec_characteristic }
      else
        format.html { render :new }
        format.json { render json: @property_sec_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_sec_characteristics/1
  # PATCH/PUT /property_sec_characteristics/1.json
  def update
    respond_to do |format|
      if @property_sec_characteristic.update(property_sec_characteristic_params)
        format.html { redirect_to @property_sec_characteristic, notice: 'Property sec characteristic was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_sec_characteristic }
      else
        format.html { render :edit }
        format.json { render json: @property_sec_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_sec_characteristics/1
  # DELETE /property_sec_characteristics/1.json
  def destroy
    @property_sec_characteristic.destroy
    respond_to do |format|
      format.html { redirect_to property_sec_characteristics_url, notice: 'Property sec characteristic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sec_characteristic
      @property_sec_characteristic = PropertySecCharacteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sec_characteristic_params
      params.require(:property_sec_characteristic).permit(:property_id, :sector_characteristic_id)
    end
end
