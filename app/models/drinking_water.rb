class DrinkingWater < ApplicationRecord
    has_many :property_drinking_waters
    has_many :properties, through: :property_drinking_waters
end
