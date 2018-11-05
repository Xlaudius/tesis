class InteriorClosure < ApplicationRecord
    has_many :property_interior_closures
    has_many :properties, through: :property_interior_closures
end
