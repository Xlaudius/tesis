class Stair < ApplicationRecord
	has_many :property_stairs
	has_many :properties, through: :property_stairs
	has_many :qualities, through: :property_stairs

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
