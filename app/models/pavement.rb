class Pavement < ApplicationRecord
    has_many :property_pavements
    has_many :qualities, through: :property_pavements

end
