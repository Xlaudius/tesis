class Pavement < ApplicationRecord
    has_many :property_pavements
    has_many :qualities, through: :property_pavements

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
