class ExteriorClosure < ApplicationRecord
    has_many :property_exterior_closures
    has_many :properties, through: :property_exterior_closures
end
