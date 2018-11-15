class Property < ApplicationRecord
  belongs_to :assessment
  has_many :property_between_floor_slaps
  has_many :between_floor_slaps, through: :property_between_floor_slaps
  has_many :property_covers
  has_many :covers, through: :property_covers
  has_many :property_doors
  has_many :door_frames, through: :property_doors
  has_many :doors, through: :property_doors
  has_many :property_drinking_waters
  has_many :drinking_waters, through: :property_drinking_waters
  has_many :property_dry_walls
  has_many :dry_walls, through: :property_dry_walls
  has_many :property_electricities
  has_many :electricities, through: :property_electricities
  has_many :property_exterior_closures
  has_many :exterior_closures, through: :property_exterior_closures
  has_many :property_furnitures
  has_many :furniture_covers, through: :property_furnitures
  has_many :furnitures, through: :property_furnitures
  has_many :property_gas
  has_many :gas, through: :property_gas
  has_many :property_heatings
  has_many :heatings, through: :property_heatings
  has_many :property_housing_qualities
  has_many :housing_qualities, through: :property_housing_qualities
  has_many :property_interior_closures
  has_many :interior_closures, through: :property_interior_closures
  has_many :property_land_shapes
  has_many :land_shapes, through: :property_land_shapes
  has_many :property_maintenances
  has_many :maintenances, through: :property_maintenances
  has_many :property_pavements
  has_many :pavements, through: :property_pavements
  has_many :property_property_types
  has_many :property_types, through: :property_property_types
  has_many :property_roads
  has_many :roads, through: :property_roads
  has_many :property_rols
  has_many :provinces, through: :property_rols
  has_many :property_roofings
  has_many :roofings, through: :property_roofings
  has_many :property_sectors
  has_many :sectors, through: :property_sectors
  has_many :property_sewerages
  has_many :sewerages, through: :property_sewerages
  has_many :property_sheds
  has_many :sheds, through: :property_sheds
  has_many :property_sidewalks
  has_many :sidewalks, through: :property_sidewalks
  has_many :property_stairs
  has_many :stairs, through: :property_stairs
  has_many :property_street_locations
  has_many :property_structures
  has_many :structures, through: :property_structures
  has_many :property_toilet_artifacts
  has_many :qualities, through: :property_toilet_artifacts
  has_many :toilet_artifacts, through: :property_toilet_artifacts
  has_many :property_water_rain_ducts
  has_many :water_rain_ducts, through: :property_water_rain_ducts
  has_many :property_windows
  has_many :windows, through: :property_windows
  has_many :property_closets
  has_many :pools

  validates :antiquity, :expropriation, :sill, :assessment_id, :facilities, presence: true
  #validates :antiquity, :assessment_id, numericality:{ greater_than: 0 }
  validates :expropriation, :facilities, :sill, inclusion: { in: [true, false] }

end
