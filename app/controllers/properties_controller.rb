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
    @property.property_drinking_waters.build
    2.times {@property.property_dry_walls.build}
    @property.property_electricities.build
    2.times {@property.property_exterior_closures.build}
    2.times {@property.property_furnitures.build}
    @property.property_gas.build
    @property.property_heatings.build
    2.times {@property.property_housing_qualities.build}
    2.times {@property.property_interior_closures.build}
    @property.property_land_shapes.build
    @property.property_maintenances.build
    @property.property_pavements.build
    @property.property_property_types.build
    @property.property_roads.build
    @property.property_rols.build
    2.times {@property.property_roofings.build}
    2.times {@property.property_sectors.build}
    @property.property_sewerages.build
    2.times {@property.property_sheds.build}
    @property.property_sidewalks.build
    2.times {@property.property_stairs.build}
    @property.property_street_locations.build
    2.times {@property.property_structures.build}
    2.times {@property.property_toilet_artifacts.build}
    2.times {@property.property_water_rain_ducts.build}
    2.times {@property.property_windows.build}
    2.times {@property.pools.build}
  end

  # GET /properties/1/edit
  def edit
    @property.property_between_floor_slaps.build
    @property.property_covers.build
    @property.property_closets.build
    @property.property_doors.build
    @property.property_drinking_waters.build if @property.property_drinking_waters.empty?
    @property.property_dry_walls.build
    @property.property_electricities.build if @property.property_electricities.empty?
    @property.property_exterior_closures.build if @property.exterior_closures.empty?
    @property.property_furnitures.build
    @property.property_gas.build if @property.property_gas.empty?
    @property.property_heatings.build if @property.property_heatings.empty?
    @property.property_housing_qualities.build
    @property.property_interior_closures.build
    @property.property_land_shapes.build if @property.property_land_shapes.empty?
    @property.property_maintenances.build if @property.property_maintenances.empty?
    @property.property_pavements.build if @property.property_pavements.empty?
    @property.property_property_types.build if @property.property_property_types.empty?
    @property.property_roads.build if @property.property_roads.empty?
    @property.property_rols.build if @property.property_rols.empty?
    @property.property_roofings.build
    @property.property_sectors.build
    @property.property_sewerages.build if @property.property_sewerages.empty?
    @property.property_sheds.build
    @property.property_sidewalks.build if @property.property_sidewalks.empty?
    @property.property_stairs.build
    @property.property_street_locations.build if @property.property_street_locations.empty?
    @property.property_structures.build
    @property.property_toilet_artifacts.build
    @property.property_water_rain_ducts.build
    @property.property_windows.build
    @property.pools.build
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
        property_dry_walls_attributes:[:id, :dry_wall_id, :property_id, :other, :quality_id],
        property_electricities_attributes:[:id, :electricity_id, :property_id],
        property_exterior_closures_attributes:[:id, :other, :property_id, :exterior_closure_id, :quality_id],
        property_furnitures_attributes:[:id, :furniture_id, :property_id, :furniture_cover_id, :quality_id],
        property_gas_attributes:[:id, :property_id, :gas_id, :quality_id],
        property_heatings_attributes:[:id, :heating_id, :property_id, :quality_id],
        property_housing_qualities_attributes:[:id,:housing_quality_id, :property_id],
        property_interior_closures_attributes:[:id,:other, :property_id, :interior_closure_id],
        property_land_shapes_attributes:[:id,:property_id, :land_shape_id, :quality_id],
        property_maintenances_attributes:[:id, :maintenance_id, :property_id, :quality_id],
        property_pavements_attributes:[:id, :pavement_id, :property_id, :quality_id],
        property_property_types_attributes:[:id, :property_type_id, :property_id, :sites],
        property_roads_attributes:[:id, :property_id, :road_id],
        property_rols_attributes:[:id, :block, :predial, :province_id, :property_id],
        property_roofings_attributes:[:id, :property_id, :roofing_id, :quality_id],
        property_sectors_attributes:[:id, :distance, :property_id, :sector_id],
        property_sewerages_attributes:[:id, :sewerage_id, :property_id, :quality_id],
        property_sheds_attributes:[:id, :shed_id, :property_id, :shed_material_id, :quality_id],
        property_sidewalks_attributes:[:id,:side_walk_id, :property_id, :width],
        property_stairs_attributes:[:id,:property_id, :stair_id, :quality_id],
        property_street_locations_attributes:[:id,:property_id, :street_location_id],
        property_structures_attributes:[:id,:observations, :property_id, :structure_id, :quality_id],
        property_toilet_artifacts_attributes:[:id,:property_id, :toilet_artifact_id, :quality_id],
        property_water_rain_ducts_attributes:[:id,:property_id, :water_rain_duct_id, :quality_id],
        property_windows_attributes:[:id,:window_id, :property_id, :other, :protections, :quality_id],
        pools_attributes:[:id,:img, :volumen, :property_id]
        )
    end
end
