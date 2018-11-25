class Sector < ApplicationRecord
	has_many :property_sectors

	validates :name, presence: true
end
