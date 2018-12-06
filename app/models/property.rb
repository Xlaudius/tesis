class Property < ApplicationRecord
  belongs_to :assessment
  
  has_many :property_between_floor_slaps
  accepts_nested_attributes_for :property_between_floor_slaps, reject_if: :all_blank
  has_many :between_floor_slaps, through: :property_between_floor_slaps

  has_many :property_covers
  accepts_nested_attributes_for :property_covers, reject_if: :all_blank
  has_many :covers, through: :property_covers

  has_many :property_doors
  accepts_nested_attributes_for :property_doors, reject_if: :all_blank
  has_many :door_frames, through: :property_doors
  has_many :doors, through: :property_doors

  has_many :property_drinking_waters
  accepts_nested_attributes_for :property_drinking_waters, reject_if: :all_blank
  has_many :drinking_waters, through: :property_drinking_waters

  has_many :property_dry_walls
  accepts_nested_attributes_for :property_dry_walls, reject_if: :all_blank
  has_many :dry_walls, through: :property_dry_walls

  has_many :property_electricities
  accepts_nested_attributes_for :property_electricities, reject_if: :all_blank
  has_many :electricities, through: :property_electricities

  has_many :property_exterior_closures
  accepts_nested_attributes_for :property_exterior_closures, reject_if: :all_blank
  has_many :exterior_closures, through: :property_exterior_closures

  has_many :property_furnitures
  accepts_nested_attributes_for :property_furnitures, reject_if: :all_blank
  has_many :furniture_covers, through: :property_furnitures
  has_many :furnitures, through: :property_furnitures

  has_many :property_gas
  accepts_nested_attributes_for :property_gas, reject_if: :all_blank
  has_many :gas, through: :property_gas

  has_many :property_heatings
  accepts_nested_attributes_for :property_heatings, reject_if: :all_blank
  has_many :heatings, through: :property_heatings

  has_many :property_housing_qualities
  accepts_nested_attributes_for :property_housing_qualities, reject_if: :all_blank
  has_many :housing_qualities, through: :property_housing_qualities

  has_many :property_interior_closures
  accepts_nested_attributes_for :property_interior_closures, reject_if: :all_blank
  has_many :interior_closures, through: :property_interior_closures

  has_many :property_land_shapes
  accepts_nested_attributes_for :property_land_shapes, reject_if: :all_blank
  has_many :land_shapes, through: :property_land_shapes

  has_many :property_maintenances
  accepts_nested_attributes_for :property_maintenances, reject_if: :all_blank
  has_many :maintenances, through: :property_maintenances

  has_many :property_pavements
  accepts_nested_attributes_for :property_pavements, reject_if: :all_blank
  has_many :pavements, through: :property_pavements

  has_many :property_property_types
  accepts_nested_attributes_for :property_property_types, reject_if: :all_blank
  has_many :property_types, through: :property_property_types

  has_many :property_roads
  accepts_nested_attributes_for :property_roads, reject_if: :all_blank
  has_many :roads, through: :property_roads

  has_many :property_rols
  accepts_nested_attributes_for :property_rols, reject_if: :all_blank  
  has_many :provinces, through: :property_rols

  has_many :property_roofings
  accepts_nested_attributes_for :property_roofings, reject_if: :all_blank
  has_many :roofings, through: :property_roofings

  has_many :property_sectors
  accepts_nested_attributes_for :property_sectors, reject_if: :all_blank
  has_many :sectors, through: :property_sectors

  has_many :property_sewerages
  has_many :sewerages, through: :property_sewerages

  has_many :property_sheds
  has_many :sheds, through: :property_sheds

  has_many :property_sidewalks
  has_many :side_walks, through: :property_sidewalks

  has_many :property_stairs
  has_many :stairs, through: :property_stairs

  has_many :property_street_locations
  has_many :street_locations, through: :property_street_locations

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
  accepts_nested_attributes_for :property_closets, reject_if: :all_blank
  has_many :closets, through: :property_closets
  
  has_many :pools

# validates :expropriation, :sill, :facilities, inclusion: { in: [true, false] }
# validates :antiquity, :assessment_id, presence: true
# validates :debt_taxation, :antiquity, numericality: { greater_than_or_equal_to: 0 }
end
