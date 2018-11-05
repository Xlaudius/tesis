class Furniture < ApplicationRecord
    has_many :property_furnitures
    has_many :furniture_covers, through: :property_furnitures
    has_many :properties, through: :property_furnitures
end
