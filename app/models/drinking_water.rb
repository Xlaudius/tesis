class DrinkingWater < ApplicationRecord
    has_many :property_drinking_waters
    has_many :properties, through: :property_drinking_waters
    has_many :qualities, through: :property_drinking_waters

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
