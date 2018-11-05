class Electricity < ApplicationRecord
    has_many :property_electricities
    has_many :properties, through: :property_electricities
end
