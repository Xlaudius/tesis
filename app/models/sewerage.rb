class Sewerage < ApplicationRecord
	has_many :property_sewerages
	has_many :properties, through: :property_sewerages
	has many :qualities, through: :property_sewerages

end
