class LandShape < ApplicationRecord
    has_many :property_land_shapes
    has_many :properties, through: :property_land_shapes
    has_many :qualities, through: :property_land_shapes

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }

end
