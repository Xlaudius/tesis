class FurnitureCover < ApplicationRecord
    has_many :property_furnitures
    has_many :furnitures, through: :property_furnitures
    has_many :properties, through: :property_furnitures

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
