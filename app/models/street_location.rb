class StreetLocation < ApplicationRecord
	has_many :property_street_locations

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
