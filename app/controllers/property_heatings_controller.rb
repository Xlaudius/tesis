class PropertyHeatingsController < ApplicationController
  before_action :set_property_heating, only: [:show, :edit, :update, :destroy]

  # GET /property_heatings
  # GET /property_heatings.json
  def index
    @property_heatings = PropertyHeating.all
  end

  # GET /property_heatings/1
  # GET /property_heatings/1.json
  def show
  end

  # GET /property_heatings/new
  def new
    @property_heating = PropertyHeating.new
  end

  # GET /property_heatings/1/edit
  def edit
  end

  # POST /property_heatings
  # POST /property_heatings.json
  def create
    @property_heating = PropertyHeating.new(property_heating_params)

    respond_to do |format|
      if @property_heating.save
        format.html { redirect_to @property_heating, notice: 'Property heating was successfully created.' }
        format.json { render :show, status: :created, location: @property_heating }
      else
        format.html { render :new }
        format.json { render json: @property_heating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_heatings/1
  # PATCH/PUT /property_heatings/1.json
  def update
    respond_to do |format|
      if @property_heating.update(property_heating_params)
        format.html { redirect_to @property_heating, notice: 'Property heating was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_heating }
      else
        format.html { render :edit }
        format.json { render json: @property_heating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_heatings/1
  # DELETE /property_heatings/1.json
  def destroy
    @property_heating.destroy
    respond_to do |format|
      format.html { redirect_to property_heatings_url, notice: 'Property heating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_heating
      @property_heating = PropertyHeating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_heating_params
      params.require(:property_heating).permit(:heating_id, :property_id, :quality_id)
    end
end
