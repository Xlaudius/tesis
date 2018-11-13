class HousingQuality < ApplicationRecord
    has_many :property_housing_qualities
    has_many :properties, through: :property_housing_qualities

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
