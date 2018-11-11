class Pavement < ApplicationRecord
    has_many :property_pavements
    has many :qualities, through: :property_pavements

end
