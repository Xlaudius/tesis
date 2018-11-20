class WaterRainDuctsController < ApplicationController
  before_action :set_water_rain_duct, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /water_rain_ducts
  # GET /water_rain_ducts.json
  def index
    @water_rain_ducts = WaterRainDuct.all
  end

  # GET /water_rain_ducts/1
  # GET /water_rain_ducts/1.json
  def show
  end

  # GET /water_rain_ducts/new
  def new
    @water_rain_duct = WaterRainDuct.new
  end

  # GET /water_rain_ducts/1/edit
  def edit
  end

  # POST /water_rain_ducts
  # POST /water_rain_ducts.json
  def create
    @water_rain_duct = WaterRainDuct.new(water_rain_duct_params)

    respond_to do |format|
      if @water_rain_duct.save
        format.html { redirect_to @water_rain_duct, notice: 'Water rain duct was successfully created.' }
        format.json { render :show, status: :created, location: @water_rain_duct }
      else
        format.html { render :new }
        format.json { render json: @water_rain_duct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_rain_ducts/1
  # PATCH/PUT /water_rain_ducts/1.json
  def update
    respond_to do |format|
      if @water_rain_duct.update(water_rain_duct_params)
        format.html { redirect_to @water_rain_duct, notice: 'Water rain duct was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_rain_duct }
      else
        format.html { render :edit }
        format.json { render json: @water_rain_duct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_rain_ducts/1
  # DELETE /water_rain_ducts/1.json
  def destroy
    @water_rain_duct.destroy
    respond_to do |format|
      format.html { redirect_to water_rain_ducts_url, notice: 'Water rain duct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_rain_duct
      @water_rain_duct = WaterRainDuct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_rain_duct_params
      params.require(:water_rain_duct).permit(:name, :value)
    end
end
