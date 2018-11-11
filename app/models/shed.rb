class Shed < ApplicationRecord
	has_many :property_sheds
	has many :qualities, through: :property_sheds

end
