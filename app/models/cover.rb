class Cover < ApplicationRecord
    has_many :property_covers
    has_many :properties, through: :property_covers
    has many :qualities, through: :property_covers

end
