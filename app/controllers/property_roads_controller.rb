class PropertyRoadsController < ApplicationController
  before_action :set_property_road, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_roads
  # GET /property_roads.json
  def index
    @property_roads = PropertyRoad.all
  end

  # GET /property_roads/1
  # GET /property_roads/1.json
  def show
  end

  # GET /property_roads/new
  def new
    @property_road = PropertyRoad.new
  end

  # GET /property_roads/1/edit
  def edit
  end

  # POST /property_roads
  # POST /property_roads.json
  def create
    @property_road = PropertyRoad.new(property_road_params)

    respond_to do |format|
      if @property_road.save
        format.html { redirect_to @property_road, notice: 'Property road was successfully created.' }
        format.json { render :show, status: :created, location: @property_road }
      else
        format.html { render :new }
        format.json { render json: @property_road.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_roads/1
  # PATCH/PUT /property_roads/1.json
  def update
    respond_to do |format|
      if @property_road.update(property_road_params)
        format.html { redirect_to @property_road, notice: 'Property road was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_road }
      else
        format.html { render :edit }
        format.json { render json: @property_road.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_roads/1
  # DELETE /property_roads/1.json
  def destroy
    @property_road.destroy
    respond_to do |format|
      format.html { redirect_to property_roads_url, notice: 'Property road was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_road
      @property_road = PropertyRoad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_road_params
      params.require(:property_road).permit(:property_id, :road_id)
    end
end
