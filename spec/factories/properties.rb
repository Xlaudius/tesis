FactoryBot.define do
  factory :property, class: Property do

    debt_taxation { Faker::Number.number(8) }
    antiquity { Faker::Number.number(2) }
    assessment_id { Faker::Number.number(4) }
    expropriation { Faker::Boolean.boolean }
    sill { Faker::Boolean.boolean }
    facilities { Faker::Boolean.boolean }

    #Associations
    assessment
    property_between_floor_slaps
    property_covers
    property_doors
    property_drinking_waters
    property_dry_walls
    property_electricities
    property_exterior_closures
    property_furnitures
    property_gas
    property_heatings
    property_housing_qualities
    property_interior_closures
    property_land_shapes
    property_maintenances
    property_pavements
    property_property_types
    property_roads
    property_rols
    property_roofings
    property_sectors
    property_sewerages
    property_sheds
    property_sidewalks
    property_stairs
    property_street_locations
    property_structures
    property_toilet_artifacts
    property_water_rain_ducts
    roperty_windows
    property_closets
    pools
  end
end