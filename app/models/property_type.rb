class PropertyType < ApplicationRecord
	has_many :property_property_types
	has_many :properties, through: :property_property_types
end
