class PropertyHousingQualitiesController < ApplicationController
  before_action :set_property_housing_quality, only: [:show, :edit, :update, :destroy]

  # GET /property_housing_qualities
  # GET /property_housing_qualities.json
  def index
    @property_housing_qualities = PropertyHousingQuality.all
  end

  # GET /property_housing_qualities/1
  # GET /property_housing_qualities/1.json
  def show
  end

  # GET /property_housing_qualities/new
  def new
    @property_housing_quality = PropertyHousingQuality.new
  end

  # GET /property_housing_qualities/1/edit
  def edit
  end

  # POST /property_housing_qualities
  # POST /property_housing_qualities.json
  def create
    @property_housing_quality = PropertyHousingQuality.new(property_housing_quality_params)

    respond_to do |format|
      if @property_housing_quality.save
        format.html { redirect_to @property_housing_quality, notice: 'Property housing quality was successfully created.' }
        format.json { render :show, status: :created, location: @property_housing_quality }
      else
        format.html { render :new }
        format.json { render json: @property_housing_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_housing_qualities/1
  # PATCH/PUT /property_housing_qualities/1.json
  def update
    respond_to do |format|
      if @property_housing_quality.update(property_housing_quality_params)
        format.html { redirect_to @property_housing_quality, notice: 'Property housing quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_housing_quality }
      else
        format.html { render :edit }
        format.json { render json: @property_housing_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_housing_qualities/1
  # DELETE /property_housing_qualities/1.json
  def destroy
    @property_housing_quality.destroy
    respond_to do |format|
      format.html { redirect_to property_housing_qualities_url, notice: 'Property housing quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_housing_quality
      @property_housing_quality = PropertyHousingQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_housing_quality_params
      params.require(:property_housing_quality).permit(:housing_quality_id, :property_id)
    end
end
