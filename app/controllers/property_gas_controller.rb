class PropertyGasController < ApplicationController
  before_action :set_property_ga, only: [:show, :edit, :update, :destroy]

  # GET /property_gas
  # GET /property_gas.json
  def index
    @property_gas = PropertyGa.all
  end

  # GET /property_gas/1
  # GET /property_gas/1.json
  def show
  end

  # GET /property_gas/new
  def new
    @property_ga = PropertyGa.new
  end

  # GET /property_gas/1/edit
  def edit
  end

  # POST /property_gas
  # POST /property_gas.json
  def create
    @property_ga = PropertyGa.new(property_ga_params)

    respond_to do |format|
      if @property_ga.save
        format.html { redirect_to @property_ga, notice: 'Property ga was successfully created.' }
        format.json { render :show, status: :created, location: @property_ga }
      else
        format.html { render :new }
        format.json { render json: @property_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_gas/1
  # PATCH/PUT /property_gas/1.json
  def update
    respond_to do |format|
      if @property_ga.update(property_ga_params)
        format.html { redirect_to @property_ga, notice: 'Property ga was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_ga }
      else
        format.html { render :edit }
        format.json { render json: @property_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_gas/1
  # DELETE /property_gas/1.json
  def destroy
    @property_ga.destroy
    respond_to do |format|
      format.html { redirect_to property_gas_url, notice: 'Property ga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_ga
      @property_ga = PropertyGa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_ga_params
      params.require(:property_ga).permit(:property_id, :gas_id)
    end
end
