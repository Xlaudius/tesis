class Ga < ApplicationRecord
    has_many :property_ga
    has_many :properties, through: :property_gas
    has_many :qualities, through: :property_gas

end
