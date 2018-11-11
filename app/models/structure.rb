class Structure < ApplicationRecord
	has_many :property_structures
	has_many :qualities, through: :property_structures

end
