class LandShape < ApplicationRecord
    has_many :property_land_shapes
    has_many :properties, through: :property_land_shapes

end
