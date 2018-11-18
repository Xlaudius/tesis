class Sewerage < ApplicationRecord
	has_many :property_sewerages
	has_many :properties, through: :property_sewerages
	has_many :qualities, through: :property_sewerages

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
