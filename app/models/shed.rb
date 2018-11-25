class Shed < ApplicationRecord
	has_many :property_sheds
	has_many :qualities, through: :property_sheds

	validates :name, presence: true
end
