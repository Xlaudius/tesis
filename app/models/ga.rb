class Ga < ApplicationRecord
    has_many :property_ga
    has_many :properties, through: :property_ga
end
