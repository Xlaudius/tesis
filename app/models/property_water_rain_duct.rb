class PropertyWaterRainDuct < ApplicationRecord
  belongs_to :property
  belongs_to :water_rain_duct
  belongs_to :quality

  validates :property_id, :water_rain_duct_id, :quality_id, presence: true
  validates :property_id, :water_rain_duct_id, :quality_id, numericality:{ greater_than: 0 }
end
