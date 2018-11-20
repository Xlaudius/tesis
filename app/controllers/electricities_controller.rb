class ElectricitiesController < ApplicationController
  before_action :set_electricity, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /electricities
  # GET /electricities.json
  def index
    @electricities = Electricity.all
  end

  # GET /electricities/1
  # GET /electricities/1.json
  def show
  end

  # GET /electricities/new
  def new
    @electricity = Electricity.new
  end

  # GET /electricities/1/edit
  def edit
  end

  # POST /electricities
  # POST /electricities.json
  def create
    @electricity = Electricity.new(electricity_params)

    respond_to do |format|
      if @electricity.save
        format.html { redirect_to @electricity, notice: 'Electricity was successfully created.' }
        format.json { render :show, status: :created, location: @electricity }
      else
        format.html { render :new }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electricities/1
  # PATCH/PUT /electricities/1.json
  def update
    respond_to do |format|
      if @electricity.update(electricity_params)
        format.html { redirect_to @electricity, notice: 'Electricity was successfully updated.' }
        format.json { render :show, status: :ok, location: @electricity }
      else
        format.html { render :edit }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electricities/1
  # DELETE /electricities/1.json
  def destroy
    @electricity.destroy
    respond_to do |format|
      format.html { redirect_to electricities_url, notice: 'Electricity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity
      @electricity = Electricity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electricity_params
      params.require(:electricity).permit(:name, :value)
    end
end
