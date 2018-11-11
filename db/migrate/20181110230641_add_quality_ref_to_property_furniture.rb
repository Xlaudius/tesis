class AddQualityRefToPropertyFurniture < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_furnitures, :quality, foreign_key: true
  end
end
