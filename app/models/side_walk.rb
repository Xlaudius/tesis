class SideWalk < ApplicationRecord
	has_many :property_sidewalks
	
	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
