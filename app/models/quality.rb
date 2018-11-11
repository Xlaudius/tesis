class Quality < ApplicationRecord
	has_many :property_toilet_artifacts
	has_many :toilet_artifacts, through: :property_toilet_artifacts
	has_many :property_closets
	has_many :closets, through: :property_closets
	has_many :property_between_floor_slaps
	has_many :between_floor_slaps through: :between_floor_slaps
	has_many :property_sewerages
	has many :sewerages, through: :property_sewerages
	has_many :property_drinking_waters
	has many :drinking_waters, through: :property_drinking_waters
	has_many :property_stairs
	has many :stairs, through: :property_stairs
	has_many :property_gas
	has many :gas, through: :property_gas
	has_many :property_sheds
	has many :sheds, through: :property_sheds
	has_many :property_sewerages
	has many :sewerages, through: :property_sewerages
	has_many :property_exterior_closures
	has many :exterior_closures, through: :property_exterior_closures
	has_many :property_roofings
	has many :roofings, through: :property_roofings
	has_many :property_water_rain_ducts
	has many :water_rain_ducts, through: :property_water_rain_ducts
	has_many :property_covers
	has many :covers, through: :property_covers
	has_many :property_extern_terminations
	has many :external_terminations, through: :property_extern_terminations
	has_many :property_structures
	has many :structures, through: :property_structures
	has_many :property_land_shapes
	has many :land_shapes, through: :property_land_shapes
	has_many :property_pavements
	has many :pavements, through: :property_pavements
	has_many :property_dry_walls
	has many :dry_walls, through: :property_dry_walls
	has_many :property_heatings
	has many :heatings, through: :property_heatings
	has_many :property_windows
	has many :windows, through: :property_windows
	has_many :property_doors
	has many :doors, through: :property_doors
	has_many :property_furnitures
	has many :furnitures, through: :property_furnitures
	has_many :property_maintenances
	has many :maintenances, through: :property_maintenances


end
