class Roofing < ApplicationRecord
	has_many :property_roofings
	has_many :properties, through: :property_roofings
	has many :qualities, through: :property_roofings

end
