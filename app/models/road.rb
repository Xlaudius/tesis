class Road < ApplicationRecord
	has_many :property_roads
	has_many :properties, through: :property_roads

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
