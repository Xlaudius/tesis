class HousingQuality < ApplicationRecord
    has_many :property_housing_qualities
    has_many :properties, through: :property_housing_qualities
end
