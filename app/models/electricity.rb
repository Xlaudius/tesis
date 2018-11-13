class Electricity < ApplicationRecord
    has_many :property_electricities
    has_many :properties, through: :property_electricities

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
