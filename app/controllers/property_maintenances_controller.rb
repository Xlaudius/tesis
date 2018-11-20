class PropertyMaintenancesController < ApplicationController
  before_action :set_property_maintenance, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_maintenances
  # GET /property_maintenances.json
  def index
    @property_maintenances = PropertyMaintenance.all
  end

  # GET /property_maintenances/1
  # GET /property_maintenances/1.json
  def show
  end

  # GET /property_maintenances/new
  def new
    @property_maintenance = PropertyMaintenance.new
  end

  # GET /property_maintenances/1/edit
  def edit
  end

  # POST /property_maintenances
  # POST /property_maintenances.json
  def create
    @property_maintenance = PropertyMaintenance.new(property_maintenance_params)

    respond_to do |format|
      if @property_maintenance.save
        format.html { redirect_to @property_maintenance, notice: 'Property maintenance was successfully created.' }
        format.json { render :show, status: :created, location: @property_maintenance }
      else
        format.html { render :new }
        format.json { render json: @property_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_maintenances/1
  # PATCH/PUT /property_maintenances/1.json
  def update
    respond_to do |format|
      if @property_maintenance.update(property_maintenance_params)
        format.html { redirect_to @property_maintenance, notice: 'Property maintenance was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_maintenance }
      else
        format.html { render :edit }
        format.json { render json: @property_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_maintenances/1
  # DELETE /property_maintenances/1.json
  def destroy
    @property_maintenance.destroy
    respond_to do |format|
      format.html { redirect_to property_maintenances_url, notice: 'Property maintenance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_maintenance
      @property_maintenance = PropertyMaintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_maintenance_params
      params.require(:property_maintenance).permit(:maintenance_id, :property_id, :quality_id)
    end
end
