class PropertyFurnituresController < ApplicationController
  before_action :set_property_furniture, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_furnitures
  # GET /property_furnitures.json
  def index
    @property_furnitures = PropertyFurniture.all
  end

  # GET /property_furnitures/1
  # GET /property_furnitures/1.json
  def show
  end

  # GET /property_furnitures/new
  def new
    @property_furniture = PropertyFurniture.new
  end

  # GET /property_furnitures/1/edit
  def edit
  end

  # POST /property_furnitures
  # POST /property_furnitures.json
  def create
    @property_furniture = PropertyFurniture.new(property_furniture_params)

    respond_to do |format|
      if @property_furniture.save
        format.html { redirect_to @property_furniture, notice: 'Property furniture was successfully created.' }
        format.json { render :show, status: :created, location: @property_furniture }
      else
        format.html { render :new }
        format.json { render json: @property_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_furnitures/1
  # PATCH/PUT /property_furnitures/1.json
  def update
    respond_to do |format|
      if @property_furniture.update(property_furniture_params)
        format.html { redirect_to @property_furniture, notice: 'Property furniture was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_furniture }
      else
        format.html { render :edit }
        format.json { render json: @property_furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_furnitures/1
  # DELETE /property_furnitures/1.json
  def destroy
    @property_furniture.destroy
    respond_to do |format|
      format.html { redirect_to property_furnitures_url, notice: 'Property furniture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_furniture
      @property_furniture = PropertyFurniture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_furniture_params
      params.require(:property_furniture).permit(:furniture_id, :property_id, :furniture_cover_id, :quality_id)
    end
end
