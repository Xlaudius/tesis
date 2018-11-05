class Door < ApplicationRecord
    has_many :property_doors
    has_many :door_frames, through: :property_doors
    has_many :properties, through: :property_doors
end
