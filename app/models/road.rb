class Road < ApplicationRecord
	has_many :property_roads
	has_many :properties, through: :property_roads
end
