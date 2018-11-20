class PropertyDoorsController < ApplicationController
  before_action :set_property_door, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_doors
  # GET /property_doors.json
  def index
    @property_doors = PropertyDoor.all
  end

  # GET /property_doors/1
  # GET /property_doors/1.json
  def show
  end

  # GET /property_doors/new
  def new
    @property_door = PropertyDoor.new
  end

  # GET /property_doors/1/edit
  def edit
  end

  # POST /property_doors
  # POST /property_doors.json
  def create
    @property_door = PropertyDoor.new(property_door_params)

    respond_to do |format|
      if @property_door.save
        format.html { redirect_to @property_door, notice: 'Property door was successfully created.' }
        format.json { render :show, status: :created, location: @property_door }
      else
        format.html { render :new }
        format.json { render json: @property_door.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_doors/1
  # PATCH/PUT /property_doors/1.json
  def update
    respond_to do |format|
      if @property_door.update(property_door_params)
        format.html { redirect_to @property_door, notice: 'Property door was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_door }
      else
        format.html { render :edit }
        format.json { render json: @property_door.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_doors/1
  # DELETE /property_doors/1.json
  def destroy
    @property_door.destroy
    respond_to do |format|
      format.html { redirect_to property_doors_url, notice: 'Property door was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_door
      @property_door = PropertyDoor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_door_params
      params.require(:property_door).permit(:door_id, :door_frame_id, :property_id, :quality_id)
    end
end
