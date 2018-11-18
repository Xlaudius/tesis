class ShedMaterial < ApplicationRecord
	has_many :property_sheds

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
