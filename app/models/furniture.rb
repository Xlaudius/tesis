class Furniture < ApplicationRecord
    has_many :property_furnitures
    has_many :furniture_covers, through: :property_furnitures
    has_many :properties, through: :property_furnitures
    has_many :qualities, through: :property_furnitures

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
