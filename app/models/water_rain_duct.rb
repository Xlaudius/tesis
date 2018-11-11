class WaterRainDuct < ApplicationRecord
	has_many :property_water_rain_ducts
	has many :qualities, through: :property_water_rain_ducts

end
