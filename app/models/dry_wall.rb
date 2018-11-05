class DryWall < ApplicationRecord
    has_many :property_dry_walls
    has_many :properties, through: :property_dry_walls
end
