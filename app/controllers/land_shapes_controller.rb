class LandShapesController < ApplicationController
  before_action :set_land_shape, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /land_shapes
  # GET /land_shapes.json
  def index
    @land_shapes = LandShape.all
  end

  # GET /land_shapes/1
  # GET /land_shapes/1.json
  def show
  end

  # GET /land_shapes/new
  def new
    @land_shape = LandShape.new
  end

  # GET /land_shapes/1/edit
  def edit
  end

  # POST /land_shapes
  # POST /land_shapes.json
  def create
    @land_shape = LandShape.new(land_shape_params)

    respond_to do |format|
      if @land_shape.save
        format.html { redirect_to @land_shape, notice: 'Land shape was successfully created.' }
        format.json { render :show, status: :created, location: @land_shape }
      else
        format.html { render :new }
        format.json { render json: @land_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /land_shapes/1
  # PATCH/PUT /land_shapes/1.json
  def update
    respond_to do |format|
      if @land_shape.update(land_shape_params)
        format.html { redirect_to @land_shape, notice: 'Land shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @land_shape }
      else
        format.html { render :edit }
        format.json { render json: @land_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /land_shapes/1
  # DELETE /land_shapes/1.json
  def destroy
    @land_shape.destroy
    respond_to do |format|
      format.html { redirect_to land_shapes_url, notice: 'Land shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land_shape
      @land_shape = LandShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def land_shape_params
      params.require(:land_shape).permit(:name, :value)
    end
end
