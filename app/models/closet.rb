class Closet < ApplicationRecord
    has_many :property_closets
    has_many :qualities, through: :property_closets

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }
end
