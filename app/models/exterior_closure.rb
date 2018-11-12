class ExteriorClosure < ApplicationRecord
    has_many :property_exterior_closures
    has_many :properties, through: :property_exterior_closures
    has_many :qualities, through: :property_exterior_closures

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }

end
