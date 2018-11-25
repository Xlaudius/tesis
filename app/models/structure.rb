class Structure < ApplicationRecord
	has_many :property_structures
	has_many :qualities, through: :property_structures

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
