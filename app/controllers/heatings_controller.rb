class HeatingsController < ApplicationController
  before_action :set_heating, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /heatings
  # GET /heatings.json
  def index
    @heatings = Heating.all
  end

  # GET /heatings/1
  # GET /heatings/1.json
  def show
  end

  # GET /heatings/new
  def new
    @heating = Heating.new
  end

  # GET /heatings/1/edit
  def edit
  end

  # POST /heatings
  # POST /heatings.json
  def create
    @heating = Heating.new(heating_params)

    respond_to do |format|
      if @heating.save
        format.html { redirect_to @heating, notice: 'Heating was successfully created.' }
        format.json { render :show, status: :created, location: @heating }
      else
        format.html { render :new }
        format.json { render json: @heating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heatings/1
  # PATCH/PUT /heatings/1.json
  def update
    respond_to do |format|
      if @heating.update(heating_params)
        format.html { redirect_to @heating, notice: 'Heating was successfully updated.' }
        format.json { render :show, status: :ok, location: @heating }
      else
        format.html { render :edit }
        format.json { render json: @heating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heatings/1
  # DELETE /heatings/1.json
  def destroy
    @heating.destroy
    respond_to do |format|
      format.html { redirect_to heatings_url, notice: 'Heating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heating
      @heating = Heating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heating_params
      params.require(:heating).permit(:name, :value)
    end
end
