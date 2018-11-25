class Roofing < ApplicationRecord
	has_many :property_roofings
	has_many :properties, through: :property_roofings
	has_many :qualities, through: :property_roofings

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
