class BetweenFloorSlap < ApplicationRecord
    has_many :property_between_floor_slaps
    has_many :properties, through: :property_between_floor_slaps
    has_many :qualities, through: :property_between_floor_slaps
    
    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
