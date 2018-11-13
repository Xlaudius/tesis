class EnlargementsQuality < ApplicationRecord
    has_many :property_enlar_qualities

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
