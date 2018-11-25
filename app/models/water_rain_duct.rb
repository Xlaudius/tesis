class WaterRainDuct < ApplicationRecord
	has_many :property_water_rain_ducts
	has_many :qualities, through: :property_water_rain_ducts

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
