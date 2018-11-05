class DoorFrame < ApplicationRecord
    has_many :property_doors
    has_many :doors, through: :property_doors
    has_many :properties, through: :property_doors
end
