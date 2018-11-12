class Cover < ApplicationRecord
    has_many :property_covers
    has_many :properties, through: :property_covers
    has_many :qualities, through: :property_covers

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
