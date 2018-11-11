class WaterRainDuct < ApplicationRecord
	has_many :property_water_rain_ducts
	has_many :qualities, through: :property_water_rain_ducts

end
