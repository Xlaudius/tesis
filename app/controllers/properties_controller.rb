class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.order(:id).page (params[:page])
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    2.times {@property.property_between_floor_slaps.build}
    2.times {@property.property_covers.build}
    2.times {@property.property_closets.build}
    2.times {@property.property_doors.build}
    2.times {@property.property_drinking_waters.build}
    2.times {@property.property_dry_walls.build}
  end

  # GET /properties/1/edit
  def edit
    @property.property_between_floor_slaps.build
    @property.property_covers.build
    @property.property_closets.build
    @property.property_doors.build
    @property.property_drinking_waters.build
    @property.property_dry_walls.build
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end


 
    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:debt_taxation, :antiquity, :expropriation, :sill, :assessment_id, :facilities, :name,
        property_between_floor_slaps_attributes:[:id,:between_floor_slap_id, :property_id, :quality_id],
        property_closets_attributes:[:id, :closet_id, :property_id, :qualities_id],
        property_covers_attributes:[:id, :observations, :property_id, :cover_id, :quality_id],
        property_doors_attributes:[:id, :door_id, :door_frame_id, :property_id, :quality_id],
        property_drinking_waters_attributes:[:id, :drinking_water_id, :property_id, :quality_id],
        property_dry_walls_attributes:[:id, :dry_wall_id, :property_id, :other, :quality_id]
        )
    end
end
