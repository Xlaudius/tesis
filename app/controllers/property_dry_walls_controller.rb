class PropertyDryWallsController < ApplicationController
  before_action :set_property_dry_wall, only: [:show, :edit, :update, :destroy]

  # GET /property_dry_walls
  # GET /property_dry_walls.json
  def index
    @property_dry_walls = PropertyDryWall.all
  end

  # GET /property_dry_walls/1
  # GET /property_dry_walls/1.json
  def show
  end

  # GET /property_dry_walls/new
  def new
    @property_dry_wall = PropertyDryWall.new
  end

  # GET /property_dry_walls/1/edit
  def edit
  end

  # POST /property_dry_walls
  # POST /property_dry_walls.json
  def create
    @property_dry_wall = PropertyDryWall.new(property_dry_wall_params)

    respond_to do |format|
      if @property_dry_wall.save
        format.html { redirect_to @property_dry_wall, notice: 'Property dry wall was successfully created.' }
        format.json { render :show, status: :created, location: @property_dry_wall }
      else
        format.html { render :new }
        format.json { render json: @property_dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_dry_walls/1
  # PATCH/PUT /property_dry_walls/1.json
  def update
    respond_to do |format|
      if @property_dry_wall.update(property_dry_wall_params)
        format.html { redirect_to @property_dry_wall, notice: 'Property dry wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_dry_wall }
      else
        format.html { render :edit }
        format.json { render json: @property_dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_dry_walls/1
  # DELETE /property_dry_walls/1.json
  def destroy
    @property_dry_wall.destroy
    respond_to do |format|
      format.html { redirect_to property_dry_walls_url, notice: 'Property dry wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_dry_wall
      @property_dry_wall = PropertyDryWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_dry_wall_params
      params.require(:property_dry_wall).permit(:dry_wall_id, :property_id, :other)
    end
end
