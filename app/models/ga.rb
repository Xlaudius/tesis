class Ga < ApplicationRecord
    has_many :property_ga
    has_many :properties, through: :property_gas
    has_many :qualities, through: :property_gas

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }

end
