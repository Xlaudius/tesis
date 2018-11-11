class Structure < ApplicationRecord
	has_many :property_structures
	has many :qualities, through: :property_structures

end
