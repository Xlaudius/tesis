class PropertyWaterRainDuct < ApplicationRecord
  belongs_to :property
  belongs_to :water_rain_duct
  belongs_to :quality
end
