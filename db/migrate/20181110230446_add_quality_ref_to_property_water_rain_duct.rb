class AddQualityRefToPropertyWaterRainDuct < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_water_rain_ducts, :quality, foreign_key: true
  end
end
