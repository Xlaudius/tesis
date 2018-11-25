class SectorCharacteristic < ApplicationRecord
	has_many :property_sec_characteristics

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
