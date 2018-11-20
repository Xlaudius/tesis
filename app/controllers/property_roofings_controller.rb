class PropertyRoofingsController < ApplicationController
  before_action :set_property_roofing, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_roofings
  # GET /property_roofings.json
  def index
    @property_roofings = PropertyRoofing.all
  end

  # GET /property_roofings/1
  # GET /property_roofings/1.json
  def show
  end

  # GET /property_roofings/new
  def new
    @property_roofing = PropertyRoofing.new
  end

  # GET /property_roofings/1/edit
  def edit
  end

  # POST /property_roofings
  # POST /property_roofings.json
  def create
    @property_roofing = PropertyRoofing.new(property_roofing_params)

    respond_to do |format|
      if @property_roofing.save
        format.html { redirect_to @property_roofing, notice: 'Property roofing was successfully created.' }
        format.json { render :show, status: :created, location: @property_roofing }
      else
        format.html { render :new }
        format.json { render json: @property_roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_roofings/1
  # PATCH/PUT /property_roofings/1.json
  def update
    respond_to do |format|
      if @property_roofing.update(property_roofing_params)
        format.html { redirect_to @property_roofing, notice: 'Property roofing was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_roofing }
      else
        format.html { render :edit }
        format.json { render json: @property_roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_roofings/1
  # DELETE /property_roofings/1.json
  def destroy
    @property_roofing.destroy
    respond_to do |format|
      format.html { redirect_to property_roofings_url, notice: 'Property roofing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_roofing
      @property_roofing = PropertyRoofing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_roofing_params
      params.require(:property_roofing).permit(:property_id, :roofing_id, :quality_id)
    end
end
