class AddQualityRefToPropertyDrinkingWater < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_drinking_waters, :quality, foreign_key: true
  end
end
