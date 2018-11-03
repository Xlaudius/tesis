class RoadsController < ApplicationController
  before_action :set_road, only: [:show, :edit, :update, :destroy]

  # GET /roads
  # GET /roads.json
  def index
    @roads = Road.all
  end

  # GET /roads/1
  # GET /roads/1.json
  def show
  end

  # GET /roads/new
  def new
    @road = Road.new
  end

  # GET /roads/1/edit
  def edit
  end

  # POST /roads
  # POST /roads.json
  def create
    @road = Road.new(road_params)

    respond_to do |format|
      if @road.save
        format.html { redirect_to @road, notice: 'Road was successfully created.' }
        format.json { render :show, status: :created, location: @road }
      else
        format.html { render :new }
        format.json { render json: @road.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roads/1
  # PATCH/PUT /roads/1.json
  def update
    respond_to do |format|
      if @road.update(road_params)
        format.html { redirect_to @road, notice: 'Road was successfully updated.' }
        format.json { render :show, status: :ok, location: @road }
      else
        format.html { render :edit }
        format.json { render json: @road.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roads/1
  # DELETE /roads/1.json
  def destroy
    @road.destroy
    respond_to do |format|
      format.html { redirect_to roads_url, notice: 'Road was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road
      @road = Road.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def road_params
      params.require(:road).permit(:name, :value)
    end
end
