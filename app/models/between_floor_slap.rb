class BetweenFloorSlap < ApplicationRecord
    has_many :property_between_floor_slaps
    has_many :properties, through: :property_between_floor_slaps
end
