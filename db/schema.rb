# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_15_190445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer "number_assesment"
    t.bigint "state_id"
    t.string "location"
    t.boolean "inhabited"
    t.string "habitant"
    t.bigint "client_id"
    t.bigint "owner_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_assessments_on_client_id"
    t.index ["owner_id"], name: "index_assessments_on_owner_id"
    t.index ["state_id"], name: "index_assessments_on_state_id"
  end

  create_table "between_floor_slaps", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "client_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.integer "number"
    t.boolean "available"
    t.bigint "client_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_type_id"], name: "index_clients_on_client_type_id"
  end

  create_table "closets", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "covers", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "door_frames", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doors", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinking_waters", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dry_walls", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electricities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enlargements_qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exterior_closures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_terminations", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "furniture_covers", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "furnitures", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gas", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heatings", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "housing_qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interior_closures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land_shapes", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenances", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pavements", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pools", force: :cascade do |t|
    t.string "img"
    t.float "volumen"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_pools_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.float "debt_taxation"
    t.integer "antiquity"
    t.boolean "expropriation"
    t.boolean "sill"
    t.bigint "assessment_id"
    t.boolean "facilities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_properties_on_assessment_id"
  end

  create_table "property_between_floor_slaps", force: :cascade do |t|
    t.bigint "between_floor_slap_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["between_floor_slap_id"], name: "index_property_between_floor_slaps_on_between_floor_slap_id"
    t.index ["property_id"], name: "index_property_between_floor_slaps_on_property_id"
    t.index ["quality_id"], name: "index_property_between_floor_slaps_on_quality_id"
  end

  create_table "property_closets", force: :cascade do |t|
    t.bigint "closet_id"
    t.bigint "property_id"
    t.bigint "qualities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["closet_id"], name: "index_property_closets_on_closet_id"
    t.index ["property_id"], name: "index_property_closets_on_property_id"
    t.index ["qualities_id"], name: "index_property_closets_on_qualities_id"
  end

  create_table "property_covers", force: :cascade do |t|
    t.text "observations"
    t.bigint "property_id"
    t.bigint "cover_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["cover_id"], name: "index_property_covers_on_cover_id"
    t.index ["property_id"], name: "index_property_covers_on_property_id"
    t.index ["quality_id"], name: "index_property_covers_on_quality_id"
  end

  create_table "property_doors", force: :cascade do |t|
    t.bigint "door_id"
    t.bigint "door_frame_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["door_frame_id"], name: "index_property_doors_on_door_frame_id"
    t.index ["door_id"], name: "index_property_doors_on_door_id"
    t.index ["property_id"], name: "index_property_doors_on_property_id"
    t.index ["quality_id"], name: "index_property_doors_on_quality_id"
  end

  create_table "property_drinking_waters", force: :cascade do |t|
    t.bigint "drinking_water_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["drinking_water_id"], name: "index_property_drinking_waters_on_drinking_water_id"
    t.index ["property_id"], name: "index_property_drinking_waters_on_property_id"
    t.index ["quality_id"], name: "index_property_drinking_waters_on_quality_id"
  end

  create_table "property_dry_walls", force: :cascade do |t|
    t.bigint "dry_wall_id"
    t.bigint "property_id"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["dry_wall_id"], name: "index_property_dry_walls_on_dry_wall_id"
    t.index ["property_id"], name: "index_property_dry_walls_on_property_id"
    t.index ["quality_id"], name: "index_property_dry_walls_on_quality_id"
  end

  create_table "property_electricities", force: :cascade do |t|
    t.bigint "electricity_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["electricity_id"], name: "index_property_electricities_on_electricity_id"
    t.index ["property_id"], name: "index_property_electricities_on_property_id"
  end

  create_table "property_enlar_qualities", force: :cascade do |t|
    t.bigint "enlargements_quality_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enlargements_quality_id"], name: "index_property_enlar_qualities_on_enlargements_quality_id"
    t.index ["property_id"], name: "index_property_enlar_qualities_on_property_id"
  end

  create_table "property_exterior_closures", force: :cascade do |t|
    t.string "other"
    t.bigint "property_id"
    t.bigint "exterior_closure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["exterior_closure_id"], name: "index_property_exterior_closures_on_exterior_closure_id"
    t.index ["property_id"], name: "index_property_exterior_closures_on_property_id"
    t.index ["quality_id"], name: "index_property_exterior_closures_on_quality_id"
  end

  create_table "property_extern_terminations", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "external_termination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["external_termination_id"], name: "index_property_extern_terminations_on_external_termination_id"
    t.index ["property_id"], name: "index_property_extern_terminations_on_property_id"
    t.index ["quality_id"], name: "index_property_extern_terminations_on_quality_id"
  end

  create_table "property_furnitures", force: :cascade do |t|
    t.bigint "furniture_id"
    t.bigint "property_id"
    t.bigint "furniture_cover_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["furniture_cover_id"], name: "index_property_furnitures_on_furniture_cover_id"
    t.index ["furniture_id"], name: "index_property_furnitures_on_furniture_id"
    t.index ["property_id"], name: "index_property_furnitures_on_property_id"
    t.index ["quality_id"], name: "index_property_furnitures_on_quality_id"
  end

  create_table "property_gas", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "gas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["gas_id"], name: "index_property_gas_on_gas_id"
    t.index ["property_id"], name: "index_property_gas_on_property_id"
    t.index ["quality_id"], name: "index_property_gas_on_quality_id"
  end

  create_table "property_heatings", force: :cascade do |t|
    t.bigint "heating_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["heating_id"], name: "index_property_heatings_on_heating_id"
    t.index ["property_id"], name: "index_property_heatings_on_property_id"
    t.index ["quality_id"], name: "index_property_heatings_on_quality_id"
  end

  create_table "property_housing_qualities", force: :cascade do |t|
    t.bigint "housing_quality_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["housing_quality_id"], name: "index_property_housing_qualities_on_housing_quality_id"
    t.index ["property_id"], name: "index_property_housing_qualities_on_property_id"
  end

  create_table "property_interior_closures", force: :cascade do |t|
    t.string "other"
    t.bigint "property_id"
    t.bigint "interior_closure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interior_closure_id"], name: "index_property_interior_closures_on_interior_closure_id"
    t.index ["property_id"], name: "index_property_interior_closures_on_property_id"
  end

  create_table "property_land_shapes", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "land_shape_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["land_shape_id"], name: "index_property_land_shapes_on_land_shape_id"
    t.index ["property_id"], name: "index_property_land_shapes_on_property_id"
    t.index ["quality_id"], name: "index_property_land_shapes_on_quality_id"
  end

  create_table "property_maintenances", force: :cascade do |t|
    t.bigint "maintenance_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["maintenance_id"], name: "index_property_maintenances_on_maintenance_id"
    t.index ["property_id"], name: "index_property_maintenances_on_property_id"
    t.index ["quality_id"], name: "index_property_maintenances_on_quality_id"
  end

  create_table "property_pavements", force: :cascade do |t|
    t.bigint "pavement_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["pavement_id"], name: "index_property_pavements_on_pavement_id"
    t.index ["property_id"], name: "index_property_pavements_on_property_id"
    t.index ["quality_id"], name: "index_property_pavements_on_quality_id"
  end

  create_table "property_property_types", force: :cascade do |t|
    t.bigint "property_type_id"
    t.bigint "property_id"
    t.integer "sites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_property_types_on_property_id"
    t.index ["property_type_id"], name: "index_property_property_types_on_property_type_id"
  end

  create_table "property_roads", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "road_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_roads_on_property_id"
    t.index ["road_id"], name: "index_property_roads_on_road_id"
  end

  create_table "property_rols", force: :cascade do |t|
    t.integer "block"
    t.integer "predial"
    t.bigint "province_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_rols_on_property_id"
    t.index ["province_id"], name: "index_property_rols_on_province_id"
  end

  create_table "property_roofings", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "roofing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_roofings_on_property_id"
    t.index ["quality_id"], name: "index_property_roofings_on_quality_id"
    t.index ["roofing_id"], name: "index_property_roofings_on_roofing_id"
  end

  create_table "property_sec_characteristics", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "sector_characteristic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_sec_characteristics_on_property_id"
    t.index ["sector_characteristic_id"], name: "index_property_sec_characteristics_on_sector_characteristic_id"
  end

  create_table "property_sectors", force: :cascade do |t|
    t.float "distance"
    t.bigint "property_id"
    t.bigint "sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_sectors_on_property_id"
    t.index ["sector_id"], name: "index_property_sectors_on_sector_id"
  end

  create_table "property_sewerages", force: :cascade do |t|
    t.bigint "sewerage_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_sewerages_on_property_id"
    t.index ["quality_id"], name: "index_property_sewerages_on_quality_id"
    t.index ["sewerage_id"], name: "index_property_sewerages_on_sewerage_id"
  end

  create_table "property_sheds", force: :cascade do |t|
    t.bigint "shed_id"
    t.bigint "property_id"
    t.bigint "shed_material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_sheds_on_property_id"
    t.index ["quality_id"], name: "index_property_sheds_on_quality_id"
    t.index ["shed_id"], name: "index_property_sheds_on_shed_id"
    t.index ["shed_material_id"], name: "index_property_sheds_on_shed_material_id"
  end

  create_table "property_sidewalks", force: :cascade do |t|
    t.bigint "side_walk_id"
    t.bigint "property_id"
    t.float "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_sidewalks_on_property_id"
    t.index ["side_walk_id"], name: "index_property_sidewalks_on_side_walk_id"
  end

  create_table "property_stairs", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "stair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_stairs_on_property_id"
    t.index ["quality_id"], name: "index_property_stairs_on_quality_id"
    t.index ["stair_id"], name: "index_property_stairs_on_stair_id"
  end

  create_table "property_street_locations", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "street_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_street_locations_on_property_id"
    t.index ["street_location_id"], name: "index_property_street_locations_on_street_location_id"
  end

  create_table "property_structures", force: :cascade do |t|
    t.text "observations"
    t.bigint "property_id"
    t.bigint "structure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_structures_on_property_id"
    t.index ["quality_id"], name: "index_property_structures_on_quality_id"
    t.index ["structure_id"], name: "index_property_structures_on_structure_id"
  end

  create_table "property_toilet_artifacts", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "toilet_artifact_id"
    t.bigint "quality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_property_toilet_artifacts_on_property_id"
    t.index ["quality_id"], name: "index_property_toilet_artifacts_on_quality_id"
    t.index ["toilet_artifact_id"], name: "index_property_toilet_artifacts_on_toilet_artifact_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_water_rain_ducts", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "water_rain_duct_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_water_rain_ducts_on_property_id"
    t.index ["quality_id"], name: "index_property_water_rain_ducts_on_quality_id"
    t.index ["water_rain_duct_id"], name: "index_property_water_rain_ducts_on_water_rain_duct_id"
  end

  create_table "property_windows", force: :cascade do |t|
    t.bigint "window_id"
    t.bigint "property_id"
    t.string "other"
    t.boolean "protections"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quality_id"
    t.index ["property_id"], name: "index_property_windows_on_property_id"
    t.index ["quality_id"], name: "index_property_windows_on_quality_id"
    t.index ["window_id"], name: "index_property_windows_on_window_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_provinces_on_city_id"
  end

  create_table "qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roads", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roofings", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sector_characteristics", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_yards", force: :cascade do |t|
    t.string "img"
    t.float "mts2"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_service_yards_on_property_id"
  end

  create_table "sewerages", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shed_materials", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sheds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "side_walks", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stairs", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "street_locations", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilet_artifacts", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rut"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "water_rain_ducts", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "windows", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assessments", "clients"
  add_foreign_key "assessments", "owners"
  add_foreign_key "assessments", "states"
  add_foreign_key "cities", "regions"
  add_foreign_key "clients", "client_types"
  add_foreign_key "pools", "properties"
  add_foreign_key "properties", "assessments"
  add_foreign_key "property_between_floor_slaps", "between_floor_slaps"
  add_foreign_key "property_between_floor_slaps", "properties"
  add_foreign_key "property_between_floor_slaps", "qualities"
  add_foreign_key "property_closets", "closets"
  add_foreign_key "property_closets", "properties"
  add_foreign_key "property_closets", "qualities", column: "qualities_id"
  add_foreign_key "property_covers", "covers"
  add_foreign_key "property_covers", "properties"
  add_foreign_key "property_covers", "qualities"
  add_foreign_key "property_doors", "door_frames"
  add_foreign_key "property_doors", "doors"
  add_foreign_key "property_doors", "properties"
  add_foreign_key "property_doors", "qualities"
  add_foreign_key "property_drinking_waters", "drinking_waters"
  add_foreign_key "property_drinking_waters", "properties"
  add_foreign_key "property_drinking_waters", "qualities"
  add_foreign_key "property_dry_walls", "dry_walls"
  add_foreign_key "property_dry_walls", "properties"
  add_foreign_key "property_dry_walls", "qualities"
  add_foreign_key "property_electricities", "electricities"
  add_foreign_key "property_electricities", "properties"
  add_foreign_key "property_enlar_qualities", "enlargements_qualities"
  add_foreign_key "property_enlar_qualities", "properties"
  add_foreign_key "property_exterior_closures", "exterior_closures"
  add_foreign_key "property_exterior_closures", "properties"
  add_foreign_key "property_exterior_closures", "qualities"
  add_foreign_key "property_extern_terminations", "external_terminations"
  add_foreign_key "property_extern_terminations", "properties"
  add_foreign_key "property_extern_terminations", "qualities"
  add_foreign_key "property_furnitures", "furniture_covers"
  add_foreign_key "property_furnitures", "furnitures"
  add_foreign_key "property_furnitures", "properties"
  add_foreign_key "property_furnitures", "qualities"
  add_foreign_key "property_gas", "gas", column: "gas_id"
  add_foreign_key "property_gas", "properties"
  add_foreign_key "property_gas", "qualities"
  add_foreign_key "property_heatings", "heatings"
  add_foreign_key "property_heatings", "properties"
  add_foreign_key "property_heatings", "qualities"
  add_foreign_key "property_housing_qualities", "housing_qualities"
  add_foreign_key "property_housing_qualities", "properties"
  add_foreign_key "property_interior_closures", "interior_closures"
  add_foreign_key "property_interior_closures", "properties"
  add_foreign_key "property_land_shapes", "land_shapes"
  add_foreign_key "property_land_shapes", "properties"
  add_foreign_key "property_land_shapes", "qualities"
  add_foreign_key "property_maintenances", "maintenances"
  add_foreign_key "property_maintenances", "properties"
  add_foreign_key "property_maintenances", "qualities"
  add_foreign_key "property_pavements", "pavements"
  add_foreign_key "property_pavements", "properties"
  add_foreign_key "property_pavements", "qualities"
  add_foreign_key "property_property_types", "properties"
  add_foreign_key "property_property_types", "property_types"
  add_foreign_key "property_roads", "properties"
  add_foreign_key "property_roads", "roads"
  add_foreign_key "property_rols", "properties"
  add_foreign_key "property_rols", "provinces"
  add_foreign_key "property_roofings", "properties"
  add_foreign_key "property_roofings", "qualities"
  add_foreign_key "property_roofings", "roofings"
  add_foreign_key "property_sec_characteristics", "properties"
  add_foreign_key "property_sec_characteristics", "sector_characteristics"
  add_foreign_key "property_sectors", "properties"
  add_foreign_key "property_sectors", "sectors"
  add_foreign_key "property_sewerages", "properties"
  add_foreign_key "property_sewerages", "qualities"
  add_foreign_key "property_sewerages", "sewerages"
  add_foreign_key "property_sheds", "properties"
  add_foreign_key "property_sheds", "qualities"
  add_foreign_key "property_sheds", "shed_materials"
  add_foreign_key "property_sheds", "sheds"
  add_foreign_key "property_sidewalks", "properties"
  add_foreign_key "property_sidewalks", "side_walks"
  add_foreign_key "property_stairs", "properties"
  add_foreign_key "property_stairs", "qualities"
  add_foreign_key "property_stairs", "stairs"
  add_foreign_key "property_street_locations", "properties"
  add_foreign_key "property_street_locations", "street_locations"
  add_foreign_key "property_structures", "properties"
  add_foreign_key "property_structures", "qualities"
  add_foreign_key "property_structures", "structures"
  add_foreign_key "property_toilet_artifacts", "properties"
  add_foreign_key "property_toilet_artifacts", "qualities"
  add_foreign_key "property_toilet_artifacts", "toilet_artifacts"
  add_foreign_key "property_water_rain_ducts", "properties"
  add_foreign_key "property_water_rain_ducts", "qualities"
  add_foreign_key "property_water_rain_ducts", "water_rain_ducts"
  add_foreign_key "property_windows", "properties"
  add_foreign_key "property_windows", "qualities"
  add_foreign_key "property_windows", "windows"
  add_foreign_key "provinces", "cities"
  add_foreign_key "service_yards", "properties"
end
