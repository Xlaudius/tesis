class InteriorClosure < ApplicationRecord
    has_many :property_interior_closures
    has_many :properties, through: :property_interior_closures

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
