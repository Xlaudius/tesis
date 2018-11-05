class PropertyLandShapesController < ApplicationController
  before_action :set_property_land_shape, only: [:show, :edit, :update, :destroy]

  # GET /property_land_shapes
  # GET /property_land_shapes.json
  def index
    @property_land_shapes = PropertyLandShape.all
  end

  # GET /property_land_shapes/1
  # GET /property_land_shapes/1.json
  def show
  end

  # GET /property_land_shapes/new
  def new
    @property_land_shape = PropertyLandShape.new
  end

  # GET /property_land_shapes/1/edit
  def edit
  end

  # POST /property_land_shapes
  # POST /property_land_shapes.json
  def create
    @property_land_shape = PropertyLandShape.new(property_land_shape_params)

    respond_to do |format|
      if @property_land_shape.save
        format.html { redirect_to @property_land_shape, notice: 'Property land shape was successfully created.' }
        format.json { render :show, status: :created, location: @property_land_shape }
      else
        format.html { render :new }
        format.json { render json: @property_land_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_land_shapes/1
  # PATCH/PUT /property_land_shapes/1.json
  def update
    respond_to do |format|
      if @property_land_shape.update(property_land_shape_params)
        format.html { redirect_to @property_land_shape, notice: 'Property land shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_land_shape }
      else
        format.html { render :edit }
        format.json { render json: @property_land_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_land_shapes/1
  # DELETE /property_land_shapes/1.json
  def destroy
    @property_land_shape.destroy
    respond_to do |format|
      format.html { redirect_to property_land_shapes_url, notice: 'Property land shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_land_shape
      @property_land_shape = PropertyLandShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_land_shape_params
      params.require(:property_land_shape).permit(:property_id, :land_shape_id)
    end
end
