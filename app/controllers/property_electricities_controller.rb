class PropertyElectricitiesController < ApplicationController
  before_action :set_property_electricity, only: [:show, :edit, :update, :destroy]

  # GET /property_electricities
  # GET /property_electricities.json
  def index
    @property_electricities = PropertyElectricity.all
  end

  # GET /property_electricities/1
  # GET /property_electricities/1.json
  def show
  end

  # GET /property_electricities/new
  def new
    @property_electricity = PropertyElectricity.new
  end

  # GET /property_electricities/1/edit
  def edit
  end

  # POST /property_electricities
  # POST /property_electricities.json
  def create
    @property_electricity = PropertyElectricity.new(property_electricity_params)

    respond_to do |format|
      if @property_electricity.save
        format.html { redirect_to @property_electricity, notice: 'Property electricity was successfully created.' }
        format.json { render :show, status: :created, location: @property_electricity }
      else
        format.html { render :new }
        format.json { render json: @property_electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_electricities/1
  # PATCH/PUT /property_electricities/1.json
  def update
    respond_to do |format|
      if @property_electricity.update(property_electricity_params)
        format.html { redirect_to @property_electricity, notice: 'Property electricity was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_electricity }
      else
        format.html { render :edit }
        format.json { render json: @property_electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_electricities/1
  # DELETE /property_electricities/1.json
  def destroy
    @property_electricity.destroy
    respond_to do |format|
      format.html { redirect_to property_electricities_url, notice: 'Property electricity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_electricity
      @property_electricity = PropertyElectricity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_electricity_params
      params.require(:property_electricity).permit(:electricity_id, :property_id)
    end
end
