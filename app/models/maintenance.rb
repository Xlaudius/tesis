class Maintenance < ApplicationRecord
    has_many :property_maintenances
    has_many :properties, through: :property_maintenances
    has_many :qualities, through: :property_maintenances

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
